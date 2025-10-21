import SATQuestionBankScraper from './scraper.js';

async function testScraper() {
    console.log('Testing SAT Question Bank Scraper...');
    
    const scraper = new SATQuestionBankScraper();
    
    try {
        // Test 1: Just get available options without filters
        console.log('\n=== Test 1: Getting Available Options ===');
        const result1 = await scraper.scrapeQuestions({});
        console.log('Available Test Types:', result1.availableOptions.testTypes);
        console.log('Available Domains:', result1.availableOptions.domains);
        console.log('Available Difficulties:', result1.availableOptions.difficulties);
        console.log('Available Skills:', result1.availableOptions.skills);
        
        // Test 2: Apply specific filters and scrape questions
        console.log('\n=== Test 2: Scraping with Filters ===');
        const filters = {
            testType: 'SAT',
            domains: ['Math'],
            difficulties: ['Easy', 'Medium'],
            skills: ['Algebra'],
            excludeActive: true
        };
        
        const result2 = await scraper.scrapeQuestions(filters);
        console.log(`Found ${result2.questions.length} questions with filters`);
        
        // Display first few questions
        result2.questions.slice(0, 3).forEach((question, index) => {
            console.log(`\nQuestion ${index + 1}:`);
            console.log(`ID: ${question.question_id}`);
            console.log(`Text: ${question.question_text.substring(0, 100)}...`);
            console.log(`Domain: ${question.domain}`);
            console.log(`Difficulty: ${question.difficulty}`);
            console.log(`Skill: ${question.skill}`);
        });
        
        console.log('\n=== Test Completed Successfully ===');
        
    } catch (error) {
        console.error('Test failed:', error);
        process.exit(1);
    }
}

// Run the test
testScraper();
