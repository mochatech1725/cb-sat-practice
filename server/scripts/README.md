# Database Scripts

This directory contains utility scripts for managing the database.

## User Management Scripts

### Create User

Creates a new user in the database with command-line parameters.

```bash
cd server
npm run user:create -- --first-name=<firstName> --last-name=<lastName>
```

**Parameters:**
- `--first-name=<name>`: First name of the user (required)
- `--last-name=<name>`: Last name of the user (required)
- `--help` or `-h`: Show usage information

The user ID will be automatically generated as a UUID by the database (e.g., "550e8400-e29b-41d4-a716-446655440000").

**Example:**
```bash
$ npm run user:create -- --first-name=John --last-name=Doe

=== Create New User ===

✓ User created successfully!
  User ID: 550e8400-e29b-41d4-a716-446655440000
  First Name: John
  Last Name: Doe
```

### List Users

Displays all users in the database in a formatted table.

```bash
cd server
npm run user:list
```

**Example output:**
```bash
=== User List ===

Found 2 user(s):

┌──────────────────────────────────────┬──────────────────────────┬──────────────────────────┬─────────────────────┐
│ User ID                              │ First Name               │ Last Name                │ Created At          │
├──────────────────────────────────────┼──────────────────────────┼──────────────────────────┼─────────────────────┤
│ 550e8400-e29b-41d4-a716-446655440000 │ John                     │ Doe                      │ 2025-10-22 10:30:45 │
│ anonymous                            │ Anonymous                │ User                     │ 2025-10-22 09:15:22 │
└──────────────────────────────────────┴──────────────────────────┴──────────────────────────┴─────────────────────┘
```

## Notes

- All scripts automatically load environment variables from `.env.dev` in the project root
- The database connection is automatically initialized and closed
- User IDs are auto-generated as UUIDs by the database (e.g., `550e8400-e29b-41d4-a716-446655440000`)
- The `anonymous` user is automatically created during database initialization with a fixed ID of `anonymous`
- User table no longer includes email field

## Future Scripts

Additional scripts that could be added:
- `delete-user.js` - Delete a user by ID
- `update-user.js` - Update user information
- `import-questions.js` - Bulk import questions from a file
- `export-data.js` - Export practice test data

