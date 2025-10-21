import express from 'express';

export default function questionRoutes(db) {
    const router = express.Router();

    // Get available filter options
    router.get('/filters', async (req, res) => {
        try {
            const testTypes = await new Promise((resolve, reject) => {
                db.db.all("SELECT DISTINCT test_type FROM questions ORDER BY test_type", (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows.map(row => row.test_type));
                });
            });

            const domains = await new Promise((resolve, reject) => {
                db.db.all("SELECT DISTINCT domain FROM questions ORDER BY domain", (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows.map(row => row.domain));
                });
            });

            const difficulties = await new Promise((resolve, reject) => {
                db.db.all("SELECT DISTINCT difficulty FROM questions ORDER BY difficulty", (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows.map(row => row.difficulty));
                });
            });

            const skills = await new Promise((resolve, reject) => {
                db.db.all("SELECT DISTINCT skill FROM questions ORDER BY skill", (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows.map(row => row.skill));
                });
            });

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
                excludeActive = false,
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
                excludeActive,
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
            
            const question = await new Promise((resolve, reject) => {
                db.db.get(
                    "SELECT * FROM questions WHERE id = ? OR question_id = ?",
                    [questionId, questionId],
                    (err, row) => {
                        if (err) reject(err);
                        else resolve(row);
                    }
                );
            });

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
            
            const questions = await new Promise((resolve, reject) => {
                db.db.all(`
                    SELECT q.*, psq.user_answer, psq.is_correct, psq.time_spent
                    FROM questions q
                    JOIN practice_set_questions psq ON q.id = psq.question_id
                    WHERE psq.practice_set_id = ?
                    ORDER BY psq.id
                `, [practiceSetId], (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows);
                });
            });

            res.json(questions);
        } catch (error) {
            console.error('Error fetching practice set questions:', error);
            res.status(500).json({ error: 'Failed to fetch practice set questions' });
        }
    });

    return router;
}
