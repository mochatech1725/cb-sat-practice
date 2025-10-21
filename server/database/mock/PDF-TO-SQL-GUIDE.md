# College Board PDF to SQL Converter

This tool converts College Board PDF files into SQL INSERT statements to populate your questions table.

## How to Use

### Step 1: Place your PDF in the pdfs directory

```bash
mkdir -p server/database/mock/pdfs
cp ~/Downloads/collegeboard-questions.pdf server/database/mock/pdfs/
```

### Step 2: Run the converter

```bash
cd server/database/mock
node collegeboard-pdf-to-sql.js pdfs/collegeboard-questions.pdf
```

### Step 3: Review the generated SQL

The tool creates two files in `server/database/mock/sql/`:
- `questions_import.sql` - SQL INSERT statements
- `questions_import.json` - JSON format for reference

### Step 4: Import into database

```bash
# From the server directory
sqlite3 database/sat_practice.db < database/mock/sql/questions_import.sql
```

Or the SQL will be automatically loaded when the server starts if you place it in the right location.

## PDF Format Requirements

The parser recognizes these College Board PDF patterns:

### Assessment/Test Type
```
Assessment: SAT
```
Maps to → `test_type` field

### Question ID
```
ID: 12345
```
Maps to → `question_id` field

### Difficulty
The parser recognizes:
- Text: `Difficulty: Easy`, `Difficulty: Medium`, `Difficulty: Hard`
- Visual indicators: ● (1 box = Easy, 2 boxes = Medium, 3 boxes = Hard)

Maps to → `difficulty` field

### Question Text
Everything between the ID and answer choices is treated as question text.

### Answer Choices
```
A) First choice
B) Second choice
C) Third choice
D) Fourth choice
```
Maps to → `answer_choices` field (JSON)

### Correct Answer
```
ID: 12345 Answer A
```
or
```
Answer: A
```
Maps to → `correct_answer` field

### Rationale/Explanation
```
Rationale: This is the explanation for why A is correct...
```
Maps to → `answer_analysis` and `explanation` fields

### Optional Fields
If present in the PDF:
- `Domain:` → domain field
- `Skill:` or `Content:` → skill field
- `Subject:` → domain field

## Field Mapping Summary

| PDF Field | Database Field | Notes |
|-----------|---------------|-------|
| Assessment | test_type | SAT, PSAT, etc. |
| ID | question_id | Unique identifier |
| Difficulty (●●●) | difficulty | Easy/Medium/Hard |
| Question text | question_text | Full question |
| A) B) C) D) | answer_choices | JSON object |
| Answer | correct_answer | A, B, C, or D |
| Rationale | answer_analysis | Explanation |
| Domain | domain | Math, Reading, Writing |
| Skill | skill | Specific skill |

## Auto-Detection

If fields are missing, the parser automatically infers:

### Domain Detection
- Math: Keywords like equation, algebra, geometry, calculate
- Reading: Keywords like passage, author, main idea
- Writing: Keywords like grammar, punctuation, sentence

### Skill Detection
Based on question content:
- Math: Linear Equations, Quadratic Equations, Probability, etc.
- Reading: Main Idea, Inference, Author's Purpose, etc.
- Writing: Subject-Verb Agreement, Pronoun Reference, etc.

### Subdomain Detection
- Math: Algebra, Geometry, Functions, Data Analysis
- Reading: Literature, Science, History
- Writing: Grammar, Style, Organization

## Example Output

### SQL Format
```sql
-- Question 1: 12345
INSERT INTO questions (
    question_id, test_type, domain, subdomain, difficulty,
    skill, question_text, correct_answer,
    answer_choices, answer_analysis, explanation, is_active
) VALUES (
    '12345',
    'SAT',
    'Math',
    'Algebra',
    'Medium',
    'Linear Equations',
    'If 2x + 3 = 7, what is the value of x?',
    'A',
    '{"A":"2","B":"3","C":"4","D":"5"}',
    'Subtract 3 from both sides to get 2x = 4, then divide by 2 to get x = 2.',
    'Subtract 3 from both sides to get 2x = 4, then divide by 2 to get x = 2.',
    0
);
```

### JSON Format
```json
{
  "questions": [
    {
      "question_id": "12345",
      "test_type": "SAT",
      "domain": "Math",
      "subdomain": "Algebra",
      "difficulty": "Medium",
      "skill": "Linear Equations",
      "question_text": "If 2x + 3 = 7, what is the value of x?",
      "correct_answer": "A",
      "answer_choices": {
        "A": "2",
        "B": "3",
        "C": "4",
        "D": "5"
      },
      "answer_analysis": "Subtract 3 from both sides...",
      "explanation": "Subtract 3 from both sides...",
      "is_active": 0
    }
  ],
  "metadata": {
    "total_questions": 1,
    "domains": ["Math"],
    "difficulties": ["Medium"],
    "test_types": ["SAT"]
  }
}
```

## Troubleshooting

### No questions extracted
**Check:**
- PDF is text-based (not scanned image)
- PDF contains ID: fields
- Question format matches expected pattern

### Wrong difficulty detected
**Manual override:**
Edit the generated SQL before importing, or ensure PDF has clear difficulty indicators.

### Missing domain/skill
**Don't worry:** The parser will infer these from question content. You can also edit the SQL after generation.

### Duplicate question IDs
**Solution:** The database schema has a UNIQUE constraint on question_id, so duplicates will be skipped automatically.

## Advanced Usage

### Process multiple PDFs
```bash
for pdf in pdfs/*.pdf; do
  node collegeboard-pdf-to-sql.js "$pdf"
done
```

### Combine multiple SQL files
```bash
cat sql/questions_import_*.sql > sql/all_questions.sql
```

### Import to different database
```bash
# PostgreSQL
psql -d your_database -f sql/questions_import.sql

# MySQL
mysql your_database < sql/questions_import.sql
```

## Tips

1. **Name PDFs descriptively**: `sat-math-medium.pdf`, `sat-reading-hard.pdf`
2. **Review generated SQL**: Always check the output before importing
3. **Backup database**: Before importing, backup your database
4. **Test with small PDF**: Try with 1-2 questions first
5. **Check encoding**: Ensure PDFs use UTF-8 encoding

## Complete Workflow

```bash
# 1. Prepare
mkdir -p server/database/mock/pdfs
mkdir -p server/database/mock/sql

# 2. Add PDFs
cp ~/Downloads/sat-questions.pdf server/database/mock/pdfs/

# 3. Convert
cd server/database/mock
node collegeboard-pdf-to-sql.js pdfs/sat-questions.pdf

# 4. Review
cat sql/questions_import.sql | head -50

# 5. Import
cd ../..
sqlite3 database/sat_practice.db < database/mock/sql/questions_import.sql

# 6. Verify
sqlite3 database/sat_practice.db "SELECT COUNT(*) FROM questions;"

# 7. Start server
cd ../..
npm run dev
```

Done! Your questions are now in the database.
