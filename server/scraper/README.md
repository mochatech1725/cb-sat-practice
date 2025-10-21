# College Board SAT Question Bank Scraper

This module provides automated interaction with the College Board SAT Question Bank website to extract questions and filter options for the SAT Practice Set Generator.

## Features

- **Automated Browser Control**: Uses Puppeteer to control a real browser for dynamic content interaction
- **Filter Selection**: Automatically selects dropdowns and checkboxes based on criteria
- **Question Extraction**: Extracts question data including text, metadata, and answers
- **Database Integration**: Saves extracted questions directly to the application database
- **Batch Processing**: Supports bulk import of multiple questions
- **Error Handling**: Comprehensive error handling with screenshots for debugging

## How It Works

### 1. Browser Automation
The scraper uses Puppeteer to:
- Launch a headless Chrome browser
- Navigate to the College Board Question Bank search page
- Wait for dynamic content to load
- Interact with dropdowns and checkboxes

### 2. Filter Selection Process
The scraper can automatically:
- Select test types from dropdown menus
- Check/uncheck domain checkboxes (Math, Reading, Writing)
- Select difficulty levels
- Choose specific skills
- Set exclusion options (exclude active questions)

### 3. Question Extraction
After applying filters and searching, the scraper:
- Locates question elements on the page
- Extracts question text, IDs, and metadata
- Saves raw HTML for debugging
- Processes and normalizes the data

### 4. Database Integration
Extracted questions are:
- Validated for completeness
- Checked for duplicates
- Saved to the SQLite database
- Linked to practice sets

## Usage

### Command Line Interface

```bash
# Navigate to scraper directory
cd server/scraper

# Install dependencies
npm install

# Test the scraper
npm run test

# Run basic scraping
npm run scrape

# Use integration module
node integration.js sync
node integration.js bulk 100
node integration.js options
```

### API Integration

The scraper is integrated into the main application via REST API endpoints:

```bash
# Test connection
GET /api/scraper/test

# Get available filter options
GET /api/scraper/options

# Sync questions with filters
POST /api/scraper/sync
{
  "filters": {
    "testType": "SAT",
    "domains": ["Math"],
    "difficulties": ["Medium"],
    "skills": ["Algebra"],
    "excludeActive": true
  }
}

# Bulk import questions
POST /api/scraper/bulk-import
{
  "questionCount": 100,
  "filters": {
    "testType": "SAT"
  }
}

# Get scraper status
GET /api/scraper/status

# Cleanup resources
POST /api/scraper/cleanup
```

### Frontend Integration

The scraper can be managed through the web interface:
1. Navigate to `/scraper` in the application
2. Use the Scraper Manager component to:
   - Test connection to College Board
   - Get available filter options
   - Sync questions with specific filters
   - Perform bulk imports
   - Monitor sync status

## Configuration

### Environment Variables

Create a `.env` file in the server directory:

```env
# Scraper Configuration
SCRAPER_HEADLESS=true
SCRAPER_TIMEOUT=30000
SCRAPER_BATCH_SIZE=20
SCRAPER_DELAY_BETWEEN_BATCHES=5000

# Rate Limiting
SCRAPER_MAX_QUESTIONS_PER_SESSION=500
SCRAPER_REQUEST_DELAY=1000
```

### Scraper Options

```javascript
const scraper = new SATQuestionBankScraper({
  headless: true,           // Run browser in headless mode
  timeout: 30000,          // Page load timeout
  batchSize: 20,           // Questions per batch
  delayBetweenBatches: 5000 // Delay between batches (ms)
});
```

## Selector Strategy

The scraper uses multiple strategies to locate elements:

### Dropdown Selection
```javascript
// Primary selectors for test type dropdown
const selectors = [
  'select[name*="test"]',
  'select[id*="test"]',
  '[data-testid*="test"]'
];
```

### Checkbox Selection
```javascript
// Primary selectors for domain/difficulty/skill checkboxes
const selectors = [
  'input[name*="domain"]',
  'input[id*="domain"]',
  '[data-testid*="domain"]'
];
```

### Question Extraction
```javascript
// Primary selectors for question elements
const selectors = [
  '.question',
  '[data-testid*="question"]',
  '.question-item'
];
```

## Error Handling

The scraper includes comprehensive error handling:

### Screenshots
- Takes screenshots at each major step
- Saves error screenshots for debugging
- Stores screenshots in `screenshots/` directory

### Logging
- Detailed console logging for each operation
- Error tracking with stack traces
- Performance monitoring

### Fallback Strategies
- Multiple selector strategies for robustness
- Retry logic for failed operations
- Graceful degradation when elements not found

## Debugging

### Screenshots
Screenshots are automatically saved:
- `initial_page.png` - Page after initial load
- `after_filters.png` - Page after applying filters
- `search_results.png` - Page with search results
- `error_screenshot.png` - Screenshot when errors occur

### HTML Dumps
Raw HTML is saved for analysis:
- `search_page.html` - Initial search page HTML
- `results_page.html` - Search results page HTML

### Log Files
Detailed logs are written to console with:
- Timestamp for each operation
- Element selection attempts
- Error details and stack traces
- Performance metrics

## Best Practices

### Rate Limiting
- Respect server resources with delays between requests
- Limit batch sizes to avoid overwhelming the site
- Implement exponential backoff for retries

### Data Quality
- Validate extracted data before saving
- Check for duplicates using question IDs
- Normalize text content and metadata

### Resource Management
- Clean up browser instances after use
- Close database connections properly
- Handle memory leaks in long-running processes

## Troubleshooting

### Common Issues

1. **Elements Not Found**
   - Check if selectors need updating
   - Verify page has fully loaded
   - Look at screenshots for visual debugging

2. **Connection Timeouts**
   - Increase timeout values
   - Check network connectivity
   - Verify College Board site is accessible

3. **JavaScript Errors**
   - Update Puppeteer version
   - Check browser compatibility
   - Review console logs for specific errors

### Debug Mode

Run with debug logging:
```bash
DEBUG=scraper:* node scraper.js
```

### Manual Testing

Run in non-headless mode to see browser actions:
```javascript
const scraper = new SATQuestionBankScraper();
await scraper.init();
// Browser window will be visible for debugging
```

## Legal and Ethical Considerations

### Terms of Service
- Review College Board's terms of service
- Respect rate limiting and usage policies
- Use data only for educational purposes

### Data Usage
- Only extract publicly available questions
- Don't redistribute copyrighted content
- Respect intellectual property rights

### Rate Limiting
- Implement reasonable delays between requests
- Don't overwhelm the College Board servers
- Monitor usage to stay within acceptable limits

## Future Enhancements

### Planned Features
- Support for additional question types
- Enhanced metadata extraction
- Improved error recovery
- Better performance monitoring

### API Integration
- Direct API access if available from College Board
- OAuth authentication for authorized access
- Real-time sync capabilities

## Contributing

When contributing to the scraper:

1. Test changes thoroughly with different filter combinations
2. Update selectors if College Board changes their HTML structure
3. Add appropriate error handling for new features
4. Update documentation for any new capabilities
5. Ensure compliance with College Board's terms of service
