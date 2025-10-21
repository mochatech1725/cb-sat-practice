import puppeteer from 'puppeteer';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

class SATQuestionBankScraper {
    constructor() {
        this.browser = null;
        this.page = null;
        this.baseUrl = 'https://satsuitequestionbank.collegeboard.org';
        this.searchUrl = `${this.baseUrl}/digital/search`;
    }

    async init() {
        console.log('Initializing browser...');
        this.browser = await puppeteer.launch({
            headless: false, // Set to true for production
            defaultViewport: { width: 1280, height: 720 },
            args: ['--no-sandbox', '--disable-setuid-sandbox']
        });
        
        this.page = await this.browser.newPage();
        
        // Set user agent to avoid detection
        await this.page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
        
        // Enable request interception to monitor network requests
        await this.page.setRequestInterception(true);
        
        this.page.on('request', (request) => {
            // Block unnecessary resources to speed up loading
            if (['image', 'stylesheet', 'font', 'media'].includes(request.resourceType())) {
                request.abort();
            } else {
                request.continue();
            }
        });
    }

    async navigateToSearchPage() {
        console.log('Navigating to SAT Question Bank search page...');
        await this.page.goto(this.searchUrl, { 
            waitUntil: 'networkidle2',
            timeout: 30000 
        });
        
        // Wait for the page to fully load
        await this.page.waitForTimeout(3000);
        
        console.log('Page loaded successfully');
    }

    async getAvailableOptions() {
        console.log('Extracting available filter options...');
        
        // Wait for dropdowns and checkboxes to be rendered
        await this.page.waitForSelector('select, [role="combobox"], .dropdown', { timeout: 10000 });
        
        const options = {
            testTypes: [],
            domains: [],
            difficulties: [],
            skills: []
        };

        try {
            // Extract test types from dropdown
            const testTypeOptions = await this.page.evaluate(() => {
                const testSelect = document.querySelector('select[name*="test"], select[id*="test"], [data-testid*="test"]');
                if (testSelect) {
                    return Array.from(testSelect.options).map(option => ({
                        value: option.value,
                        text: option.textContent.trim()
                    })).filter(option => option.value && option.text);
                }
                return [];
            });

            options.testTypes = testTypeOptions;

            // Extract domains from checkboxes or dropdowns
            const domainOptions = await this.page.evaluate(() => {
                const domainElements = document.querySelectorAll('input[name*="domain"], input[id*="domain"], [data-testid*="domain"]');
                const domains = [];
                
                domainElements.forEach(element => {
                    if (element.type === 'checkbox' || element.type === 'radio') {
                        const label = element.closest('label') || element.parentElement?.querySelector('label');
                        if (label) {
                            domains.push({
                                value: element.value || element.id,
                                text: label.textContent.trim()
                            });
                        }
                    }
                });
                
                return domains;
            });

            options.domains = domainOptions;

            // Extract difficulties
            const difficultyOptions = await this.page.evaluate(() => {
                const difficultyElements = document.querySelectorAll('input[name*="difficulty"], input[id*="difficulty"], [data-testid*="difficulty"]');
                const difficulties = [];
                
                difficultyElements.forEach(element => {
                    if (element.type === 'checkbox' || element.type === 'radio') {
                        const label = element.closest('label') || element.parentElement?.querySelector('label');
                        if (label) {
                            difficulties.push({
                                value: element.value || element.id,
                                text: label.textContent.trim()
                            });
                        }
                    }
                });
                
                return difficulties;
            });

            options.difficulties = difficultyOptions;

            // Extract skills
            const skillOptions = await this.page.evaluate(() => {
                const skillElements = document.querySelectorAll('input[name*="skill"], input[id*="skill"], [data-testid*="skill"]');
                const skills = [];
                
                skillElements.forEach(element => {
                    if (element.type === 'checkbox' || element.type === 'radio') {
                        const label = element.closest('label') || element.parentElement?.querySelector('label');
                        if (label) {
                            skills.push({
                                value: element.value || element.id,
                                text: label.textContent.trim()
                            });
                        }
                    }
                });
                
                return skills;
            });

            options.skills = skillOptions;

            console.log('Extracted options:', options);
            return options;

        } catch (error) {
            console.error('Error extracting options:', error);
            return options;
        }
    }

    async selectFilters(filters) {
        console.log('Applying filters:', filters);

        try {
            // Select test type
            if (filters.testType) {
                await this.selectTestType(filters.testType);
            }

            // Select domains
            if (filters.domains && filters.domains.length > 0) {
                await this.selectDomains(filters.domains);
            }

            // Select difficulties
            if (filters.difficulties && filters.difficulties.length > 0) {
                await this.selectDifficulties(filters.difficulties);
            }

            // Select skills
            if (filters.skills && filters.skills.length > 0) {
                await this.selectSkills(filters.skills);
            }

            // Apply other filters
            if (filters.excludeActive !== undefined) {
                await this.setExcludeActive(filters.excludeActive);
            }

            console.log('Filters applied successfully');

        } catch (error) {
            console.error('Error applying filters:', error);
            throw error;
        }
    }

    async selectTestType(testType) {
        console.log(`Selecting test type: ${testType}`);
        
        await this.page.evaluate((testTypeValue) => {
            const select = document.querySelector('select[name*="test"], select[id*="test"], [data-testid*="test"]');
            if (select) {
                select.value = testTypeValue;
                select.dispatchEvent(new Event('change', { bubbles: true }));
            }
        }, testType);

        await this.page.waitForTimeout(1000);
    }

    async selectDomains(domains) {
        console.log(`Selecting domains: ${domains.join(', ')}`);
        
        for (const domain of domains) {
            await this.page.evaluate((domainValue) => {
                const checkbox = document.querySelector(`input[name*="domain"][value="${domainValue}"], input[id*="domain"][value="${domainValue}"]`);
                if (checkbox && !checkbox.checked) {
                    checkbox.click();
                    checkbox.dispatchEvent(new Event('change', { bubbles: true }));
                }
            }, domain);
            
            await this.page.waitForTimeout(500);
        }
    }

    async selectDifficulties(difficulties) {
        console.log(`Selecting difficulties: ${difficulties.join(', ')}`);
        
        for (const difficulty of difficulties) {
            await this.page.evaluate((difficultyValue) => {
                const checkbox = document.querySelector(`input[name*="difficulty"][value="${difficultyValue}"], input[id*="difficulty"][value="${difficultyValue}"]`);
                if (checkbox && !checkbox.checked) {
                    checkbox.click();
                    checkbox.dispatchEvent(new Event('change', { bubbles: true }));
                }
            }, difficulty);
            
            await this.page.waitForTimeout(500);
        }
    }

    async selectSkills(skills) {
        console.log(`Selecting skills: ${skills.join(', ')}`);
        
        for (const skill of skills) {
            await this.page.evaluate((skillValue) => {
                const checkbox = document.querySelector(`input[name*="skill"][value="${skillValue}"], input[id*="skill"][value="${skillValue}"]`);
                if (checkbox && !checkbox.checked) {
                    checkbox.click();
                    checkbox.dispatchEvent(new Event('change', { bubbles: true }));
                }
            }, skill);
            
            await this.page.waitForTimeout(500);
        }
    }

    async setExcludeActive(excludeActive) {
        console.log(`Setting exclude active: ${excludeActive}`);
        
        await this.page.evaluate((exclude) => {
            const checkbox = document.querySelector('input[name*="exclude"], input[id*="exclude"], input[name*="active"], input[id*="active"]');
            if (checkbox) {
                if (checkbox.checked !== exclude) {
                    checkbox.click();
                    checkbox.dispatchEvent(new Event('change', { bubbles: true }));
                }
            }
        }, excludeActive);

        await this.page.waitForTimeout(500);
    }

    async searchQuestions() {
        console.log('Searching for questions...');
        
        // Find and click the search button
        await this.page.evaluate(() => {
            const searchButton = document.querySelector('button[type="submit"], input[type="submit"], button:contains("Search"), button:contains("Find")');
            if (searchButton) {
                searchButton.click();
            } else {
                // Try to find any button that might trigger search
                const buttons = document.querySelectorAll('button');
                for (const button of buttons) {
                    if (button.textContent.toLowerCase().includes('search') || 
                        button.textContent.toLowerCase().includes('find') ||
                        button.textContent.toLowerCase().includes('submit')) {
                        button.click();
                        break;
                    }
                }
            }
        });

        // Wait for results to load
        await this.page.waitForTimeout(3000);
        
        console.log('Search completed');
    }

    async extractQuestions() {
        console.log('Extracting question data...');
        
        const questions = await this.page.evaluate(() => {
            const questionElements = document.querySelectorAll('.question, [data-testid*="question"], .question-item');
            const extractedQuestions = [];
            
            questionElements.forEach((element, index) => {
                try {
                    const questionText = element.querySelector('.question-text, .question-content, p')?.textContent?.trim();
                    const questionId = element.querySelector('.question-id, .id')?.textContent?.trim() || `q_${index}`;
                    const domain = element.querySelector('.domain, .subject')?.textContent?.trim();
                    const difficulty = element.querySelector('.difficulty, .level')?.textContent?.trim();
                    const skill = element.querySelector('.skill, .topic')?.textContent?.trim();
                    
                    if (questionText) {
                        extractedQuestions.push({
                            question_id: questionId,
                            question_text: questionText,
                            domain: domain || 'Unknown',
                            difficulty: difficulty || 'Unknown',
                            skill: skill || 'Unknown',
                            raw_html: element.outerHTML
                        });
                    }
                } catch (error) {
                    console.error('Error extracting question:', error);
                }
            });
            
            return extractedQuestions;
        });

        console.log(`Extracted ${questions.length} questions`);
        return questions;
    }

    async takeScreenshot(filename = 'screenshot.png') {
        const screenshotPath = path.join(__dirname, 'screenshots', filename);
        await fs.promises.mkdir(path.dirname(screenshotPath), { recursive: true });
        await this.page.screenshot({ path: screenshotPath, fullPage: true });
        console.log(`Screenshot saved: ${screenshotPath}`);
    }

    async getPageHTML() {
        return await this.page.content();
    }

    async savePageHTML(filename = 'page.html') {
        const htmlPath = path.join(__dirname, 'html', filename);
        await fs.promises.mkdir(path.dirname(htmlPath), { recursive: true });
        const html = await this.getPageHTML();
        await fs.promises.writeFile(htmlPath, html);
        console.log(`HTML saved: ${htmlPath}`);
    }

    async close() {
        if (this.browser) {
            await this.browser.close();
            console.log('Browser closed');
        }
    }

    // Main scraping method
    async scrapeQuestions(filters = {}) {
        try {
            await this.init();
            await this.navigateToSearchPage();
            
            // Take initial screenshot
            await this.takeScreenshot('initial_page.png');
            
            // Get available options
            const availableOptions = await this.getAvailableOptions();
            
            // Save page HTML for analysis
            await this.savePageHTML('search_page.html');
            
            // Apply filters if provided
            if (Object.keys(filters).length > 0) {
                await this.selectFilters(filters);
                await this.takeScreenshot('after_filters.png');
            }
            
            // Search for questions
            await this.searchQuestions();
            await this.takeScreenshot('search_results.png');
            
            // Extract questions
            const questions = await this.extractQuestions();
            
            return {
                availableOptions,
                questions,
                filters
            };

        } catch (error) {
            console.error('Scraping error:', error);
            await this.takeScreenshot('error_screenshot.png');
            throw error;
        } finally {
            await this.close();
        }
    }
}

export default SATQuestionBankScraper;

// Example usage
if (import.meta.url === `file://${process.argv[1]}`) {
    const scraper = new SATQuestionBankScraper();
    
    const filters = {
        testType: 'SAT',
        domains: ['Math'],
        difficulties: ['Medium'],
        skills: ['Algebra'],
        excludeActive: true
    };
    
    scraper.scrapeQuestions(filters)
        .then(result => {
            console.log('Scraping completed successfully!');
            console.log('Available options:', result.availableOptions);
            console.log('Questions found:', result.questions.length);
            
            // Save results to JSON file
            const resultsPath = path.join(__dirname, 'results', 'scraped_questions.json');
            fs.promises.mkdir(path.dirname(resultsPath), { recursive: true });
            fs.promises.writeFile(resultsPath, JSON.stringify(result, null, 2));
            console.log(`Results saved to: ${resultsPath}`);
        })
        .catch(error => {
            console.error('Scraping failed:', error);
            process.exit(1);
        });
}
