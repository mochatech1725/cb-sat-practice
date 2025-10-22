import { Database } from '../database/init.js';
import dotenv from 'dotenv';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Load environment variables from project root
dotenv.config({ path: join(__dirname, '../../.env.dev') });

async function listUsers() {
    const db = new Database();
    
    try {
        console.log('\n=== User List ===\n');
        
        // Initialize database
        await db.init();
        
        // Get all users
        const users = await db.adapter.getAll(
            'SELECT user_id, first_name, last_name, created_at FROM users ORDER BY created_at DESC'
        );
        
        if (users.length === 0) {
            console.log('No users found in the database.\n');
            return;
        }
        
        console.log(`Found ${users.length} user(s):\n`);
        
        // Display users in a table format
        console.log('┌──────────────────────────────────────┬──────────────────────────┬──────────────────────────┬─────────────────────┐');
        console.log('│ User ID                              │ First Name               │ Last Name                │ Created At          │');
        console.log('├──────────────────────────────────────┼──────────────────────────┼──────────────────────────┼─────────────────────┤');
        
        users.forEach(user => {
            const userId = (user.user_id || '').padEnd(36);
            const firstName = (user.first_name || '').padEnd(24);
            const lastName = (user.last_name || '').padEnd(24);
            const createdAt = user.created_at ? new Date(user.created_at).toISOString().slice(0, 19).replace('T', ' ') : 'N/A';
            
            console.log(`│ ${userId} │ ${firstName} │ ${lastName} │ ${createdAt} │`);
        });
        
        console.log('└──────────────────────────────────────┴──────────────────────────┴──────────────────────────┴─────────────────────┘\n');
        
    } catch (error) {
        console.error('\n✗ Error listing users:', error.message);
        process.exit(1);
    } finally {
        await db.close();
    }
}

// Run the script
listUsers();

