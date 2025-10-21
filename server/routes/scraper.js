import express from 'express';
import SATQuestionBankIntegration from '../scraper/integration.js';

export default function scraperRoutes(db) {
    const router = express.Router();

    // Initialize scraper integration
    let scraperIntegration = null;

    const getScraperIntegration = () => {
        if (!scraperIntegration) {
            scraperIntegration = new SATQuestionBankIntegration();
        }
        return scraperIntegration;
    };

    // Get available options from College Board site
    router.get('/options', async (req, res) => {
        try {
            const integration = getScraperIntegration();
            const options = await integration.getAvailableOptions();
            
            res.json({
                success: true,
                options,
                message: 'Filter options retrieved from College Board'
            });
        } catch (error) {
            console.error('Error getting options:', error);
            res.status(500).json({
                success: false,
                error: 'Failed to retrieve options from College Board',
                details: error.message
            });
        }
    });

    // Sync questions from College Board
    router.post('/sync', async (req, res) => {
        try {
            const { filters = {} } = req.body;
            
            const integration = getScraperIntegration();
            const result = await integration.syncQuestions(filters);
            
            res.json({
                success: true,
                result,
                message: `Successfully synced ${result.saved} questions`
            });
        } catch (error) {
            console.error('Error syncing questions:', error);
            res.status(500).json({
                success: false,
                error: 'Failed to sync questions from College Board',
                details: error.message
            });
        }
    });

    // Bulk import questions
    router.post('/bulk-import', async (req, res) => {
        try {
            const { questionCount = 100, filters = {} } = req.body;
            
            if (questionCount > 500) {
                return res.status(400).json({
                    success: false,
                    error: 'Maximum 500 questions per bulk import to avoid overwhelming the server'
                });
            }
            
            const integration = getScraperIntegration();
            
            // Start bulk import in background
            integration.bulkImportQuestions(questionCount, filters)
                .then(importedCount => {
                    console.log(`Bulk import completed: ${importedCount} questions imported`);
                })
                .catch(error => {
                    console.error('Bulk import failed:', error);
                });
            
            res.json({
                success: true,
                message: `Bulk import started for ${questionCount} questions`,
                note: 'Import is running in the background. Check logs for progress.'
            });
        } catch (error) {
            console.error('Error starting bulk import:', error);
            res.status(500).json({
                success: false,
                error: 'Failed to start bulk import',
                details: error.message
            });
        }
    });

    // Test scraper connection
    router.get('/test', async (req, res) => {
        try {
            const integration = getScraperIntegration();
            
            // Just try to get options to test the connection
            const options = await integration.getAvailableOptions();
            
            res.json({
                success: true,
                message: 'Scraper connection test successful',
                availableOptions: Object.keys(options).length
            });
        } catch (error) {
            console.error('Scraper test failed:', error);
            res.status(500).json({
                success: false,
                error: 'Scraper connection test failed',
                details: error.message
            });
        }
    });

    // Get scraper status and statistics
    router.get('/status', async (req, res) => {
        try {
            // Get question count from database
            const questionCount = await new Promise((resolve, reject) => {
                db.db.get('SELECT COUNT(*) as count FROM questions', (err, row) => {
                    if (err) reject(err);
                    else resolve(row.count);
                });
            });

            // Get recent sync activity
            const recentSyncs = await new Promise((resolve, reject) => {
                db.db.all(`
                    SELECT COUNT(*) as count, MAX(created_at) as last_sync 
                    FROM questions 
                    WHERE created_at > datetime('now', '-7 days')
                `, (err, rows) => {
                    if (err) reject(err);
                    else resolve(rows[0]);
                });
            });

            res.json({
                success: true,
                status: {
                    totalQuestions: questionCount,
                    questionsLastWeek: recentSyncs.count,
                    lastSync: recentSyncs.last_sync,
                    scraperAvailable: true
                }
            });
        } catch (error) {
            console.error('Error getting scraper status:', error);
            res.status(500).json({
                success: false,
                error: 'Failed to get scraper status',
                details: error.message
            });
        }
    });

    // Cleanup scraper resources
    router.post('/cleanup', async (req, res) => {
        try {
            if (scraperIntegration) {
                await scraperIntegration.close();
                scraperIntegration = null;
            }
            
            res.json({
                success: true,
                message: 'Scraper resources cleaned up'
            });
        } catch (error) {
            console.error('Error cleaning up scraper:', error);
            res.status(500).json({
                success: false,
                error: 'Failed to cleanup scraper resources',
                details: error.message
            });
        }
    });

    // Graceful shutdown
    process.on('SIGINT', async () => {
        if (scraperIntegration) {
            await scraperIntegration.close();
        }
    });

    return router;
}
