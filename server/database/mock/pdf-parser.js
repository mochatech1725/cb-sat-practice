import { readFileSync, readdirSync, statSync } from 'fs';
import { join, extname } from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import pdfParse from 'pdf-parse';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

class CollegeBoardPDFParser {
    constructor() {
        this.pdfDirectory = join(__dirname, 'pdfs');
        this.outputDirectory = join(__dirname, 'parsed');
        this.patterns = {
            // Question number patterns
            questionNumber: /^(\d+)[\.\)]\s*/,
            
            // Answer choice patterns (A, B, C, D)
            answerChoice: /^([A-D])[\.\)]\s*(.+)/,
            
            // Difficulty indicators
            difficulty: /\b(Easy|Medium|Hard)\b/i,
            
            // Domain patterns
            mathDomain: /\b(Math|Mathematics|Algebra|Geometry|Trigonometry|Calculus|Statistics|Data Analysis)\b/i,
            readingDomain: /\b(Reading|Literature|Passage|Comprehension)\b/i,
            writingDomain: /\b(Writing|Grammar|Language|Expression of Ideas|Standard English Conventions)\b/i,
            
            // Correct answer pattern
            correctAnswer: /Answer:\s*([A-D])/i,
            answerKey: /\b([A-D])\s*is\s*correct\b/i,
            
            // Explanation/rationale pattern
            explanation: /Explanation:|Rationale:|Solution:/i
        };
    }

    async parsePDFFile(filePath) {
        try {
            console.log(`Parsing PDF: ${filePath}`);
            
            const dataBuffer = readFileSync(filePath);
            const pdfData = await pdfParse(dataBuffer);
            
            console.log(`- Pages: ${pdfData.numpages}`);
            console.log(`- Text length: ${pdfData.text.length} characters`);
            
            return {
                text: pdfData.text,
                numpages: pdfData.numpages,
                info: pdfData.info,
                metadata: pdfData.metadata
            };
        } catch (error) {
            console.error(`Error parsing PDF ${filePath}:`, error);
            throw error;
        }
    }

    parseQuestionsFromText(text, fileName = '') {
        const questions = [];
        const lines = text.split('\n').map(line => line.trim()).filter(line => line.length > 0);
        
        let currentQuestion = null;
        let currentAnswerChoices = {};
        let inExplanation = false;
        let explanationText = '';
        
        // Determine domain from filename or content
        const domain = this.detectDomain(fileName, text);
        const difficulty = this.detectDifficulty(text);
        
        for (let i = 0; i < lines.length; i++) {
            const line = lines[i];
            
            // Check for question number
            const questionMatch = line.match(this.patterns.questionNumber);
            if (questionMatch) {
                // Save previous question if exists
                if (currentQuestion) {
                    questions.push(this.finalizeQuestion(currentQuestion, currentAnswerChoices, explanationText, domain, difficulty));
                }
                
                // Start new question
                const questionNumber = questionMatch[1];
                const questionText = line.replace(this.patterns.questionNumber, '').trim();
                
                currentQuestion = {
                    number: questionNumber,
                    text: questionText,
                    fullText: [questionText]
                };
                currentAnswerChoices = {};
                explanationText = '';
                inExplanation = false;
                continue;
            }
            
            // Check for answer choices
            const choiceMatch = line.match(this.patterns.answerChoice);
            if (choiceMatch && currentQuestion) {
                const [, choice, choiceText] = choiceMatch;
                currentAnswerChoices[choice] = choiceText.trim();
                continue;
            }
            
            // Check for correct answer
            const correctAnswerMatch = line.match(this.patterns.correctAnswer) || line.match(this.patterns.answerKey);
            if (correctAnswerMatch && currentQuestion) {
                currentQuestion.correctAnswer = correctAnswerMatch[1];
                continue;
            }
            
            // Check for explanation section
            if (this.patterns.explanation.test(line)) {
                inExplanation = true;
                explanationText = line.replace(this.patterns.explanation, '').trim();
                continue;
            }
            
            // Continue building question text or explanation
            if (currentQuestion) {
                if (inExplanation) {
                    explanationText += ' ' + line;
                } else if (!choiceMatch) {
                    currentQuestion.fullText.push(line);
                }
            }
        }
        
        // Save last question
        if (currentQuestion) {
            questions.push(this.finalizeQuestion(currentQuestion, currentAnswerChoices, explanationText, domain, difficulty));
        }
        
        console.log(`Extracted ${questions.length} questions from text`);
        return questions;
    }

    finalizeQuestion(questionData, answerChoices, explanation, domain, difficulty) {
        const questionId = this.generateQuestionId(domain, questionData.number);
        
        return {
            question_id: questionId,
            test_type: 'SAT',
            domain: domain,
            subdomain: this.detectSubdomain(questionData.fullText.join(' '), domain),
            difficulty: difficulty,
            skill: this.detectSkill(questionData.fullText.join(' '), domain),
            question_text: questionData.fullText.join(' '),
            correct_answer: questionData.correctAnswer || 'A',
            answer_choices: answerChoices,
            answer_analysis: explanation.trim(),
            explanation: explanation.trim(),
            is_active: 0
        };
    }

    detectDomain(fileName, text) {
        // Check filename first
        if (/math/i.test(fileName)) return 'Math';
        if (/reading/i.test(fileName)) return 'Reading';
        if (/writing/i.test(fileName)) return 'Writing and Language';
        
        // Check text content
        if (this.patterns.mathDomain.test(text)) return 'Math';
        if (this.patterns.readingDomain.test(text)) return 'Reading';
        if (this.patterns.writingDomain.test(text)) return 'Writing and Language';
        
        return 'Math'; // Default
    }

    detectDifficulty(text) {
        const difficultyMatch = text.match(this.patterns.difficulty);
        if (difficultyMatch) {
            return difficultyMatch[1].charAt(0).toUpperCase() + difficultyMatch[1].slice(1).toLowerCase();
        }
        return 'Medium'; // Default
    }

    detectSubdomain(questionText, domain) {
        const text = questionText.toLowerCase();
        
        if (domain === 'Math') {
            if (/algebra|equation|variable|expression/i.test(text)) return 'Algebra';
            if (/geometry|triangle|circle|angle|area|perimeter/i.test(text)) return 'Geometry';
            if (/function|graph|domain|range/i.test(text)) return 'Functions';
            if (/statistic|probability|data|mean|median/i.test(text)) return 'Data Analysis';
            return 'Algebra';
        } else if (domain === 'Reading') {
            if (/literature|fiction|story|character/i.test(text)) return 'Literature';
            if (/science|research|study|experiment/i.test(text)) return 'Science';
            if (/history|historical|document/i.test(text)) return 'History';
            return 'Literature';
        } else if (domain === 'Writing and Language') {
            if (/grammar|punctuation|comma|semicolon/i.test(text)) return 'Grammar';
            if (/style|word choice|tone/i.test(text)) return 'Style';
            if (/structure|organization|transition/i.test(text)) return 'Organization';
            return 'Grammar';
        }
        
        return 'General';
    }

    detectSkill(questionText, domain) {
        const text = questionText.toLowerCase();
        
        if (domain === 'Math') {
            if (/linear.*equation/i.test(text)) return 'Linear Equations';
            if (/quadratic/i.test(text)) return 'Quadratic Equations';
            if (/system.*equation/i.test(text)) return 'Systems of Equations';
            if (/triangle/i.test(text)) return 'Triangles';
            if (/area|perimeter/i.test(text)) return 'Area and Perimeter';
            if (/probability/i.test(text)) return 'Probability';
            if (/mean|median|average/i.test(text)) return 'Statistics';
            return 'Problem Solving';
        } else if (domain === 'Reading') {
            if (/main idea|central/i.test(text)) return 'Main Idea';
            if (/infer|imply|suggest/i.test(text)) return 'Inference';
            if (/purpose|author.*intent/i.test(text)) return 'Author\'s Purpose';
            if (/evidence|support/i.test(text)) return 'Evidence Support';
            return 'Comprehension';
        } else if (domain === 'Writing and Language') {
            if (/subject.*verb/i.test(text)) return 'Subject-Verb Agreement';
            if (/pronoun/i.test(text)) return 'Pronoun Reference';
            if (/parallel/i.test(text)) return 'Parallel Structure';
            if (/word choice|diction/i.test(text)) return 'Word Choice';
            return 'Grammar';
        }
        
        return 'General';
    }

    generateQuestionId(domain, number) {
        const domainPrefix = {
            'Math': 'SAT_MATH',
            'Reading': 'SAT_READING',
            'Writing and Language': 'SAT_WRITING'
        };
        
        const prefix = domainPrefix[domain] || 'SAT_OTHER';
        return `${prefix}_${String(number).padStart(3, '0')}`;
    }

    async parseAllPDFsInDirectory() {
        try {
            console.log(`\nScanning PDF directory: ${this.pdfDirectory}`);
            
            const files = readdirSync(this.pdfDirectory);
            const pdfFiles = files.filter(file => extname(file).toLowerCase() === '.pdf');
            
            console.log(`Found ${pdfFiles.length} PDF files`);
            
            const allQuestions = [];
            
            for (const pdfFile of pdfFiles) {
                const filePath = join(this.pdfDirectory, pdfFile);
                console.log(`\nProcessing: ${pdfFile}`);
                
                try {
                    const pdfData = await this.parsePDFFile(filePath);
                    const questions = this.parseQuestionsFromText(pdfData.text, pdfFile);
                    
                    allQuestions.push(...questions);
                    console.log(`✓ Extracted ${questions.length} questions from ${pdfFile}`);
                } catch (error) {
                    console.error(`✗ Failed to process ${pdfFile}:`, error.message);
                }
            }
            
            console.log(`\n=== Parsing Complete ===`);
            console.log(`Total questions extracted: ${allQuestions.length}`);
            
            return {
                questions: allQuestions,
                metadata: {
                    total_questions: allQuestions.length,
                    domains: [...new Set(allQuestions.map(q => q.domain))],
                    difficulties: [...new Set(allQuestions.map(q => q.difficulty))],
                    test_types: ['SAT'],
                    active_questions: 0,
                    inactive_questions: allQuestions.length,
                    last_updated: new Date().toISOString(),
                    source: 'College Board PDFs'
                }
            };
        } catch (error) {
            console.error('Error parsing PDFs:', error);
            throw error;
        }
    }

    exportToJSON(data, outputFile = 'parsed-questions.json') {
        const outputPath = join(this.outputDirectory, outputFile);
        
        try {
            const fs = await import('fs');
            await fs.promises.mkdir(this.outputDirectory, { recursive: true });
            await fs.promises.writeFile(outputPath, JSON.stringify(data, null, 2));
            
            console.log(`\n✓ Data exported to: ${outputPath}`);
            return outputPath;
        } catch (error) {
            console.error('Error exporting to JSON:', error);
            throw error;
        }
    }
}

export default CollegeBoardPDFParser;

// CLI usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const parser = new CollegeBoardPDFParser();
    
    async function main() {
        try {
            console.log('=== College Board PDF Parser ===\n');
            
            const data = await parser.parseAllPDFsInDirectory();
            
            // Export to JSON
            await parser.exportToJSON(data);
            
            // Display summary
            console.log('\n=== Summary ===');
            console.log(`Questions: ${data.metadata.total_questions}`);
            console.log(`Domains: ${data.metadata.domains.join(', ')}`);
            console.log(`Difficulties: ${data.metadata.difficulties.join(', ')}`);
            
        } catch (error) {
            console.error('Parsing failed:', error);
            process.exit(1);
        }
    }
    
    main();
}
