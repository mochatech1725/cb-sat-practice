import { readFileSync, existsSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

class MockDataLoader {
    constructor() {
        this.mockDataPath = join(__dirname, 'mock-data.json');
        this.extendedMockDataPath = join(__dirname, 'extended-mock-data.json');
        this.parsedDataPath = join(__dirname, 'parsed', 'parsed-questions.json');
    }

    loadMockData(useExtended = false) {
        try {
            const filePath = useExtended ? this.extendedMockDataPath : this.mockDataPath;
            const rawData = readFileSync(filePath, 'utf8');
            const mockData = JSON.parse(rawData);
            
            console.log(`Loaded mock data from ${useExtended ? 'extended' : 'basic'} dataset`);
            console.log(`- Total questions: ${mockData.questions.length}`);
            console.log(`- Domains: ${mockData.metadata.domains.join(', ')}`);
            console.log(`- Difficulties: ${mockData.metadata.difficulties.join(', ')}`);
            console.log(`- Active questions: ${mockData.metadata.active_questions}`);
            
            return mockData;
        } catch (error) {
            console.error('Error loading mock data:', error);
            throw error;
        }
    }

    loadParsedPDFData() {
        try {
            if (!existsSync(this.parsedDataPath)) {
                console.log('No parsed PDF data found');
                return null;
            }

            const rawData = readFileSync(this.parsedDataPath, 'utf8');
            const parsedData = JSON.parse(rawData);
            
            console.log(`Loaded parsed PDF data`);
            console.log(`- Total questions: ${parsedData.questions.length}`);
            console.log(`- Source: College Board PDFs`);
            
            return parsedData;
        } catch (error) {
            console.error('Error loading parsed PDF data:', error);
            return null;
        }
    }

    loadAllMockData() {
        const allQuestions = [];
        
        // First, try to load parsed PDF data (highest priority)
        const pdfData = this.loadParsedPDFData();
        if (pdfData && pdfData.questions) {
            allQuestions.push(...pdfData.questions);
            console.log(`✓ Loaded ${pdfData.questions.length} questions from parsed PDFs`);
        }
        
        // Then load basic mock data
        try {
            const basicData = this.loadMockData(false);
            allQuestions.push(...basicData.questions);
            console.log(`✓ Loaded ${basicData.questions.length} questions from basic mock data`);
        } catch (error) {
            console.warn('Could not load basic mock data:', error.message);
        }
        
        // Finally load extended mock data
        try {
            const extendedData = this.loadMockData(true);
            allQuestions.push(...extendedData.questions);
            console.log(`✓ Loaded ${extendedData.questions.length} questions from extended mock data`);
        } catch (error) {
            console.warn('Could not load extended mock data:', error.message);
        }
        
        // Remove duplicates based on question_id
        const uniqueQuestions = Array.from(
            new Map(allQuestions.map(q => [q.question_id, q])).values()
        );
        
        // Update metadata
        const combinedMetadata = {
            total_questions: uniqueQuestions.length,
            domains: [...new Set(uniqueQuestions.map(q => q.domain))],
            difficulties: [...new Set(uniqueQuestions.map(q => q.difficulty))],
            test_types: [...new Set(uniqueQuestions.map(q => q.test_type))],
            active_questions: uniqueQuestions.filter(q => q.is_active).length,
            inactive_questions: uniqueQuestions.filter(q => !q.is_active).length,
            last_updated: new Date().toISOString(),
            sources: []
        };
        
        if (pdfData) combinedMetadata.sources.push('College Board PDFs');
        combinedMetadata.sources.push('Mock Data');
        
        console.log(`\n=== Combined Data Summary ===`);
        console.log(`- Total questions: ${combinedMetadata.total_questions}`);
        console.log(`- Active questions: ${combinedMetadata.active_questions}`);
        console.log(`- Inactive questions: ${combinedMetadata.inactive_questions}`);
        console.log(`- Data sources: ${combinedMetadata.sources.join(', ')}`);
        
        return {
            questions: uniqueQuestions,
            metadata: combinedMetadata
        };
    }

    getQuestionsByFilter(filters = {}) {
        const allData = this.loadAllMockData();
        let filteredQuestions = [...allData.questions];

        // Apply filters
        if (filters.testType) {
            filteredQuestions = filteredQuestions.filter(q => q.test_type === filters.testType);
        }

        if (filters.domains && filters.domains.length > 0) {
            filteredQuestions = filteredQuestions.filter(q => filters.domains.includes(q.domain));
        }

        if (filters.difficulties && filters.difficulties.length > 0) {
            filteredQuestions = filteredQuestions.filter(q => filters.difficulties.includes(q.difficulty));
        }

        if (filters.skills && filters.skills.length > 0) {
            filteredQuestions = filteredQuestions.filter(q => filters.skills.includes(q.skill));
        }

        if (filters.excludeActive) {
            filteredQuestions = filteredQuestions.filter(q => !q.is_active);
        }

        if (filters.questionCount && filters.questionCount > 0) {
            // Shuffle and take the requested number
            filteredQuestions = this.shuffleArray(filteredQuestions).slice(0, filters.questionCount);
        }

        console.log(`Filtered questions: ${filteredQuestions.length} found`);
        return filteredQuestions;
    }

    shuffleArray(array) {
        const shuffled = [...array];
        for (let i = shuffled.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
        }
        return shuffled;
    }

    getAvailableOptions() {
        const allData = this.loadAllMockData();
        
        return {
            testTypes: allData.metadata.test_types,
            domains: allData.metadata.domains,
            difficulties: allData.metadata.difficulties,
            skills: [...new Set(allData.questions.map(q => q.skill))].sort()
        };
    }

    // Utility method to generate realistic question IDs
    generateQuestionId(domain, index) {
        const domainPrefix = {
            'Math': 'SAT_MATH',
            'Reading': 'SAT_READING', 
            'Writing and Language': 'SAT_WRITING'
        };
        
        return `${domainPrefix[domain] || 'SAT_OTHER'}_${String(index).padStart(3, '0')}`;
    }

    // Method to validate mock data structure
    validateMockData(data) {
        const requiredFields = ['question_id', 'test_type', 'domain', 'difficulty', 'skill', 'question_text', 'correct_answer'];
        const errors = [];

        data.questions.forEach((question, index) => {
            requiredFields.forEach(field => {
                if (!question[field]) {
                    errors.push(`Question ${index + 1} missing required field: ${field}`);
                }
            });

            // Validate answer choices structure
            if (question.answer_choices && typeof question.answer_choices === 'object') {
                const choices = Object.keys(question.answer_choices);
                if (!choices.includes(question.correct_answer)) {
                    errors.push(`Question ${index + 1}: correct_answer '${question.correct_answer}' not found in answer_choices`);
                }
            }
        });

        if (errors.length > 0) {
            console.warn('Mock data validation errors:', errors);
            return false;
        }

        console.log('Mock data validation passed');
        return true;
    }
}

export default MockDataLoader;

// Example usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const loader = new MockDataLoader();
    
    // Load and display basic mock data
    console.log('\n=== Basic Mock Data ===');
    const basicData = loader.loadMockData(false);
    
    // Load and display combined mock data
    console.log('\n=== Combined Mock Data ===');
    const combinedData = loader.loadAllMockData();
    
    // Get available options
    console.log('\n=== Available Options ===');
    const options = loader.getAvailableOptions();
    console.log('Options:', options);
    
    // Test filtering
    console.log('\n=== Filtered Questions ===');
    const filtered = loader.getQuestionsByFilter({
        testType: 'SAT',
        domains: ['Math'],
        difficulties: ['Medium'],
        questionCount: 3
    });
    
    console.log(`Found ${filtered.length} questions matching filters`);
    filtered.forEach((q, i) => {
        console.log(`${i + 1}. ${q.question_text.substring(0, 50)}...`);
    });
}
