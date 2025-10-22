import express from 'express';

export default function practiceRoutes(db) {
    const router = express.Router();

    // Create a new practice set
    router.post('/create', async (req, res) => {
        try {
        const {
            setName,
            assessment = 'SAT', // Default to SAT if not provided
            testType,
            domains,
            difficulties,
            skills,
            questionCount,
            excludePrevious,
            userId
        } = req.body;

            // Validate required fields
            if (!assessment || !testType || !domains || !difficulties || !skills || !questionCount || !userId) {
                return res.status(400).json({ 
                    error: 'Missing required fields: assessment, testType, domains, difficulties, skills, questionCount, userId' 
                });
            }

            // Get excluded question IDs if needed
            let excludedQuestionIds = [];
            if (excludePrevious) {
                excludedQuestionIds = await db.getExcludedQuestionIds(userId);
            }

            // Ensure arrays are actually arrays (in case they were serialized)
            const domainsArray = Array.isArray(domains) ? domains : [domains];
            const difficultiesArray = Array.isArray(difficulties) ? difficulties : [difficulties];
            const skillsArray = Array.isArray(skills) ? skills : [skills];

            console.log('Received filters:', {
                assessment,
                testType,
                domains: domainsArray,
                difficulties: difficultiesArray,
                skills: skillsArray,
                questionCount
            });

            // Search for questions with filters
            const filters = {
                testType,
                domains: domainsArray,
                difficulties: difficultiesArray,
                skills: skillsArray,
                questionCount: Math.min(questionCount, 100),
                excludePrevious,
                excludedQuestionIds
            };

            console.log('Filters object before getFilteredQuestions:', {
                domains: filters.domains,
                domainsIsArray: Array.isArray(filters.domains),
                domainsLength: filters.domains?.length,
                difficulties: filters.difficulties,
                difficultiesIsArray: Array.isArray(filters.difficulties),
                difficultiesLength: filters.difficulties?.length,
                skills: filters.skills,
                skillsIsArray: Array.isArray(filters.skills),
                skillsLength: filters.skills?.length
            });

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
                domains: domainsArray,
                difficulties: difficultiesArray,
                skills: skillsArray,
                questionCount: questions.length,
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
            
            const practiceSet = await db.adapter.get(
                "SELECT * FROM practice_sets WHERE id = ?",
                [practiceSetId]
            );

            if (!practiceSet) {
                return res.status(404).json({ error: 'Practice set not found' });
            }

            // Parse JSON fields
            practiceSet.domains = JSON.parse(practiceSet.domains);
            practiceSet.difficulties = JSON.parse(practiceSet.difficulties);
            practiceSet.skills = JSON.parse(practiceSet.skills);

            // Get questions for this practice set
            const questions = await db.adapter.getAll(`
                SELECT q.*, psq.user_answer, psq.is_correct
                FROM questions q
                JOIN practice_set_questions psq ON q.id = psq.question_id
                WHERE psq.practice_set_id = ?
                ORDER BY psq.id
            `, [practiceSetId]);

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
                const { questionId, userAnswer } = answer;
                
                // Get correct answer
                const question = await db.adapter.get(
                    "SELECT correct_answer FROM questions WHERE id = ?",
                    [questionId]
                );

                const isCorrect = question && userAnswer === question.correct_answer;
                if (isCorrect) correctCount++;

                // Update practice set question
                await db.adapter.execute(`
                    UPDATE practice_set_questions 
                    SET user_answer = ?, is_correct = ?
                    WHERE practice_set_id = ? AND question_id = ?
                `, [userAnswer, isCorrect ? 1 : 0, practiceSetId, questionId]);
            }

            // Calculate score
            const score = totalQuestions > 0 ? (correctCount / totalQuestions) * 100 : 0;

            // Record in practice history
            await db.adapter.execute(`
                INSERT INTO practice_history (
                    user_id, practice_set_id, total_questions, 
                    correct_answers, score, completed_at
                ) VALUES (?, ?, ?, ?, ?, ?)
            `, [userId, practiceSetId, totalQuestions, correctCount, score, new Date().toISOString()]);

            // Mark practice set as completed
            await db.adapter.execute(
                "UPDATE practice_sets SET completed_at = ? WHERE id = ?",
                [new Date().toISOString(), practiceSetId]
            );

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
