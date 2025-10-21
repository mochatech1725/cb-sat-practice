import { MySQLAdapter } from './MySQLAdapter.js';

/**
 * Database Factory
 * Creates the appropriate database adapter based on configuration
 */
export class DatabaseFactory {
    static createAdapter(type, config) {
        switch (type.toLowerCase()) {
            case 'mysql':
                return new MySQLAdapter(config);
            
            // Add more database types here as needed
            // case 'postgresql':
            //     return new PostgreSQLAdapter(config);
            // case 'mongodb':
            //     return new MongoDBAdapter(config);
            
            default:
                throw new Error(`Unsupported database type: ${type}`);
        }
    }

    static createFromEnv() {
        const dbType = process.env.DB_TYPE || 'mysql';
        
        const config = {
            host: process.env.DB_HOST || 'localhost',
            port: parseInt(process.env.DB_PORT) || 3306,
            user: process.env.DB_USER || 'root',
            password: process.env.DB_PASSWORD || '',
            database: process.env.DB_NAME || 'sat_practice',
            connectionLimit: parseInt(process.env.DB_CONNECTION_LIMIT) || 10
        };
        
        return this.createAdapter(dbType, config);
    }
}

export default DatabaseFactory;

