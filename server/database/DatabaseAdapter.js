/**
 * Abstract Database Adapter
 * Defines the interface that all database implementations must follow
 */
export class DatabaseAdapter {
    constructor(config) {
        if (this.constructor === DatabaseAdapter) {
            throw new Error("DatabaseAdapter is an abstract class and cannot be instantiated directly");
        }
        this.config = config;
        this.connection = null;
    }

    // Connection management
    async connect() {
        throw new Error("Method 'connect()' must be implemented");
    }

    async close() {
        throw new Error("Method 'close()' must be implemented");
    }

    // Schema management
    async initializeSchema(schemaPath) {
        throw new Error("Method 'initializeSchema()' must be implemented");
    }

    // Query execution methods
    async query(sql, params = []) {
        throw new Error("Method 'query()' must be implemented");
    }

    async execute(sql, params = []) {
        throw new Error("Method 'execute()' must be implemented");
    }

    async getOne(sql, params = []) {
        throw new Error("Method 'getOne()' must be implemented");
    }

    async getAll(sql, params = []) {
        throw new Error("Method 'getAll()' must be implemented");
    }

    // Transaction support
    async beginTransaction() {
        throw new Error("Method 'beginTransaction()' must be implemented");
    }

    async commit() {
        throw new Error("Method 'commit()' must be implemented");
    }

    async rollback() {
        throw new Error("Method 'rollback()' must be implemented");
    }

    // Utility methods
    escapeIdentifier(identifier) {
        throw new Error("Method 'escapeIdentifier()' must be implemented");
    }

    getPlaceholder(index) {
        throw new Error("Method 'getPlaceholder()' must be implemented");
    }
}

export default DatabaseAdapter;

