import express from 'express';

export default function practiceRoutes(db) {
    const router = express.Router();

    // Create a new practice set
    router.post('/create', async (req, res) => {
        try {
            const {
                setName,
                testType,
                domains,
                difficulties,
                skills,
                questionCount,
                excludeActive,
                excludePrevious,
                userId = 'anonymous'
            } = req.body;

            // Validate required fields
            if (!testType || !domains || !difficulties || !skills || !questionCount) {
                return res.status(400).json({ 
                    error: 'Missing required fields: testType, domains, difficulties, skills, questionCount' 
                });
            }

            // Get excluded question IDs if needed
            let excludedQuestionIds = [];
            if (excludePrevious) {
                excludedQuestionIds = await db.getExcludedQuestionIds(userId);
            }

            // Search for questions with filters
            const filters = {
                testType,
                domains,
                difficulties,
                skills,
                questionCount: Math.min(questionCount, 100),
                excludeActive,
                excludePrevious,
                excludedQuestionIds
            };

            const questions = await db.getFilteredQuestions(filters);
            
            if (questions.length === 0) {
                return res.status(400).json({ 
                    error: 'No questions found matching the specified criteria' 
                });
            }

            // Create practice set
            const practiceSetData = {
                setName: setName || `Practice Set ${new Date().toLocaleDateString()}`,
                testType,
                domains,
                difficulties,
                skills,
                questionCount: questions.length,
                excludeActive,
                excludePrevious,
                userId
            };

            const practiceSetId = await db.createPracticeSet(practiceSetData);

            // Add questions to practice set
            const questionIds = questions.map(q => q.id);
            await db.addQuestionsToPracticeSet(practiceSetId, questionIds);

            res.json({
                practiceSetId,
                questions,
                message: `Practice set created with ${questions.length} questions`
            });
        } catch (error) {
            console.error('Error creating practice set:', error);
            res.status(500).json({ error: 'Failed to create practice set' });
        }
    });

    // Get practice history
    router.get('/history/:userId?', async (req, res) => {
        try {
            const userId = req.params.userId || req.query.userId || 'anonymous';
            const history = await db.getPracticeHistory(userId);
            
            res.json(history);
        } catch (error) {
            console.error('Error fetching practice history:', error);
            res.status(500).json({ error: 'Failed to fetch practice history' });
        }
    });

    // Get practice set details
    router.get('/set/:practiceSetId', async (req, res) => {
        try {
            const practiceSetId = req.params.practiceSetId;
            
            const practiceSet = await new Promise((resolve, reject) => {
                db.db.get(
                    "SELECT * FROM practice_sets WHERE id = ?",
                    [practiceSetId],
                    (err, row) => {
                        if (err) reject(err);
                        else resolve(row);
                    }
                );
            });

            if (!practiceSet) {
                return res.status(404).json({ error: 'Practice set not found' });
            }

            // Parse JSON fields
            practiceSet.domains = JSON.parse(practiceSet.domains);
            practiceSet.difficulties = JSON.parse(practiceSet.difficulties);
            practiceSet.skills = JSON.parse(practiceSet.skills);

            // Get questions for this practice set
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

            res.json({
                practiceSet,
                questions
            });
        } catch (error) {
            console.error('Error fetching practice set:', error);
            res.status(500).json({ error: 'Failed to fetch practice set' });
        }
    });

    // Submit practice set results
    router.post('/submit/:practiceSetId', async (req, res) => {
        try {
            const practiceSetId = req.params.practiceSetId;
            const { answers, userId = 'anonymous' } = req.body;

            if (!answers || !Array.isArray(answers)) {
                return res.status(400).json({ error: 'Answers array is required' });
            }

            let correctCount = 0;
            const totalQuestions = answers.length;

            // Process each answer
            for (const answer of answers) {
                const { questionId, userAnswer, timeSpent } = answer;
                
                // Get correct answer
                const question = await new Promise((resolve, reject) => {
                    db.db.get(
                        "SELECT correct_answer FROM questions WHERE id = ?",
                        [questionId],
                        (err, row) => {
                            if (err) reject(err);
                            else resolve(row);
                        }
                    );
                });

                const isCorrect = question && userAnswer === question.correct_answer;
                if (isCorrect) correctCount++;

                // Update practice set question
                await new Promise((resolve, reject) => {
                    db.db.run(`
                        UPDATE practice_set_questions 
                        SET user_answer = ?, is_correct = ?, time_spent = ?
                        WHERE practice_set_id = ? AND question_id = ?
                    `, [userAnswer, isCorrect ? 1 : 0, timeSpent, practiceSetId, questionId], (err) => {
                        if (err) reject(err);
                        else resolve();
                    });
                });
            }

            // Calculate score
            const score = totalQuestions > 0 ? (correctCount / totalQuestions) * 100 : 0;

            // Record in practice history
            await new Promise((resolve, reject) => {
                db.db.run(`
                    INSERT INTO practice_history (
                        user_id, practice_set_id, total_questions, 
                        correct_answers, score, completed_at
                    ) VALUES (?, ?, ?, ?, ?, ?)
                `, [userId, practiceSetId, totalQuestions, correctCount, score, new Date().toISOString()], (err) => {
                    if (err) reject(err);
                    else resolve();
                });
            });

            // Mark practice set as completed
            await new Promise((resolve, reject) => {
                db.db.run(
                    "UPDATE practice_sets SET completed_at = ? WHERE id = ?",
                    [new Date().toISOString(), practiceSetId],
                    (err) => {
                        if (err) reject(err);
                        else resolve();
                    }
                );
            });

            res.json({
                practiceSetId,
                score: Math.round(score * 100) / 100,
                correctAnswers: correctCount,
                totalQuestions,
                message: 'Practice set submitted successfully'
            });
        } catch (error) {
            console.error('Error submitting practice set:', error);
            res.status(500).json({ error: 'Failed to submit practice set' });
        }
    });

    // Reset practice history
    router.delete('/history/:userId?', async (req, res) => {
        try {
            const userId = req.params.userId || req.query.userId || 'anonymous';
            
            await db.resetPracticeHistory(userId);
            
            res.json({ message: 'Practice history reset successfully' });
        } catch (error) {
            console.error('Error resetting practice history:', error);
            res.status(500).json({ error: 'Failed to reset practice history' });
        }
    });

    // Get excluded question IDs for a user
    router.get('/excluded/:userId?', async (req, res) => {
        try {
            const userId = req.params.userId || req.query.userId || 'anonymous';
            const excludedIds = await db.getExcludedQuestionIds(userId);
            
            res.json({ excludedQuestionIds: excludedIds });
        } catch (error) {
            console.error('Error fetching excluded question IDs:', error);
            res.status(500).json({ error: 'Failed to fetch excluded question IDs' });
        }
    });

    return router;
}
