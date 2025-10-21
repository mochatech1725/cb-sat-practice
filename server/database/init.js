import { join, dirname } from 'path';
import { fileURLToPath } from 'url';
import MockDataLoader from './mock/mock-loader.js';
import DatabaseFactory from './DatabaseFactory.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

export class Database {
    constructor(adapter = null) {
        // Use provided adapter or create one from environment
        this.adapter = adapter || DatabaseFactory.createFromEnv();
        this.mockLoader = new MockDataLoader();
        this.initialized = false;
    }

    async init() {
        if (this.initialized) {
            return;
        }

        try {
            // Connect to database
            await this.adapter.connect();
            
            // Initialize schema
            const schemaPath = join(__dirname, 'schema-mysql.sql');
            await this.adapter.initializeSchema(schemaPath);
            
            console.log('Database initialized successfully');
            this.initialized = true;
            
        } catch (error) {
            console.error('Error initializing database:', error);
            throw error;
        }
    }

    // Question filtering methods
    async getFilteredQuestions(filters) {
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

        query += ` ORDER BY RAND() LIMIT ?`;
        params.push(filters.questionCount);

        return await this.adapter.getAll(query, params);
    }

    // Practice test management
    async createPracticeTest(practiceTestData) {
        const testId = `test_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
        
        await this.adapter.execute(`
            INSERT INTO practice_tests (
                test_id, user_id, test_name, test_type, domains, difficulties, 
                skills, question_count, exclude_active, exclude_previous
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `, [
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
        ]);

        return testId;
    }

    async addProblemsToPracticeTest(testId, questions) {
        for (let index = 0; index < questions.length; index++) {
            const question = questions[index];
            const problemId = `prob_${Date.now()}_${index}_${Math.random().toString(36).substr(2, 9)}`;
            
            await this.adapter.execute(`
                INSERT INTO practice_problems (
                    problem_id, test_id, question_id, question_text, correct_answer,
                    answer_choices, answer_analysis, problem_order
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)
            `, [
                problemId,
                testId,
                question.id,
                question.question_text,
                question.correct_answer,
                question.answer_choices || '{}',
                question.answer_analysis || '',
                index + 1
            ]);
        }
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

    async addQuestionsToPracticeSet(practiceSetId, questionIds) {
        // Get the questions first
        const placeholders = questionIds.map(() => '?').join(',');
        const query = `SELECT * FROM questions WHERE id IN (${placeholders})`;
        
        const questions = await this.adapter.getAll(query, questionIds);
        
        // Add problems to practice test
        await this.addProblemsToPracticeTest(practiceSetId, questions);
    }

    async getPracticeHistory(userId = 'anonymous') {
        const query = `
            SELECT ps.*, ph.score, ph.completed_at, ph.total_questions, ph.correct_answers
            FROM practice_sets ps
            LEFT JOIN practice_history ph ON ps.id = ph.practice_set_id
            WHERE ps.user_id = ?
            ORDER BY ps.created_at DESC
        `;

        return await this.adapter.getAll(query, [userId]);
    }

    async getExcludedQuestionIds(userId = 'anonymous') {
        const query = `
            SELECT DISTINCT psq.question_id
            FROM practice_set_questions psq
            JOIN practice_sets ps ON psq.practice_set_id = ps.id
            WHERE ps.user_id = ?
        `;

        const rows = await this.adapter.getAll(query, [userId]);
        return rows.map(row => row.question_id);
    }

    async resetPracticeHistory(userId = 'anonymous') {
        await this.adapter.execute(`
            DELETE FROM practice_history 
            WHERE practice_set_id IN (
                SELECT id FROM practice_sets WHERE user_id = ?
            )
        `, [userId]);

        await this.adapter.execute(`
            DELETE FROM practice_set_questions 
            WHERE practice_set_id IN (
                SELECT id FROM practice_sets WHERE user_id = ?
            )
        `, [userId]);

        await this.adapter.execute(`
            DELETE FROM practice_sets WHERE user_id = ?
        `, [userId]);
    }

    async close() {
        await this.adapter.close();
    }
}

export default Database;
