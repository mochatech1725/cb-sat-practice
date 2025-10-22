# Mock Data and PDF Parser

This directory contains tools for loading SAT practice questions from various sources.

## Directory Structure

```
mock/
├── pdfs/                          # Place your College Board PDF files here
├── sql/                           # Generated SQL files (auto-generated)
├── parsed/                        # Parsed questions from PDFs (auto-generated)
├── pdf-parser.js                  # Original PDF parsing utility
├── pdf-parser-improved.js         # ⭐ NEW: Improved parser (supports free response)
├── PDF-PARSER-IMPROVED-GUIDE.md   # Detailed guide for improved parser
├── mock-data.json                 # Basic mock questions
├── extended-mock-data.json        # Extended mock questions
├── mock-loader.js                 # Main data loader
└── README.md                      # This file
```

## ⭐ NEW: Improved PDF Parser

We now have an **improved PDF parser** that correctly handles:
- ✅ **Free response questions** (numeric answers like "403", "-29")
- ✅ **Multiple choice questions** (A-D options)
- ✅ Question ID extraction from PDFs
- ✅ Better rationale/explanation parsing

**See [PDF-PARSER-IMPROVED-GUIDE.md](./PDF-PARSER-IMPROVED-GUIDE.md) for complete documentation.**

### Quick Start with Improved Parser

```bash
cd server/database/mock
node pdf-parser-improved.js
```

This generates output files per PDF:
- `sql/<PDFBasename>.json` - Parsed questions for that PDF
- `sql/<PDFBasename>.sql` - Ready-to-import SQL for that PDF

## Using College Board PDFs

### Step 1: Add Your PDF Files

1. Create the `pdfs` directory if it doesn't exist:
   ```bash
   mkdir -p server/database/mock/pdfs
   ```

2. Place your College Board SAT PDF files in the `pdfs` directory. The PDFs can be:
   - Official SAT practice tests
   - SAT question bank exports
   - Practice question sets from College Board

### Step 2: Parse the PDFs

Run the PDF parser to extract questions:

```bash
cd server/database/mock
node pdf-parser.js
```

This will:
- Scan all PDF files in the `pdfs/` directory
- Extract questions, answer choices, and explanations
- Detect domains (Math, Reading, Writing)
- Detect difficulty levels
- Generate unique question IDs
- Save parsed data to `parsed/parsed-questions.json`

### Step 3: Data Will Be Auto-Loaded

The system automatically loads data in this priority order:

1. **Parsed PDF data** (if available) - Your College Board PDFs
2. **Basic mock data** - Sample questions
3. **Extended mock data** - Additional sample questions

Duplicates are automatically removed based on question IDs.

## PDF Format Requirements

The PDF parser works best when PDFs follow these formats:

### Question Format
```
1. What is 2 + 2?
A) 2
B) 3
C) 4
D) 5

Answer: C

Explanation: 2 + 2 equals 4.
```

### Supported Patterns

The parser recognizes:
- **Question numbers**: `1.`, `2)`, `3.`
- **Answer choices**: `A)`, `B.`, `C)`, `D)`
- **Correct answers**: `Answer: A`, `A is correct`
- **Explanations**: `Explanation:`, `Rationale:`, `Solution:`
- **Domains**: Math, Reading, Writing keywords
- **Difficulty**: Easy, Medium, Hard

## Manual Data Format

If you prefer to create questions manually, use this JSON format:

### Multiple Choice Question:
```json
{
  "questions": [
    {
      "question_id": "SAT_MATH_001",
      "assessment": "SAT",
      "test_type": "Math",
      "domain": "Algebra",
      "difficulty": "Easy",
      "skill": "Linear equations in one variable",
      "question_text": "If 2x + 3 = 7, what is the value of x?",
      "correct_answer": "A",
      "answer_choices": {
        "type": "multiple_choice",
        "choices": {
          "A": "2",
          "B": "3",
          "C": "4",
          "D": "5"
        }
      },
      "answer_analysis": "To solve, subtract 3 from both sides then divide by 2.",
      "explanation": "Basic linear equation solving.",
      "is_active": 0
    }
  ]
}
```

### Free Response Question:
```json
{
  "questions": [
    {
      "question_id": "128c75e2",
      "assessment": "SAT",
      "test_type": "Math",
      "domain": "Advanced Math",
      "difficulty": "Hard",
      "skill": "Nonlinear functions",
      "question_text": "The function g is defined by g(x) = |x|/a - 14, where a < 0. What is the product of g(15a) and g(7a)?",
      "correct_answer": "403",
      "answer_choices": {
        "type": "free_response"
      },
      "answer_analysis": "For a linear equation to have infinitely many solutions...",
      "explanation": "Detailed step-by-step solution.",
      "is_active": 0
    }
  ]
}
```

## Data Fields

### Required Fields
- `question_id`: Unique identifier (e.g., "128c75e2", "SAT_MATH_001")
- `assessment`: "SAT", "PSAT/NMSQT & PSAT 10", "PSAT 8/9"
- `test_type`: "Math", "Reading and Writing"
- `domain`: Specific domain (e.g., "Algebra", "Information and Ideas")
- `difficulty`: "Easy", "Medium", or "Hard"
- `skill`: Specific skill being tested (e.g., "Linear equations in one variable")
- `question_text`: The actual question (preserves formatting)
- `correct_answer`: Answer value (e.g., "A", "403", "-29")
- `answer_choices`: JSON object with question type and choices

### Answer Choices Format

**For Multiple Choice:**
```json
{
  "type": "multiple_choice",
  "choices": {
    "A": "Option A text",
    "B": "Option B text",
    "C": "Option C text",
    "D": "Option D text"
  }
}
```

**For Free Response:**
```json
{
  "type": "free_response"
}
```

### Optional Fields
- `answer_analysis`: Detailed explanation/rationale
- `explanation`: Additional notes
- `is_active`: Whether question is on actual SAT tests (0 or 1)

## Testing the Parser

### Test with a single PDF:
```bash
cd server/database/mock
node pdf-parser.js path/to/test.pdf
```

### View loaded data:
```bash
node mock-loader.js
```

This will display:
- Questions loaded from each source
- Total question count
- Available domains and difficulties
- Duplicate detection results

## Troubleshooting

### No questions extracted from PDF

**Possible causes:**
1. PDF is image-based (scanned) - OCR needed
2. PDF format doesn't match expected patterns
3. PDF is protected/encrypted

**Solutions:**
- Ensure PDFs are text-based (can select text)
- Check if questions follow standard format
- Try exporting PDF to text first

### Incorrect domain/difficulty detection

**Solution:**
- Name your PDF files descriptively: `math-easy.pdf`, `reading-hard.pdf`
- The parser uses filenames as hints for domain detection

### Duplicate questions

**Don't worry:** The system automatically removes duplicates based on question IDs.

### Missing answer choices

**Check:**
- Answer choices are labeled A, B, C, D
- Each choice is on its own line
- Choices come immediately after question text

## Integration with Database

The parsed questions automatically integrate with your database:

1. When the server starts, `Database.init()` runs
2. `MockDataLoader` loads all available data
3. Questions are inserted into the `questions` table
4. Duplicates are skipped (based on `question_id`)

No additional configuration needed!

## Advanced Usage

### Custom parsing rules

Edit `pdf-parser.js` to customize:
- Question number patterns: `questionNumber` regex
- Answer choice patterns: `answerChoice` regex
- Domain detection logic: `detectDomain()` method
- Skill detection logic: `detectSkill()` method

### Export to different formats

```javascript
import CollegeBoardPDFParser from './pdf-parser.js';

const parser = new CollegeBoardPDFParser();
const data = await parser.parseAllPDFsInDirectory();

// Export as needed
parser.exportToJSON(data, 'my-questions.json');
```

### Filter parsed questions

```javascript
import MockDataLoader from './mock-loader.js';

const loader = new MockDataLoader();
const mathQuestions = loader.getQuestionsByFilter({
  domains: ['Math'],
  difficulties: ['Medium', 'Hard'],
  questionCount: 20
});
```

## Production Deployment

For production:

1. Parse all PDFs locally during development
2. Commit the `parsed/parsed-questions.json` file
3. Remove original PDFs (large files) before deployment
4. The system will use the parsed JSON in production

## Questions?

The parser is designed to be flexible and handle various PDF formats. If you encounter issues:

1. Check the console output for error messages
2. Verify your PDF format matches expected patterns
3. Try parsing a small test PDF first
4. Check `parsed/parsed-questions.json` to see what was extracted

## Example Workflow

```bash
# 1. Add your PDFs
cp ~/Downloads/sat-practice-*.pdf server/database/mock/pdfs/

# 2. Parse the PDFs
cd server/database/mock
node pdf-parser.js

# 3. Check the results
cat parsed/parsed-questions.json | jq '.metadata'

# 4. Start your server (questions auto-load)
cd ../../..
npm run dev
```

That's it! Your College Board questions are now in your database.
