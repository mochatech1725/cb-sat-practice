-- Migration: Update users table to remove email and add UUID auto-generation
-- Date: 2025-10-22
-- Description: 
--   1. Remove email column from users table
--   2. Set user_id to auto-generate UUIDs by default

-- Step 1: Remove the email column and its index
ALTER TABLE users DROP INDEX idx_email;
ALTER TABLE users DROP COLUMN email;

-- Step 2: Modify user_id to have UUID default (for new rows only)
-- Note: This only affects NEW inserts. Existing rows keep their IDs.
ALTER TABLE users MODIFY COLUMN user_id VARCHAR(36) DEFAULT (UUID());

-- Verification queries (optional - comment these out when running the migration):
-- DESCRIBE users;
-- SELECT * FROM users LIMIT 5;

