import { readFileSync, writeFileSync, mkdirSync } from 'fs';
import { join, dirname, basename } from 'path';
import { fileURLToPath } from 'url';
import { createRequire } from 'module';

const require = createRequire(import.meta.url);
const pdfParse = require('pdf-parse');

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

class CollegeBoardPDFToSQL {
    constructor() {
        this.outputDir = join(__dirname, 'sql');
        this.questions = [];
        this.outputFileBasename = null; // Will be set in parsePDF
    }

    async parsePDF(pdfPath) {
        console.log(`\nParsing PDF: ${basename(pdfPath)}`);
        
        // Set output file basename from PDF (without .pdf extension)
        const pdfBasename = basename(pdfPath, '.pdf');
        this.outputFileBasename = pdfBasename;
        
        try {
            const dataBuffer = readFileSync(pdfPath);
            const pdfData = await pdfParse(dataBuffer);
            
            console.log(`- Pages: ${pdfData.numpages}`);
            console.log(`- Extracting questions...`);
            
            this.extractQuestions(pdfData.text);
            
            return this.questions;
        } catch (error) {
            console.error(`Error parsing PDF:`, error);
            throw error;
        }
    }

    extractQuestions(text) {
        const lines = text.split('\n').map(line => line.trim());
        
        console.log(`Processing ${lines.length} lines from PDF...`);
        
        let currentQuestion = null;
        let currentSection = null;
        let assessmentType = 'SAT'; // Default
        let currentTestType = null; // Math or Reading and Writing
        let answerAnalysisBuffer = [];
        
        for (let i = 0; i < lines.length; i++) {
            const line = lines[i];
            
            // Extract Assessment field -> maps to assessment column
            // "Assessment" on one line, value on next line
            if (line.match(/^Assessment$/i)) {
                const nextLine = i + 1 < lines.length ? lines[i + 1].trim() : '';
                if (nextLine) {
                    assessmentType = nextLine;
                }
                continue;
            }
            
            // Extract Test field -> maps to test_type column (Math or Reading and Writing)
            // "Test" on one line, value on next line(s)
            if (line.match(/^Test$/i)) {
                // Value might be multi-line like "Reading and Writing"
                let testParts = [];
                let j = i + 1;
                while (j < lines.length && lines[j] && !lines[j].match(/^(Domain|Skill|Assessment|Question|ID:)/i)) {
                    testParts.push(lines[j].trim());
                    j++;
                    if (testParts.length > 3) break;
                }
                currentTestType = testParts.join(' ').trim();
                continue;
            }
            
            // Extract Question Difficulty (at end of question, before answer section)
            if (line.match(/Question Difficulty[:\s]*/i)) {
                const nextLine = i + 1 < lines.length ? lines[i + 1].trim() : '';
                if (nextLine.match(/Easy|Medium|Hard/i) && currentQuestion) {
                    currentQuestion.difficulty = nextLine.charAt(0).toUpperCase() + nextLine.slice(1).toLowerCase();
                } else {
                    // Try to count difficulty boxes/bullets on same or next line
                    const combinedText = line + ' ' + nextLine;
                    const boxCount = (combinedText.match(/■|●|▪/g) || []).length;
                    if (boxCount > 0 && currentQuestion) {
                        currentQuestion.difficulty = boxCount === 1 ? 'Easy' : boxCount === 2 ? 'Medium' : 'Hard';
                    }
                }
                continue;
            }
            
            // Extract Question ID from "ID: f1bfbed3 Answer" line (comes AFTER difficulty)
            const idAnswerMatch = line.match(/^ID[:\s]+([a-zA-Z0-9-]+)\s+Answer/i);
            if (idAnswerMatch) {
                // At this point we should have all question data including difficulty
                // Set the question ID now
                if (currentQuestion) {
                    currentQuestion.question_id = idAnswerMatch[1].trim();
                    console.log(`Set question ID: ${idAnswerMatch[1].trim()}`);
                }
                currentSection = 'answer_section'; // Mark that we're in the answer section
                continue;
            }
            
            // Extract correct answer ("Correct Answer:" on one line, answer on next)
            if (line.match(/^Correct Answer[:\s]*$/i)) {
                const nextLine = i + 1 < lines.length ? lines[i + 1].trim() : '';
                if (nextLine.match(/^[A-D]$/i) && currentQuestion) {
                    currentQuestion.correct_answer = nextLine.toUpperCase();
                    currentSection = null;
                }
                continue;
            }
            
            // Extract Rationale (heading on one line, content starts on next after blank line)
            if (line.match(/^Rationale[:\s]*$/i)) {
                currentSection = 'rationale';
                // Skip the next line if it's blank, then start collecting rationale
                if (i + 1 < lines.length && lines[i + 1].trim() === '') {
                    i++; // Skip blank line
                }
                continue;
            }
            
            // After rationale, start collecting answer_analysis
            if (currentSection === 'rationale' && line === '' && currentQuestion && currentQuestion.rationale) {
                currentSection = 'answer_analysis';
                continue;
            }
            
            // Extract Domain (use exactly as specified in PDF)
            // Domain appears in the header table, so this marks the start of a NEW question
            // Note: Domain value may be on the same line or on the next 1-2 lines
            if (line.match(/^Domain$/i)) {
                // Save the previous question if it exists and has been fully parsed
                if (currentQuestion && currentQuestion.question_id) {
                    console.log(`Saving previous question ${currentQuestion.question_id}`);
                    currentQuestion.answer_analysis = answerAnalysisBuffer.join(' ').trim();
                    this.finalizeQuestion(currentQuestion, assessmentType, currentTestType);
                }
                
                // Domain value is on the next lines - collect until we hit another field
                let domainParts = [];
                let j = i + 1;
                while (j < lines.length && lines[j] && !lines[j].match(/^(Skill|Test|Assessment|Question|ID:)/i)) {
                    domainParts.push(lines[j].trim());
                    j++;
                    if (domainParts.length > 3) break; // Domain shouldn't be more than 3 lines
                }
                
                const domainValue = domainParts.join(' ').trim();
                
                // Start a new question
                currentQuestion = {
                    question_id: null, // Will be set later from "ID: xxx Answer" line
                    text_lines: [],
                    answer_choices: {},
                    correct_answer: null,
                    rationale: '',
                    answer_analysis: '',
                    difficulty: 'Medium',
                    domain: domainValue,
                    skill: null
                };
                currentSection = 'question';
                answerAnalysisBuffer = [];
                console.log(`Started new question with domain: ${currentQuestion.domain}`);
                continue;
            }
            
            // Extract Skill (use exactly as specified in PDF)
            // "Skill" on one line, value on next line(s)
            if (line.match(/^Skill$/i)) {
                // Skill value might be multi-line like "Command of Evidence"
                let skillParts = [];
                let j = i + 1;
                while (j < lines.length && lines[j] && !lines[j].match(/^(Domain|Test|Assessment|Question|ID:|Difficulty)/i)) {
                    skillParts.push(lines[j].trim());
                    j++;
                    if (skillParts.length > 3) break;
                }
                
                const skillValue = skillParts.join(' ').trim();
                console.log(`Found Skill: ${skillValue}`);
                
                if (currentQuestion) {
                    currentQuestion.skill = skillValue;
                }
                continue;
            }
            
            // Extract answer choices A., B., C., D. (note: period, not parentheses)
            const choiceMatch = line.match(/^([A-D])\.\s*(.+)/);
            if (choiceMatch && currentQuestion && currentSection === 'question') {
                currentQuestion.answer_choices[choiceMatch[1]] = choiceMatch[2].trim();
                continue;
            }
            
            // Accumulate text based on current section
            if (currentQuestion && line.length > 0) {
                if (currentSection === 'question') {
                    // Don't add answer choices to question text (A., B., C., D.)
                    if (!line.match(/^[A-D]\.\s/)) {
                        currentQuestion.text_lines.push(line);
                    }
                } else if (currentSection === 'rationale') {
                    currentQuestion.rationale += (currentQuestion.rationale ? ' ' : '') + line;
                } else if (currentSection === 'answer_analysis') {
                    answerAnalysisBuffer.push(line);
                }
            }
        }
        
        // Save last question
        if (currentQuestion) {
            currentQuestion.answer_analysis = answerAnalysisBuffer.join(' ').trim();
            this.finalizeQuestion(currentQuestion, assessmentType, currentTestType);
        }
        
        console.log(`✓ Extracted ${this.questions.length} questions`);
    }

    finalizeQuestion(questionData, assessmentType, testType) {
        // Domain should be explicitly set from PDF's "Domain:" field
        if (!questionData.domain) {
            console.warn(`Question ${questionData.question_id}: No domain found in PDF`);
            questionData.domain = 'Unknown';
        }
        
        // Skill should be explicitly set from PDF's "Skill:" field
        if (!questionData.skill) {
            console.warn(`Question ${questionData.question_id}: No skill found in PDF`);
            questionData.skill = 'Unknown';
        }
        
        // test_type should be set from PDF's "Test:" field
        if (!testType) {
            console.warn(`Question ${questionData.question_id}: No test type found in PDF`);
            testType = 'Unknown';
        }
        
        const question = {
            question_id: questionData.question_id,
            assessment: assessmentType, // From "Assessment:" field
            test_type: testType, // From "Test:" field (Math or Reading and Writing)
            domain: questionData.domain, // From "Domain:" field
            difficulty: questionData.difficulty,
            skill: questionData.skill, // From "Skill:" field
            question_text: questionData.text_lines.join(' ').trim(),
            correct_answer: questionData.correct_answer || 'A',
            answer_choices: questionData.answer_choices,
            explanation: questionData.rationale.trim(), // Rationale maps to explanation
            answer_analysis: questionData.answer_analysis.trim(), // Content after blank line
            is_active: 1 // Default to 1 (active)
        };
        
        this.questions.push(question);
    }

    normalizeDomain(domain) {
        const domainLower = domain.toLowerCase();
        if (domainLower.includes('math')) return 'Math';
        if (domainLower.includes('reading')) return 'Reading';
        if (domainLower.includes('writing') || domainLower.includes('language')) return 'Writing and Language';
        return domain;
    }

    generateSQL() {
        let sql = `-- Generated SQL from College Board PDF\n`;
        sql += `-- Generated on: ${new Date().toISOString()}\n`;
        sql += `-- Total questions: ${this.questions.length}\n\n`;
        
        sql += `-- Insert questions into the questions table\n\n`;
        
        this.questions.forEach((question, index) => {
            const answerChoicesJSON = JSON.stringify(question.answer_choices).replace(/'/g, "''");
            const questionText = question.question_text.replace(/'/g, "''");
            const explanation = question.explanation.replace(/'/g, "''");
            const answerAnalysis = question.answer_analysis.replace(/'/g, "''");
            
            sql += `-- Question ${index + 1}: ${question.question_id}\n`;
            sql += `INSERT INTO questions (\n`;
            sql += `    question_id, assessment, test_type, domain, difficulty,\n`;
            sql += `    skill, question_text, correct_answer,\n`;
            sql += `    answer_choices, explanation, answer_analysis, is_active\n`;
            sql += `) VALUES (\n`;
            sql += `    '${question.question_id}',\n`;
            sql += `    '${question.assessment}',\n`;
            sql += `    '${question.test_type}',\n`;
            sql += `    '${question.domain}',\n`;
            sql += `    '${question.difficulty}',\n`;
            sql += `    '${question.skill}',\n`;
            sql += `    '${questionText}',\n`;
            sql += `    '${question.correct_answer}',\n`;
            sql += `    '${answerChoicesJSON}',\n`;
            sql += `    '${explanation}',\n`;
            sql += `    '${answerAnalysis}',\n`;
            sql += `    ${question.is_active}\n`;
            sql += `);\n\n`;
        });
        
        return sql;
    }

    generateJSON() {
        return {
            questions: this.questions,
            metadata: {
                total_questions: this.questions.length,
                domains: [...new Set(this.questions.map(q => q.domain))],
                difficulties: [...new Set(this.questions.map(q => q.difficulty))],
                test_types: [...new Set(this.questions.map(q => q.test_type))],
                skills: [...new Set(this.questions.map(q => q.skill))],
                generated_at: new Date().toISOString(),
                source: 'College Board PDF'
            }
        };
    }

    async saveSQL(filename = null) {
        try {
            mkdirSync(this.outputDir, { recursive: true });
            
            const sqlFilename =  `${this.outputFileBasename}.sql`;
            
            const sql = this.generateSQL();
            const outputPath = join(this.outputDir, sqlFilename);
            
            writeFileSync(outputPath, sql, 'utf8');
            console.log(`\n✓ SQL file generated: ${outputPath}`);
            console.log(`  Total questions: ${this.questions.length}`);
            
            return outputPath;
        } catch (error) {
            console.error('Error saving SQL:', error);
            throw error;
        }
    }

    async saveJSON() {
        try {
            mkdirSync(this.outputDir, { recursive: true });
            
            const jsonFilename =`${this.outputFileBasename}.json`;
            
            const json = this.generateJSON();
            const outputPath = join(this.outputDir, jsonFilename);
            
            writeFileSync(outputPath, JSON.stringify(json, null, 2), 'utf8');
            console.log(`✓ JSON file generated: ${outputPath}`);
            
            return outputPath;
        } catch (error) {
            console.error('Error saving JSON:', error);
            throw error;
        }
    }

    displaySummary() {
        console.log(`\n=== Summary ===`);
        console.log(`Total Questions: ${this.questions.length}`);
        
        const domains = {};
        const difficulties = {};
        const testTypes = {};
        
        this.questions.forEach(q => {
            domains[q.domain] = (domains[q.domain] || 0) + 1;
            difficulties[q.difficulty] = (difficulties[q.difficulty] || 0) + 1;
            testTypes[q.test_type] = (testTypes[q.test_type] || 0) + 1;
        });
        
        console.log(`\nBy Domain:`);
        Object.entries(domains).forEach(([domain, count]) => {
            console.log(`  ${domain}: ${count}`);
        });
        
        console.log(`\nBy Difficulty:`);
        Object.entries(difficulties).forEach(([difficulty, count]) => {
            console.log(`  ${difficulty}: ${count}`);
        });
        
        console.log(`\nBy Test Type:`);
        Object.entries(testTypes).forEach(([type, count]) => {
            console.log(`  ${type}: ${count}`);
        });
    }
}

// CLI usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const pdfPath = process.argv[2];
    
    if (!pdfPath) {
        console.log('Usage: node collegeboard-pdf-to-sql.js <path-to-pdf>');
        console.log('Example: node collegeboard-pdf-to-sql.js pdfs/sat-questions.pdf');
        process.exit(1);
    }
    
    async function main() {
        try {
            console.log('=== College Board PDF to SQL Converter ===');
            
            const parser = new CollegeBoardPDFToSQL();
            await parser.parsePDF(pdfPath);
            
            // Generate SQL file
            await parser.saveSQL();
            
            // Also generate JSON for reference
            await parser.saveJSON();
            
            // Display summary
            parser.displaySummary();
            
            console.log('\n✓ Complete! You can now run the SQL file to populate your database.');
            console.log('  To import: sqlite3 your_database.db < sql/questions_import.sql');
            
        } catch (error) {
            console.error('\n✗ Error:', error.message);
            process.exit(1);
        }
    }
    
    main();
}

export default CollegeBoardPDFToSQL;
