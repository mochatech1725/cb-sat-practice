import mysql from 'mysql2/promise';
import { readFileSync } from 'fs';
import DatabaseAdapter from './DatabaseAdapter.js';

/**
 * MySQL Database Adapter
 * Implements the DatabaseAdapter interface for MySQL databases
 */
export class MySQLAdapter extends DatabaseAdapter {
    constructor(config) {
        super(config);
        this.pool = null;
        this.transactionConnection = null;
    }

    async connect() {
        try {
            // Create connection pool
            this.pool = mysql.createPool({
                host: this.config.host || 'localhost',
                port: this.config.port || 3306,
                user: this.config.user || 'root',
                password: this.config.password || '',
                database: this.config.database,
                waitForConnections: true,
                connectionLimit: this.config.connectionLimit || 10,
                queueLimit: 0,
                enableKeepAlive: true,
                keepAliveInitialDelay: 0
            });

            // Test the connection
            const connection = await this.pool.getConnection();
            console.log('MySQL database connected successfully');
            connection.release();
            
            this.connection = this.pool;
            return this.pool;
        } catch (error) {
            console.error('MySQL connection error:', error);
            throw error;
        }
    }

    async close() {
        if (this.pool) {
            await this.pool.end();
            console.log('MySQL connection closed');
        }
    }

    async initializeSchema(schemaPath) {
        try {
            const schema = readFileSync(schemaPath, 'utf8');
            
            // Split schema into individual statements
            // MySQL requires executing each statement separately
            const statements = schema
                .split(';')
                .map(stmt => stmt.trim())
                .filter(stmt => stmt.length > 0);

            for (const statement of statements) {
                try {
                    await this.execute(statement);
                } catch (error) {
                    // Ignore "table already exists" errors
                    if (!error.message.includes('already exists')) {
                        console.error('Schema execution error:', error);
                    }
                }
            }
            
            console.log('MySQL schema initialized successfully');
        } catch (error) {
            console.error('Error reading schema file:', error);
            throw error;
        }
    }

    async query(sql, params = []) {
        try {
            console.log('MySQLAdapter.query called with:', {
                sql,
                params,
                paramsIsArray: Array.isArray(params),
                paramsLength: params.length,
                paramsTypes: params.map(p => typeof p)
            });
            
            const connection = this.transactionConnection || this.pool;
            // Use query() instead of execute() for better compatibility with dynamic queries
            const [rows] = await connection.query(sql, params);
            return rows;
        } catch (error) {
            console.error('MySQL query error:', error);
            console.error('Failed SQL:', sql);
            console.error('Failed params:', params);
            throw error;
        }
    }

    async execute(sql, params = []) {
        try {
            const connection = this.transactionConnection || this.pool;
            const [result] = await connection.execute(sql, params);
            return result;
        } catch (error) {
            console.error('MySQL execute error:', error);
            throw error;
        }
    }

    async getOne(sql, params = []) {
        const rows = await this.query(sql, params);
        return rows.length > 0 ? rows[0] : null;
    }

    async getAll(sql, params = []) {
        return await this.query(sql, params);
    }

    async beginTransaction() {
        this.transactionConnection = await this.pool.getConnection();
        await this.transactionConnection.beginTransaction();
    }

    async commit() {
        if (this.transactionConnection) {
            await this.transactionConnection.commit();
            this.transactionConnection.release();
            this.transactionConnection = null;
        }
    }

    async rollback() {
        if (this.transactionConnection) {
            await this.transactionConnection.rollback();
            this.transactionConnection.release();
            this.transactionConnection = null;
        }
    }

    escapeIdentifier(identifier) {
        return `\`${identifier.replace(/`/g, '``')}\``;
    }

    getPlaceholder(index) {
        // MySQL uses ? for all placeholders
        return '?';
    }

    // MySQL-specific helper methods
    async createDatabase() {
        try {
            const connection = mysql.createConnection({
                host: this.config.host || 'localhost',
                port: this.config.port || 3306,
                user: this.config.user || 'root',
                password: this.config.password || ''
            });

            await connection.execute(
                `CREATE DATABASE IF NOT EXISTS ${this.escapeIdentifier(this.config.database)}`
            );
            
            console.log(`Database '${this.config.database}' created or already exists`);
            await connection.end();
        } catch (error) {
            console.error('Error creating database:', error);
            throw error;
        }
    }
}

export default MySQLAdapter;

