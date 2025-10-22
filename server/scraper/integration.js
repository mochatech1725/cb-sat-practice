import SATQuestionBankScraper from './scraper.js';
import Database from '../database/init.js';

class SATQuestionBankIntegration {
    constructor() {
        this.db = new Database();
        this.scraper = new SATQuestionBankScraper();
    }

    async syncQuestions(filters = {}) {
        console.log('Starting question synchronization...');
        
        try {
            // Scrape questions from College Board site
            const scrapeResult = await this.scraper.scrapeQuestions(filters);
            
            console.log(`Scraped ${scrapeResult.questions.length} questions`);
            
            // Process and save questions to database
            let savedCount = 0;
            let skippedCount = 0;
            
            for (const question of scrapeResult.questions) {
                try {
                    const saved = await this.saveQuestion(question);
                    if (saved) {
                        savedCount++;
                    } else {
                        skippedCount++;
                    }
                } catch (error) {
                    console.error(`Error saving question ${question.question_id}:`, error);
                    skippedCount++;
                }
            }
            
            console.log(`Sync completed: ${savedCount} saved, ${skippedCount} skipped`);
            
            return {
                totalScraped: scrapeResult.questions.length,
                saved: savedCount,
                skipped: skippedCount,
                availableOptions: scrapeResult.availableOptions
            };
            
        } catch (error) {
            console.error('Sync failed:', error);
            throw error;
        }
    }

    async saveQuestion(questionData) {
        try {
            // Check if question already exists
            const existingQuestion = await this.db.adapter.get(
                'SELECT id FROM questions WHERE question_id = ?',
                [questionData.question_id]
            );
            
            if (existingQuestion) {
                console.log(`Question ${questionData.question_id} already exists, skipping`);
                return false;
            }
            
            // Insert new question
            const result = await this.db.adapter.execute(`
                INSERT INTO questions (
                    question_id, test_type, domain, difficulty, skill,
                    question_text, question_type, correct_answer, explanation, is_active
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            `, [
                questionData.question_id,
                questionData.test_type || 'SAT',
                questionData.domain || 'Unknown',
                questionData.difficulty || 'Unknown',
                questionData.skill || 'Unknown',
                questionData.question_text,
                questionData.question_type || 'Multiple Choice',
                questionData.correct_answer || '',
                questionData.explanation || '',
                questionData.is_active || 0
            ]);
            
            if (result) {
                console.log(`Saved question ${questionData.question_id}`);
                return true;
            }
            return false;
        } catch (error) {
            console.error(`Error saving question ${questionData.question_id}:`, error);
            throw error;
        }
    }

    async getAvailableOptions() {
        try {
            const result = await this.scraper.scrapeQuestions({});
            return result.availableOptions;
        } catch (error) {
            console.error('Error getting available options:', error);
            throw error;
        }
    }

    async updateFilterOptions() {
        console.log('Updating filter options from College Board...');
        
        try {
            const options = await this.getAvailableOptions();
            
            // Update the database with fresh filter options
            // This could be used to update the filter dropdowns in the frontend
            return options;
            
        } catch (error) {
            console.error('Error updating filter options:', error);
            throw error;
        }
    }

    async bulkImportQuestions(questionCount = 100, filters = {}) {
        console.log(`Starting bulk import of ${questionCount} questions...`);
        
        try {
            let totalImported = 0;
            let batchSize = 20; // Process in batches to avoid overwhelming the site
            let currentBatch = 0;
            
            while (totalImported < questionCount) {
                const remainingQuestions = questionCount - totalImported;
                const currentBatchSize = Math.min(batchSize, remainingQuestions);
                
                console.log(`Processing batch ${currentBatch + 1} (${currentBatchSize} questions)...`);
                
                const batchFilters = {
                    ...filters,
                    questionCount: currentBatchSize
                };
                
                const result = await this.syncQuestions(batchFilters);
                totalImported += result.saved;
                
                console.log(`Batch ${currentBatch + 1} completed: ${result.saved} questions imported`);
                
                // Wait between batches to be respectful to the server
                if (totalImported < questionCount) {
                    console.log('Waiting 5 seconds before next batch...');
                    await new Promise(resolve => setTimeout(resolve, 5000));
                }
                
                currentBatch++;
            }
            
            console.log(`Bulk import completed: ${totalImported} questions imported`);
            return totalImported;
            
        } catch (error) {
            console.error('Bulk import failed:', error);
            throw error;
        }
    }

    async close() {
        if (this.scraper) {
            await this.scraper.close();
        }
        if (this.db) {
            this.db.close();
        }
    }
}

export default SATQuestionBankIntegration;

// CLI usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const integration = new SATQuestionBankIntegration();
    
    const command = process.argv[2];
    const args = process.argv.slice(3);
    
    async function runCommand() {
        try {
            switch (command) {
                case 'sync':
                    const filters = args.length > 0 ? JSON.parse(args[0]) : {};
                    const result = await integration.syncQuestions(filters);
                    console.log('Sync result:', result);
                    break;
                    
                case 'bulk':
                    const count = parseInt(args[0]) || 100;
                    const bulkFilters = args.length > 1 ? JSON.parse(args[1]) : {};
                    const imported = await integration.bulkImportQuestions(count, bulkFilters);
                    console.log(`Bulk import completed: ${imported} questions`);
                    break;
                    
                case 'options':
                    const options = await integration.getAvailableOptions();
                    console.log('Available options:', options);
                    break;
                    
                default:
                    console.log('Usage:');
                    console.log('  node integration.js sync [filters]     - Sync questions with optional filters');
                    console.log('  node integration.js bulk [count] [filters] - Bulk import questions');
                    console.log('  node integration.js options           - Get available filter options');
                    break;
            }
        } catch (error) {
            console.error('Command failed:', error);
            process.exit(1);
        } finally {
            await integration.close();
        }
    }
    
    runCommand();
}
