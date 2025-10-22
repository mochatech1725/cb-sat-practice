import express from 'express';

export default function questionRoutes(db) {
    const router = express.Router();

    // Get available filter options
    router.get('/filters', async (req, res) => {
        try {
            const testTypeRows = await db.adapter.getAll("SELECT DISTINCT test_type FROM questions ORDER BY test_type");
            const testTypes = testTypeRows.map(row => row.test_type);

            const domainRows = await db.adapter.getAll("SELECT DISTINCT domain FROM questions ORDER BY domain");
            const domains = domainRows.map(row => row.domain);

            const difficultyRows = await db.adapter.getAll("SELECT DISTINCT difficulty FROM questions ORDER BY difficulty");
            const difficulties = difficultyRows.map(row => row.difficulty);

            const skillRows = await db.adapter.getAll("SELECT DISTINCT skill FROM questions ORDER BY skill");
            const skills = skillRows.map(row => row.skill);

            res.json({
                testTypes,
                domains,
                difficulties,
                skills
            });
        } catch (error) {
            console.error('Error fetching filter options:', error);
            res.status(500).json({ error: 'Failed to fetch filter options' });
        }
    });

    // Get questions based on filters
    router.post('/search', async (req, res) => {
        try {
            const {
                testType,
                domains = [],
                difficulties = [],
                skills = [],
                questionCount = 10,
                excludePrevious = false,
                userId = 'anonymous'
            } = req.body;

            if (!testType) {
                return res.status(400).json({ error: 'Test type is required' });
            }

            // Get excluded question IDs if needed
            let excludedQuestionIds = [];
            if (excludePrevious) {
                excludedQuestionIds = await db.getExcludedQuestionIds(userId);
            }

            const filters = {
                testType,
                domains,
                difficulties,
                skills,
                questionCount: Math.min(questionCount, 100), // Limit to 100 questions max
                excludePrevious,
                excludedQuestionIds
            };

            const questions = await db.getFilteredQuestions(filters);
            
            res.json({
                questions,
                totalFound: questions.length,
                filters
            });
        } catch (error) {
            console.error('Error searching questions:', error);
            res.status(500).json({ error: 'Failed to search questions' });
        }
    });

    // Get question by ID
    router.get('/:id', async (req, res) => {
        try {
            const questionId = req.params.id;
            
            const question = await db.adapter.get(
                "SELECT * FROM questions WHERE id = ? OR question_id = ?",
                [questionId, questionId]
            );

            if (!question) {
                return res.status(404).json({ error: 'Question not found' });
            }

            res.json(question);
        } catch (error) {
            console.error('Error fetching question:', error);
            res.status(500).json({ error: 'Failed to fetch question' });
        }
    });

    // Get questions by practice set ID
    router.get('/practice-set/:practiceSetId', async (req, res) => {
        try {
            const practiceSetId = req.params.practiceSetId;
            
            const questions = await db.adapter.getAll(`
                SELECT q.*, psq.user_answer, psq.is_correct
                FROM questions q
                JOIN practice_set_questions psq ON q.id = psq.question_id
                WHERE psq.practice_set_id = ?
                ORDER BY psq.id
            `, [practiceSetId]);

            res.json(questions);
        } catch (error) {
            console.error('Error fetching practice set questions:', error);
            res.status(500).json({ error: 'Failed to fetch practice set questions' });
        }
    });

    return router;
}
