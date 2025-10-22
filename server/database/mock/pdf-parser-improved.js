import { readFileSync, readdirSync } from 'fs';
import { join, extname, basename } from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import pdfParse from 'pdf-parse';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

/**
 * Improved PDF Parser for College Board SAT Questions
 * Handles both Multiple Choice and Free Response questions
 */
class ImprovedCollegeBoardParser {
    constructor() {
        this.pdfDirectory = join(__dirname, 'pdfs');
        this.outputDirectory = join(__dirname, 'sql');
        
        this.patterns = {
            // Question ID pattern for splitting sections - must start with "Question ID"
            questionIdSplit: /^Question\s+ID\s+([a-zA-Z0-9]+)/i,
            
            // Question ID pattern for extraction (more flexible)
            questionId: /(?:Question\s+)?ID:\s*([a-zA-Z0-9]+)/i,
            
            // Difficulty pattern
            difficulty: /Difficulty:\s*(Easy|Medium|Hard)/i,
            
            // Test type / Domain patterns
            testType: /^(Math|Reading and Writing)/i,
            
            // Answer pattern for free response
            freeResponseAnswer: /^(?:Correct\s+)?Answer:\s*$/i,
            answerValue: /^([A-D]|\d+|[\d.]+|[\-]?\d+)$/,  // Match letter, number, decimal, or negative number
            
            // Multiple choice patterns
            multipleChoiceOption: /^([A-D])[\.\)]\s+(.+)/,
            
            // Rationale/Explanation pattern
            rationale: /^Rationale\s*$/i,
            explanation: /^Explanation\s*$/i,
            
            // Section markers
            answerSection: /Correct Answer\s*$/i
        };
    }

    /**
     * Parse a single PDF file
     */
    async parsePDFFile(filePath) {
        try {
            console.log(`\nParsing: ${filePath}`);
            const dataBuffer = readFileSync(filePath);
            const pdfData = await pdfParse(dataBuffer);
            
            console.log(`  Pages: ${pdfData.numpages}, Characters: ${pdfData.text.length}`);
            
            return pdfData.text;
        } catch (error) {
            console.error(`Error parsing PDF ${filePath}:`, error.message);
            throw error;
        }
    }

    /**
     * Extract questions from PDF text
     * Handles both multiple choice and free response formats
     */
    parseQuestionsFromText(text, fileName) {
        const questions = [];
        const sections = this.splitIntoQuestionSections(text);
        
        console.log(`  Found ${sections.length} question sections`);
        
        for (const section of sections) {
            try {
                const question = this.parseQuestionSection(section, fileName);
                if (question) {
                    questions.push(question);
                }
            } catch (error) {
                console.error(`  Error parsing question section:`, error.message);
            }
        }
        
        return questions;
    }

    /**
     * Split text into individual question sections based on "Question ID xxxx" markers
     */
    splitIntoQuestionSections(text) {
        const sections = [];
        const lines = text.split('\n');
        let currentSection = [];
        let inQuestion = false;
        
        for (const line of lines) {
            // Check if this line starts a new question - must be "Question ID xxxx"
            if (this.patterns.questionIdSplit.test(line)) {
                // Save previous section
                if (currentSection.length > 0) {
                    sections.push(currentSection.join('\n'));
                }
                // Start new section
                currentSection = [line];
                inQuestion = true;
            } else if (inQuestion) {
                currentSection.push(line);
            }
        }
        
        // Add last section
        if (currentSection.length > 0) {
            sections.push(currentSection.join('\n'));
        }
        
        return sections;
    }

    /**
     * Parse a single question section
     */
    parseQuestionSection(sectionText, fileName) {
        const lines = sectionText.split('\n').map(l => l.trim()).filter(l => l);
        
        // Extract question ID
        const idMatch = sectionText.match(this.patterns.questionId);
        if (!idMatch) {
            return null;
        }
        
        const questionId = idMatch[1];
        
        // Find where the Rationale section starts (metadata after this should be ignored)
        let rationaleIndex = -1;
        for (let i = 0; i < lines.length; i++) {
            if (this.patterns.rationale.test(lines[i]) || this.patterns.explanation.test(lines[i])) {
                rationaleIndex = i;
                break;
            }
        }
        
        // Extract metadata from explicit headers ONLY in the explanation section
        // (not in the question text or answer choices section)
        let explicitAssessment = '';
        let explicitTest = '';
        let explicitDomain = '';
        let explicitSkill = '';
        let explicitDifficulty = '';
        
        if (rationaleIndex !== -1) {
            // Look for metadata headers in the explanation section only
            for (let i = rationaleIndex; i < lines.length; i++) {
                // Stop if we hit "Question Difficulty" or next question
                if (/^Question\s+(Difficulty|ID)/i.test(lines[i])) {
                    break;
                }
                
                // Assessment header
                if (/^Assessment\s*$/i.test(lines[i]) && !explicitAssessment) {
                    const nextLine = i + 1 < lines.length ? lines[i + 1].trim() : '';
                    if (nextLine && !/^(Test|Domain|Skill|Difficulty|Choice)/i.test(nextLine)) {
                        explicitAssessment = nextLine;
                    }
                    continue;
                }
                
                // Test header
                if (/^Test\s*$/i.test(lines[i]) && !explicitTest) {
                    const stopPattern = /^(Domain|Skill|Assessment|Question|ID:|Difficulty|Choice)\b/i;
                    let j = i + 1;
                    const parts = [];
                    while (j < lines.length && lines[j] && !stopPattern.test(lines[j])) {
                        parts.push(lines[j].trim());
                        j++;
                        if (parts.length > 3) break;
                    }
                    explicitTest = parts.join(' ').trim();
                    continue;
                }
                
                // Domain header
                if (/^Domain\s*$/i.test(lines[i]) && !explicitDomain) {
                    const stopPattern = /^(Skill|Test|Assessment|Question|ID:|Difficulty|Choice)\b/i;
                    let j = i + 1;
                    const parts = [];
                    while (j < lines.length && lines[j] && !stopPattern.test(lines[j])) {
                        parts.push(lines[j].trim());
                        j++;
                        if (parts.length > 3) break;
                    }
                    explicitDomain = parts.join(' ').trim();
                    continue;
                }

                // Skill header
                if (/^Skill\s*$/i.test(lines[i]) && !explicitSkill) {
                    const stopPattern = /^(Assessment|Test|Domain|Question|ID:|Difficulty|Choice)\b/i;
                    let j = i + 1;
                    const parts = [];
                    while (j < lines.length && lines[j] && !stopPattern.test(lines[j])) {
                        parts.push(lines[j].trim());
                        j++;
                        if (parts.length > 3) break;
                    }
                    explicitSkill = parts.join(' ').trim();
                    continue;
                }
            }
        }
        
        // Question Difficulty appears at very end (after explanation text)
        for (let i = 0; i < lines.length; i++) {
            if (/^Question\s+Difficulty[:\s]*/i.test(lines[i])) {
                const nextLine = i + 1 < lines.length ? lines[i + 1].trim() : '';
                if (/^(Easy|Medium|Hard)$/i.test(nextLine)) {
                    explicitDifficulty = nextLine;
                } else {
                    const combined = `${lines[i]} ${nextLine}`;
                    const boxCount = (combined.match(/■|●|▪/g) || []).length;
                    if (boxCount === 1) explicitDifficulty = 'Easy';
                    if (boxCount === 2) explicitDifficulty = 'Medium';
                    if (boxCount >= 3) explicitDifficulty = 'Hard';
                }
                break;
            }
        }
        
        // Resolve canonical values with fallbacks
        const testTypeMatch = sectionText.match(this.patterns.testType);
        const testType = explicitTest || (testTypeMatch ? testTypeMatch[1] : 'Math');
        
        const difficultyMatch = sectionText.match(this.patterns.difficulty);
        const difficulty = (explicitDifficulty || (difficultyMatch ? difficultyMatch[1] : 'Medium'));
        
        // Find where different sections begin
        let questionTextEnd = -1;
        let answerStart = -1;
        let rationaleStart = -1;
        
        for (let i = 0; i < lines.length; i++) {
            if (this.patterns.answerSection.test(lines[i]) || 
                this.patterns.freeResponseAnswer.test(lines[i])) {
                answerStart = i;
                if (questionTextEnd === -1) {
                    questionTextEnd = i;
                }
            }
            if (this.patterns.rationale.test(lines[i]) || 
                this.patterns.explanation.test(lines[i])) {
                rationaleStart = i;
                if (questionTextEnd === -1) {
                    questionTextEnd = i;
                }
                break;
            }
        }
        
        // Extract question text (everything between ID line and Answer/Rationale)
        let questionStartIdx = 0;
        for (let i = 0; i < lines.length; i++) {
            if (this.patterns.questionIdSplit.test(lines[i])) {
                questionStartIdx = i + 1;
                break;
            }
        }
        
        if (questionTextEnd === -1) {
            questionTextEnd = lines.length;
        }
        
        // Filter out unwanted lines from question text
        const questionTextLines = lines.slice(questionStartIdx, questionTextEnd).filter(line => {
            // Remove "ID: xxx" and "ID: xxx Answer" lines
            if (/^ID:\s*[a-zA-Z0-9]+(\s+Answer)?$/i.test(line)) {
                return false;
            }
            // Remove standalone Question ID lines
            if (this.patterns.questionIdSplit.test(line)) {
                return false;
            }
            return true;
        });
        const questionText = questionTextLines.join('\n').trim();
        
        // Determine if multiple choice or free response
        let isMultipleChoice = false;
        const answerChoices = {};
        
        // Check for A-D options in question text
        for (const line of questionTextLines) {
            const choiceMatch = line.match(this.patterns.multipleChoiceOption);
            if (choiceMatch) {
                isMultipleChoice = true;
                answerChoices[choiceMatch[1]] = choiceMatch[2].trim();
            }
        }
        
        // Extract correct answer - look for "Correct Answer:" and get the next line
        let correctAnswer = '';
        for (let i = 0; i < lines.length; i++) {
            if (/^Correct\s+Answer:\s*$/i.test(lines[i])) {
                // Answer is on the next line
                if (i + 1 < lines.length) {
                    const nextLine = lines[i + 1].trim();
                    if (this.patterns.answerValue.test(nextLine)) {
                        correctAnswer = nextLine;
                        break;
                    }
                }
            }
        }
        
        // Extract rationale - stop at "Question Difficulty:" and remove metadata block
        let rationale = '';
        if (rationaleStart !== -1 && rationaleStart < lines.length - 1) {
            let rationaleEndIdx = lines.length;
            
            // Find where to stop (at "Question Difficulty:")
            for (let i = rationaleStart + 1; i < lines.length; i++) {
                if (/^Question\s+Difficulty/i.test(lines[i])) {
                    rationaleEndIdx = i;
                    break;
                }
            }
            
            // Collect rationale lines, filtering out the metadata block
            const rationaleLines = [];
            let inMetadataBlock = false;
            
            for (let i = rationaleStart + 1; i < rationaleEndIdx; i++) {
                const line = lines[i];
                
                // Detect start of metadata block
                if (/^Assessment\s*$/i.test(line)) {
                    inMetadataBlock = true;
                    continue;
                }
                
                // Detect end of metadata block (when we see "Difficulty" or a line starting with "Choice")
                if (inMetadataBlock && (/^(Difficulty|Choice)\b/i.test(line) || line.length > 50)) {
                    inMetadataBlock = false;
                    // Don't include the "Difficulty" line itself
                    if (/^Difficulty\s*$/i.test(line)) {
                        continue;
                    }
                }
                
                // Skip lines that are part of metadata block
                if (inMetadataBlock) {
                    continue;
                }
                
                rationaleLines.push(line);
            }
            
            rationale = rationaleLines.join('\n').trim();
        }
        
        // Use explicit domain and skill from headers, with simple defaults if missing
        const domain = explicitDomain || (testType === 'Math' ? 'Algebra' : 'Information and Ideas');
        const skill = explicitSkill || 'General';
        
        // Build answer structure
        const answerData = isMultipleChoice ? {
            type: 'multiple_choice',
            choices: answerChoices
        } : {
            type: 'free_response'
        };
        
        return {
            question_id: questionId,
            assessment: explicitAssessment || 'SAT',
            test_type: testType,
            domain: domain,
            difficulty: difficulty,
            skill: skill,
            question_text: questionText,
            correct_answer: correctAnswer,
            answer_choices: answerData,
            explanation: rationale,
            answer_analysis: '',
            is_active: 0
        };
    }

    /**
     * Parse all PDFs in directory and generate separate output files for each
     */
    async parseAllPDFs() {
        const files = readdirSync(this.pdfDirectory);
        const pdfFiles = files.filter(f => extname(f).toLowerCase() === '.pdf');
        
        console.log(`\n=== Found ${pdfFiles.length} PDF files ===`);
        
        let totalQuestions = 0;
        let totalMultipleChoice = 0;
        let totalFreeResponse = 0;
        const allDomains = new Set();
        const allTestTypes = new Set();
        const allDifficulties = new Set();
        
        for (const pdfFile of pdfFiles) {
            const filePath = join(this.pdfDirectory, pdfFile);
            const outputBasename = basename(pdfFile, '.pdf');
            
            try {
                const text = await this.parsePDFFile(filePath);
                const questions = this.parseQuestionsFromText(text, pdfFile);
                
                console.log(`  ✓ Extracted ${questions.length} questions`);
                
                // Export to separate files for this PDF
                await this.exportToJSON(questions, `${outputBasename}.json`);
                await this.exportToSQL(questions, `${outputBasename}.sql`);
                
                // Collect statistics
                totalQuestions += questions.length;
                totalMultipleChoice += questions.filter(q => q.answer_choices.type === 'multiple_choice').length;
                totalFreeResponse += questions.filter(q => q.answer_choices.type === 'free_response').length;
                questions.forEach(q => {
                    allDomains.add(q.domain);
                    allTestTypes.add(q.test_type);
                    allDifficulties.add(q.difficulty);
                });
                
            } catch (error) {
                console.error(`  ✗ Failed: ${error.message}`);
            }
        }
        
        console.log(`\n=== Total: ${totalQuestions} questions ===\n`);
        
        return {
            totalQuestions,
            totalMultipleChoice,
            totalFreeResponse,
            testTypes: Array.from(allTestTypes),
            domains: Array.from(allDomains),
            difficulties: Array.from(allDifficulties)
        };
    }

    /**
     * Export questions to JSON
     */
    async exportToJSON(questions, outputFile = 'questions_import.json') {
        const fs = await import('fs');
        const outputPath = join(this.outputDirectory, outputFile);
        
        await fs.promises.mkdir(this.outputDirectory, { recursive: true });
        await fs.promises.writeFile(
            outputPath,
            JSON.stringify(questions, null, 2),
            'utf8'
        );
        
        console.log(`✓ Exported to: ${outputPath}`);
        return outputPath;
    }

    /**
     * Generate SQL INSERT statements
     */
    generateSQL(questions) {
        const sqlStatements = [];
        
        sqlStatements.push('-- Auto-generated SQL for SAT Questions');
        sqlStatements.push('-- Supports both Multiple Choice and Free Response questions\n');
        
        for (const q of questions) {
            const answerChoicesJson = JSON.stringify(q.answer_choices).replace(/'/g, "''");
            const questionText = q.question_text.replace(/'/g, "''");
            const explanation = (q.explanation || '').replace(/'/g, "''");
            const answerAnalysis = (q.answer_analysis || '').replace(/'/g, "''");
            
            const sql = `INSERT INTO questions (
    question_id, assessment, test_type, domain, difficulty, skill,
    question_text, correct_answer, answer_choices, explanation, answer_analysis, is_active
) VALUES (
    '${q.question_id}',
    '${q.assessment}',
    '${q.test_type}',
    '${q.domain}',
    '${q.difficulty}',
    '${q.skill}',
    '${questionText}',
    '${q.correct_answer}',
    '${answerChoicesJson}',
    '${explanation}',
    '${answerAnalysis}',
    ${q.is_active}
) AS new_values
ON DUPLICATE KEY UPDATE
    question_text = new_values.question_text,
    correct_answer = new_values.correct_answer,
    answer_choices = new_values.answer_choices,
    explanation = new_values.explanation,
    answer_analysis = new_values.answer_analysis;`;
            
            sqlStatements.push(sql);
        }
        
        return sqlStatements.join('\n\n');
    }

    /**
     * Export to SQL file
     */
    async exportToSQL(questions, outputFile = 'questions_import.sql') {
        const fs = await import('fs');
        const outputPath = join(this.outputDirectory, outputFile);
        const sql = this.generateSQL(questions);
        
        await fs.promises.mkdir(this.outputDirectory, { recursive: true });
        await fs.promises.writeFile(outputPath, sql, 'utf8');
        
        console.log(`✓ Exported SQL to: ${outputPath}`);
        return outputPath;
    }
}

export default ImprovedCollegeBoardParser;

// CLI Usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const parser = new ImprovedCollegeBoardParser();
    
    async function main() {
        try {
            console.log('\n╔══════════════════════════════════════╗');
            console.log('║  Improved College Board PDF Parser  ║');
            console.log('║  Multiple Choice & Free Response    ║');
            console.log('╚══════════════════════════════════════╝');
            
            const stats = await parser.parseAllPDFs();
            
            if (stats.totalQuestions === 0) {
                console.log('\n⚠ No questions extracted');
                return;
            }
            
            // Display summary
            console.log('\n=== Summary ===');
            console.log(`Total Questions: ${stats.totalQuestions}`);
            console.log(`Multiple Choice: ${stats.totalMultipleChoice}`);
            console.log(`Free Response: ${stats.totalFreeResponse}`);
            console.log(`\nTest Types: ${stats.testTypes.join(', ')}`);
            console.log(`Domains: ${stats.domains.join(', ')}`);
            console.log(`Difficulties: ${stats.difficulties.join(', ')}`);
            
        } catch (error) {
            console.error('\n✗ Error:', error.message);
            process.exit(1);
        }
    }
    
    main();
}

