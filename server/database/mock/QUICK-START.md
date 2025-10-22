# Quick Start: Parse College Board PDFs

## TL;DR

```bash
# 1. Add your PDFs
cp ~/Downloads/*.pdf server/database/mock/pdfs/

# 2. Parse them
cd server/database/mock
node pdf-parser-improved.js

# 3. Import to database (example with one file)
mysql -u root -p sat_practice < sql/SATCollegeBankMathAdvanced.sql
```

Done! Your questions are now in the database.

## What Gets Created

For each PDF file, two output files are generated in the `sql/` directory:
- `<PDFBasename>.json` - Parsed questions in JSON format
- `<PDFBasename>.sql` - SQL INSERT statements ready to import

Example: `SATCollegeBankMathAdvanced.pdf` creates:
- `sql/SATCollegeBankMathAdvanced.json`
- `sql/SATCollegeBankMathAdvanced.sql`

## Question Types Supported

### ✅ Multiple Choice
```
Question ID: 3f5a3602
Math
Difficulty: Hard

Which system of equations represents both lines?

A. 8x + 4y = 32
B. 8x - 4y = 32
C. 4x - 10y = 32
D. 4x + 10y = 32

Answer
D

Rationale
Choice D is correct...
```

### ✅ Free Response
```
Question ID: 128c75e2
Math
Difficulty: Hard

What is the product of g(15a) and g(7a)?

Answer
403

Rationale
The correct answer is 403...
```

## PDF Requirements

Your PDF must have:
1. `Question ID: xxxxxxxx` (8-character alphanumeric ID)
2. Test type line (`Math` or `Reading and Writing`)
3. `Difficulty: Easy/Medium/Hard`
4. Question text (can span multiple lines)
5. `Answer` section with answer value on next line
6. `Rationale` section (optional but recommended)

## Checking Output

```bash
# Count questions in a file
cat sql/SATCollegeBankMathAdvanced.json | jq 'length'

# View first question
cat sql/SATCollegeBankMathAdvanced.json | jq '.[0]'

# Count by type
cat sql/SATCollegeBankMathAdvanced.json | jq '[.[] | .answer_choices.type] | group_by(.) | map({type: .[0], count: length})'

# Import all SQL files at once
cat sql/*.sql | mysql -u root -p sat_practice
```

## Common Issues

| Issue | Solution |
|-------|----------|
| `ENOENT: no such file or directory, open './test/data/05-versions-space.pdf'` | Run from server directory: `cd server && node database/mock/pdf-parser-improved.js`. The postinstall script should auto-fix this. |
| No questions extracted | Check PDF has "Question ID:" markers |
| Wrong domain | Add keywords to parser or fix manually |
| Missing answer | Verify "Answer" line is present |
| Bad formatting | Question text may contain special chars |

## Next Steps

1. Review parsed JSON to verify accuracy
2. Import to a test database first
3. Check questions in the UI
4. Mark questions as active (`is_active = 1`) when ready
