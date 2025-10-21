import sqlite3 from 'sqlite3';
import { readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';
import MockDataLoader from './mock/mock-loader.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const dbPath = join(__dirname, 'sat_practice.db');

export class Database {
    constructor() {
        this.db = new sqlite3.Database(dbPath);
        this.mockLoader = new MockDataLoader();
        this.init();
    }

    init() {
        // Read and execute schema
        const schema = readFileSync(join(__dirname, 'schema.sql'), 'utf8');
        
        this.db.exec(schema, (err) => {
            if (err) {
                console.error('Error creating database schema:', err);
            } else {
                console.log('Database schema initialized successfully');
                this.seedSampleData();
            }
        });
    }

    seedSampleData() {
        // Check if we already have sample data
        this.db.get("SELECT COUNT(*) as count FROM questions", (err, row) => {
            if (err) {
                console.error('Error checking existing data:', err);
                return;
            }

            if (row.count === 0) {
                console.log('Seeding sample data...');
                this.insertSampleQuestions();
            }
        });
    }

    insertSampleQuestions() {
        try {
            // Load mock data
            const mockData = this.mockLoader.loadAllMockData();
            
            // Validate the mock data
            if (!this.mockLoader.validateMockData(mockData)) {
                console.warn('Mock data validation failed, but proceeding with insertion');
            }

            const stmt = this.db.prepare(`
                INSERT INTO questions (
                    question_id, test_type, domain, subdomain, difficulty, 
                    skill, question_text, correct_answer, 
                    answer_choices, answer_analysis, explanation, is_active
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `);

            let insertedCount = 0;
            let skippedCount = 0;

            mockData.questions.forEach(question => {
                try {
                    stmt.run([
                        question.question_id,
                        question.test_type,
                        question.domain,
                        question.subdomain,
                        question.difficulty,
                        question.skill,
                        question.question_text,
                        question.correct_answer,
                        JSON.stringify(question.answer_choices || {}),
                        question.answer_analysis || '',
                        question.explanation || '',
                        question.is_active ? 1 : 0
                    ]);
                    insertedCount++;
                } catch (error) {
                    if (error.message.includes('UNIQUE constraint failed')) {
                        // Question already exists, skip it
                        skippedCount++;
                    } else {
                        console.error(`Error inserting question ${question.question_id}:`, error);
                        skippedCount++;
                    }
                }
            });

            stmt.finalize();
            console.log(`Mock questions inserted: ${insertedCount} inserted, ${skippedCount} skipped`);
            
            // Insert a sample user
            this.insertSampleUser();
            
        } catch (error) {
            console.error('Error loading or inserting mock data:', error);
            // Fall back to basic sample data if mock loading fails
            this.insertBasicSampleQuestions();
        }
    }

    insertBasicSampleQuestions() {
        console.log('Falling back to basic sample questions...');
        
        const basicQuestions = [
            {
                question_id: 'SAT_MATH_BASIC_001',
                test_type: 'SAT',
                domain: 'Math',
                subdomain: 'Algebra',
                difficulty: 'Easy',
                skill: 'Linear Equations',
                question_text: 'If 2x + 3 = 7, what is the value of x?',
                correct_answer: 'A',
                answer_choices: JSON.stringify({
                    'A': '2',
                    'B': '3',
                    'C': '4',
                    'D': '5'
                }),
                answer_analysis: 'Solve: 2x + 3 = 7, 2x = 4, x = 2',
                explanation: 'Solve: 2x + 3 = 7, 2x = 4, x = 2',
                is_active: 0
            }
        ];

        const stmt = this.db.prepare(`
            INSERT INTO questions (
                question_id, test_type, domain, subdomain, difficulty, 
                skill, question_text, correct_answer, 
                answer_choices, answer_analysis, explanation, is_active
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `);

        basicQuestions.forEach(question => {
            try {
                stmt.run([
                    question.question_id,
                    question.test_type,
                    question.domain,
                    question.subdomain,
                    question.difficulty,
                    question.skill,
                    question.question_text,
                    question.correct_answer,
                    question.answer_choices,
                    question.answer_analysis,
                    question.explanation,
                    question.is_active
                ]);
            } catch (error) {
                console.error(`Error inserting basic question:`, error);
            }
        });

        stmt.finalize();
        console.log('Basic sample questions inserted');
    }

    insertSampleUser() {
        const stmt = this.db.prepare(`
            INSERT OR IGNORE INTO users (user_id, first_name, last_name)
            VALUES (?, ?, ?)
        `);
        
        stmt.run(['anonymous-user-001', 'Anonymous', 'User']);
        stmt.finalize();
        console.log('Sample user inserted successfully');
    }

    // Question filtering methods
    getFilteredQuestions(filters) {
        return new Promise((resolve, reject) => {
            let query = `
                SELECT * FROM questions 
                WHERE test_type = ?
            `;
            const params = [filters.testType];

            if (filters.domains && filters.domains.length > 0) {
                query += ` AND domain IN (${filters.domains.map(() => '?').join(',')})`;
                params.push(...filters.domains);
            }

            if (filters.difficulties && filters.difficulties.length > 0) {
                query += ` AND difficulty IN (${filters.difficulties.map(() => '?').join(',')})`;
                params.push(...filters.difficulties);
            }

            if (filters.skills && filters.skills.length > 0) {
                query += ` AND skill IN (${filters.skills.map(() => '?').join(',')})`;
                params.push(...filters.skills);
            }

            if (filters.excludeActive) {
                query += ` AND is_active = 0`;
            }

            if (filters.excludePrevious && filters.excludedQuestionIds && filters.excludedQuestionIds.length > 0) {
                query += ` AND id NOT IN (${filters.excludedQuestionIds.map(() => '?').join(',')})`;
                params.push(...filters.excludedQuestionIds);
            }

            query += ` ORDER BY RANDOM() LIMIT ?`;
            params.push(filters.questionCount);

            this.db.all(query, params, (err, rows) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(rows);
                }
            });
        });
    }

    // Practice test management
    createPracticeTest(practiceTestData) {
        return new Promise((resolve, reject) => {
            const testId = `test_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
            
            const stmt = this.db.prepare(`
                INSERT INTO practice_tests (
                    test_id, user_id, test_name, test_type, domains, difficulties, 
                    skills, question_count, exclude_active, exclude_previous
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `);

            stmt.run([
                testId,
                practiceTestData.userId || 'anonymous-user-001',
                practiceTestData.testName || `Practice Test ${new Date().toLocaleDateString()}`,
                practiceTestData.testType,
                JSON.stringify(practiceTestData.domains),
                JSON.stringify(practiceTestData.difficulties),
                JSON.stringify(practiceTestData.skills),
                practiceTestData.questionCount,
                practiceTestData.excludeActive ? 1 : 0,
                practiceTestData.excludePrevious ? 1 : 0
            ], function(err) {
                if (err) {
                    reject(err);
                } else {
                    resolve(testId);
                }
            });

            stmt.finalize();
        });
    }

    addProblemsToPracticeTest(testId, questions) {
        return new Promise((resolve, reject) => {
            const stmt = this.db.prepare(`
                INSERT INTO practice_problems (
                    problem_id, test_id, question_id, question_text, correct_answer,
                    answer_choices, answer_analysis, problem_order
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            `);

            let completed = 0;
            let hasError = false;

            questions.forEach((question, index) => {
                const problemId = `prob_${Date.now()}_${index}_${Math.random().toString(36).substr(2, 9)}`;
                
                stmt.run([
                    problemId,
                    testId,
                    question.id,
                    question.question_text,
                    question.correct_answer,
                    question.answer_choices || '{}',
                    question.answer_analysis || '',
                    index + 1
                ], (err) => {
                    if (err && !hasError) {
                        hasError = true;
                        reject(err);
                    }
                    
                    completed++;
                    if (completed === questions.length && !hasError) {
                        stmt.finalize();
                        resolve();
                    }
                });
            });
        });
    }

    // Backward compatibility methods
    createPracticeSet(practiceSetData) {
        // Convert to new format and call createPracticeTest
        return this.createPracticeTest({
            userId: practiceSetData.userId,
            testName: practiceSetData.setName,
            testType: practiceSetData.testType,
            domains: practiceSetData.domains,
            difficulties: practiceSetData.difficulties,
            skills: practiceSetData.skills,
            questionCount: practiceSetData.questionCount,
            excludeActive: practiceSetData.excludeActive,
            excludePrevious: practiceSetData.excludePrevious
        });
    }

    addQuestionsToPracticeSet(practiceSetId, questionIds) {
        return new Promise((resolve, reject) => {
            // Get the questions first
            const placeholders = questionIds.map(() => '?').join(',');
            const query = `SELECT * FROM questions WHERE id IN (${placeholders})`;
            
            this.db.all(query, questionIds, (err, questions) => {
                if (err) {
                    reject(err);
                    return;
                }
                
                // Add problems to practice test
                this.addProblemsToPracticeTest(practiceSetId, questions)
                    .then(() => resolve())
                    .catch(reject);
            });
        });
    }

    getPracticeHistory(userId = 'anonymous') {
        return new Promise((resolve, reject) => {
            const query = `
                SELECT ps.*, ph.score, ph.completed_at, ph.total_questions, ph.correct_answers
                FROM practice_sets ps
                LEFT JOIN practice_history ph ON ps.id = ph.practice_set_id
                WHERE ps.user_id = ?
                ORDER BY ps.created_at DESC
            `;

            this.db.all(query, [userId], (err, rows) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(rows);
                }
            });
        });
    }

    getExcludedQuestionIds(userId = 'anonymous') {
        return new Promise((resolve, reject) => {
            const query = `
                SELECT DISTINCT psq.question_id
                FROM practice_set_questions psq
                JOIN practice_sets ps ON psq.practice_set_id = ps.id
                WHERE ps.user_id = ?
            `;

            this.db.all(query, [userId], (err, rows) => {
                if (err) {
                    reject(err);
                } else {
                    resolve(rows.map(row => row.question_id));
                }
            });
        });
    }

    resetPracticeHistory(userId = 'anonymous') {
        return new Promise((resolve, reject) => {
            this.db.run(`
                DELETE FROM practice_history 
                WHERE practice_set_id IN (
                    SELECT id FROM practice_sets WHERE user_id = ?
                )
            `, [userId], (err) => {
                if (err) {
                    reject(err);
                } else {
                    this.db.run(`
                        DELETE FROM practice_set_questions 
                        WHERE practice_set_id IN (
                            SELECT id FROM practice_sets WHERE user_id = ?
                        )
                    `, [userId], (err) => {
                        if (err) {
                            reject(err);
                        } else {
                            this.db.run(`
                                DELETE FROM practice_sets WHERE user_id = ?
                            `, [userId], (err) => {
                                if (err) {
                                    reject(err);
                                } else {
                                    resolve();
                                }
                            });
                        }
                    });
                }
            });
        });
    }

    close() {
        this.db.close();
    }
}

export default Database;
