# Database Setup Guide

This project uses a flexible database abstraction layer that supports multiple database backends. Currently configured for MySQL with the ability to add support for other databases like PostgreSQL or MongoDB.

## Architecture

The database layer consists of:

- **`DatabaseAdapter.js`** - Abstract base class defining the database interface
- **`MySQLAdapter.js`** - MySQL implementation
- **`DatabaseFactory.js`** - Factory pattern to create the right adapter
- **`init.js`** - Main Database class that uses the adapters

## MySQL Setup

**1. Create a MySQL database:**
```bash
mysql -u root -p
CREATE DATABASE sat_practice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
exit;
```

**2. Create/Update `.env.dev` file in the project root directory:**
```env
DB_TYPE=mysql
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=sat_practice
DB_CONNECTION_LIMIT=10
```

**3. Install dependencies:**
```bash
cd server
npm install
```

**4. Start the server:**
```bash
npm run dev
```

The database schema will be automatically created on first run.

## Schema Files

- `schema-mysql.sql` - MySQL schema with proper indexes and InnoDB engine

## Adding Support for Other Databases

To add support for PostgreSQL, MongoDB, or other databases:

1. **Create a new adapter:**
   - Create `PostgreSQLAdapter.js` (or similar) in `server/database/`
   - Extend the `DatabaseAdapter` class
   - Implement all required methods

2. **Update the factory:**
   - Add a new case in `DatabaseFactory.js`
   - Update `createFromEnv()` to handle the new database type configuration

3. **Create a schema file:**
   - Add `schema-postgresql.sql` (or similar)

4. **Update the Database class:**
   - Modify `init()` in `init.js` to handle the new schema file

## Database Methods

The abstraction layer provides these standard methods:

### Connection
- `connect()` - Connect to the database
- `close()` - Close the connection

### Queries
- `query(sql, params)` - Execute a query and return all rows
- `execute(sql, params)` - Execute a query (INSERT, UPDATE, DELETE)
- `getOne(sql, params)` - Get a single row
- `getAll(sql, params)` - Get all matching rows

### Transactions
- `beginTransaction()` - Start a transaction
- `commit()` - Commit the current transaction
- `rollback()` - Rollback the current transaction

### Utilities
- `escapeIdentifier(identifier)` - Escape table/column names
- `getPlaceholder(index)` - Get the placeholder syntax (? for SQLite/MySQL)

## Example Usage

```javascript
import { DatabaseFactory } from './database/DatabaseFactory.js';

// Create adapter from environment variables
const adapter = DatabaseFactory.createFromEnv();
await adapter.connect();

// Execute a query
const users = await adapter.getAll('SELECT * FROM users WHERE user_id = ?', ['123']);

// Transactions
await adapter.beginTransaction();
try {
  await adapter.execute('INSERT INTO users (user_id, first_name) VALUES (?, ?)', ['456', 'John']);
  await adapter.execute('INSERT INTO practice_tests (test_id, user_id) VALUES (?, ?)', ['test1', '456']);
  await adapter.commit();
} catch (error) {
  await adapter.rollback();
  throw error;
}

// Close connection
await adapter.close();
```

## Troubleshooting

### MySQL Connection Issues

1. **Check MySQL is running:**
```bash
mysql -u root -p
```

2. **Verify credentials in `.env`**

3. **Check firewall settings** if using remote database

4. **Ensure database exists:**
```sql
SHOW DATABASES;
```

## Performance Tips

### MySQL
- Indexes are automatically created from `schema-mysql.sql`
- Adjust `DB_CONNECTION_LIMIT` based on your server capacity (default: 10)
- Connection pooling is automatically enabled via mysql2
- For production, consider:
  - Setting up read replicas for scaling reads
  - Enabling query caching
  - Optimizing MySQL configuration (my.cnf)

## Environment Variables

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `DB_TYPE` | Database type ('mysql') | mysql | No |
| `DB_HOST` | MySQL host | localhost | No |
| `DB_PORT` | MySQL port | 3306 | No |
| `DB_USER` | MySQL username | root | No |
| `DB_PASSWORD` | MySQL password | - | Yes |
| `DB_NAME` | MySQL database name | sat_practice | No |
| `DB_CONNECTION_LIMIT` | MySQL connection pool size | 10 | No |

