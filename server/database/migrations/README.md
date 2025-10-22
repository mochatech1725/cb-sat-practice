# Database Migrations

This directory contains SQL migration scripts to update the database schema.

## How to Run Migrations

1. **Connect to your MySQL database:**
   ```bash
   mysql -u root -p
   ```

2. **Select the database:**
   ```sql
   USE sat_practice;
   ```

3. **Run the migration file:**
   ```sql
   SOURCE /path/to/cb-sat-practice/server/database/migrations/update-users-table.sql;
   ```

   Or from the command line:
   ```bash
   mysql -u root -p sat_practice < server/database/migrations/update-users-table.sql
   ```

## Available Migrations

### `update-users-table.sql`

**Date:** 2025-10-22

**Changes:**
- Removes the `email` column from the `users` table
- Removes the `idx_email` index
- Updates `user_id` to auto-generate UUIDs for new users

**Impact:**
- Existing user IDs will remain unchanged
- New users will automatically get UUID-based IDs
- Email field is no longer available

**Before running:**
- Make sure you don't have any application code that relies on the `email` field
- Consider backing up your database first:
  ```bash
  mysqldump -u root -p sat_practice > backup_$(date +%Y%m%d).sql
  ```

**Verification:**
After running the migration, verify the changes:
```sql
DESCRIBE users;
SELECT * FROM users LIMIT 5;
```

## Notes

- Migrations are not automatically run - you must manually execute them
- Always backup your database before running migrations
- Migrations are designed to be run in order
- Each migration file includes comments explaining what it does

