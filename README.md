# SAT Practice Set Generator

A comprehensive web application for generating customized SAT practice sets from the College Board question bank. Built with Vue.js frontend and Express.js backend.

## Features

- **Customized Practice Sets**: Generate practice sets based on specific criteria
  - Test type (SAT, PSAT, etc.)
  - Multiple domain selection (Math, Reading, Writing and Language)
  - Multiple difficulty selection (Easy, Medium, Hard)
  - Multiple skill selection
  - Customizable question count (1-100 questions)

- **Smart Filtering Options**:
  - Exclude active questions (questions from actual SAT tests)
  - Exclude previously used questions to avoid repetition

- **Practice History Tracking**:
  - View all past practice sessions
  - Track performance and scores
  - Reset history when needed
  - Detailed question-by-question review

- **Interactive Practice Sessions**:
  - Navigate through questions
  - Save progress automatically
  - Submit and get instant feedback
  - View correct answers and explanations

## Technology Stack

### Frontend
- **Vue.js 3** with Composition API
- **TypeScript** for type safety
- **Pinia** for state management
- **Vue Router** for navigation
- **Vite** for fast development and building
- **Centralized API service** for all HTTP requests

### Backend
- **Express.js** for RESTful API
- **MySQL** for data persistence
- **Node.js** with ES6 modules
- **TypeScript types** for type safety
- **CORS** and **Helmet** for security
- **Rate limiting** for API protection
- **Database abstraction layer** for flexibility

### Shared Types
- **TypeScript definitions** shared between client and server
- **Type-safe API contracts** for consistent data structures
- **Auto-complete support** in both environments
- **Assessment hierarchy** (Assessment → Test Type → Domain → Skills) defined in `hierarchy.json` for easy updates

## Project Structure

```
cb-sat-practice/
├── client/                 # Vue.js frontend
│   ├── src/
│   │   ├── components/     # Reusable Vue components
│   │   ├── views/          # Page components
│   │   ├── stores/         # Pinia stores
│   │   ├── router/         # Vue Router configuration
│   │   ├── services/       # API service layer
│   │   └── main.ts         # Application entry point
│   ├── package.json
│   └── tsconfig.json
├── server/                 # Express.js backend
│   ├── database/           # Database schema and initialization
│   ├── routes/             # API route handlers
│   ├── package.json
│   ├── tsconfig.json
│   └── index.js
├── types/                  # Shared TypeScript types
│   ├── index.ts            # Type definitions
│   ├── hierarchy.ts        # Hierarchy utilities
│   ├── hierarchy.json      # Assessment structure (Assessment → Test Type → Domain → Skills)
│   └── README.md           # Types documentation
├── package.json            # Root package.json for scripts
└── README.md
```

## Database Schema

The application uses MySQL with the following main tables:

- **questions**: Stores SAT questions with metadata
- **users**: Stores user information
- **practice_tests**: Stores practice session configurations
- **practice_problems**: Links questions to practice tests
- **user_test_attempts**: Tracks completed practice sessions and scores
- **user_answers**: Stores individual question answers

The database schema is automatically created when the server starts for the first time.

## Installation & Setup

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MySQL (v5.7 or higher)

### Installation Steps

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd cb-sat-practice
   ```

2. **Set up MySQL database**:
   ```bash
   mysql -u root -p
   CREATE DATABASE sat_practice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   exit;
   ```

3. **Configure environment variables**:
   - Update the `.env.dev` file in the project root with your MySQL credentials
   - The file should contain:
   ```env
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=root
   DB_PASSWORD=your_password
   DB_NAME=sat_practice
   ```

4. **Install all dependencies**:
   ```bash
   npm run install-all
   ```

5. **Start the development servers**:
   ```bash
   npm run dev
   ```

   This will start both the frontend (Vue.js) and backend (Express.js) servers concurrently:
   - Frontend: http://localhost:5173
   - Backend API: http://localhost:3001
   
   The database schema will be automatically created on first run.

### Individual Server Commands

If you prefer to run servers individually:

```bash
# Backend only
npm run server

# Frontend only  
npm run client
```

## User Management

The application includes command-line utilities for managing users in the database.

### Create a User

```bash
cd server
npm run user:create -- --first-name=<firstName> --last-name=<lastName>
```

**Example:**
```bash
$ npm run user:create -- --first-name=John --last-name=Doe

=== Create New User ===

✓ User created successfully!
  User ID: 550e8400-e29b-41d4-a716-446655440000
  First Name: John
  Last Name: Doe
```

The user ID is automatically generated as a UUID by the database.

### List All Users

```bash
cd server
npm run user:list
```

This displays all users in a formatted table with their IDs, first names, last names, and creation dates.

**Note:** An `anonymous` user is automatically created during database initialization for testing purposes.

See `server/scripts/README.md` for more details on user management scripts.

## Shared Types

The project uses a shared `types/` directory that provides TypeScript type definitions for both client and server. This ensures type safety and consistency across the application.

### Using Shared Types

**In Client (Vue/TypeScript):**
```typescript
import type { User, Question, PracticeTest } from '@types';

const user: User = {
  user_id: '123',
  first_name: 'John',
  last_name: 'Doe',
  email: 'john@example.com',
  created_at: new Date().toISOString()
};
```

**In Server (Node.js):**
```typescript
import type { CreateUserRequest, User } from '../../types/index.js';

const handleCreateUser = async (req, res) => {
  const userData: CreateUserRequest = req.body;
  // Type-safe request handling
};
```

See `types/README.md` for more details.

## Updating Assessment Hierarchy

The College Board assessment structure (Assessment → Test Type → Domain → Skills) is defined in `types/hierarchy.json`. 

**Current Structure:**
- **Assessment Level:** SAT, PSAT/NMSQT & PSAT 10, PSAT 8/9
- **Test Type Level:** Math, Reading and Writing
- **Domain Level:** Algebra, Advanced Math, Problem-Solving and Data Analysis, etc.
- **Skill Level:** Linear equations in one variable, Linear functions, etc.

To update:

1. **Edit** `types/hierarchy.json`:
   ```json
   {
     "SAT": {
       "Math": {
         "Algebra": [
           "Linear equations in one variable",
           "Linear functions",
           ...
         ]
       }
     }
   }
   ```

2. **Restart** the development servers

3. **Test** the form to ensure changes appear correctly

**Note:** Currently, only SAT is enabled in the UI. Other assessments are defined in the JSON but not yet accessible.

## API Service Layer

The client uses a centralized API service (`client/src/services/api.ts`) for all server communication:

**Benefits:**
- ✅ Single source of truth for all API calls
- ✅ Type-safe request/response handling
- ✅ Centralized error handling and interceptors
- ✅ Easy to mock for testing
- ✅ Consistent API structure across the app

## API Endpoints

### Users API (`/api/users`)
- `POST /register` - Create a new user
- `GET /` - Get all users
- `GET /:userId` - Get specific user
- `PUT /:userId` - Update a user
- `DELETE /:userId` - Delete a user
- `GET /:userId/stats` - Get user statistics

### Questions API (`/api/questions`)
- `GET /filters` - Get available filter options
- `POST /search` - Search questions with filters
- `GET /:id` - Get specific question
- `GET /practice-set/:practiceSetId` - Get questions for a practice set

### Practice API (`/api/practice`)
- `POST /create` - Create new practice set
- `GET /history/:userId` - Get practice history
- `GET /set/:practiceSetId` - Get practice set details
- `POST /submit/:practiceSetId` - Submit practice results
- `DELETE /history/:userId` - Reset practice history
- `GET /excluded/:userId` - Get excluded question IDs

## Usage

### Creating a Practice Set

1. Navigate to the home page
2. The form defaults to **SAT** assessment
3. Select your desired filters:
   - Test type: Math or Reading and Writing (required)
   - Domains: Multiple selection, options depend on test type (required)
   - Difficulties: Multiple selection (required)
   - Skills: Multiple selection, options depend on selected domains (required)
   - Number of questions (1-100)
   - Optional filters (exclude active/previous questions)
3. Click "Generate Practice Set"
4. Review the generated set and click "Start Practice"

### Taking a Practice Session

1. Navigate through questions using Previous/Next buttons
2. Enter your answers in the text area
3. Progress is automatically saved
4. Click "Submit Practice Set" when complete
5. View your score and performance

### Viewing Practice History

1. Navigate to the "Practice History" page
2. View all your past practice sessions
3. Click "View Details" to see question-by-question results
4. Use "Reset All History" to clear all practice data

## Development

### Adding New Features

1. **Backend**: Add new routes in `server/routes/`
2. **Frontend**: Add new components in `client/src/components/`
3. **State Management**: Update stores in `client/src/stores/`

### Database Changes

1. Update schema in `server/database/schema-mysql.sql`
2. Modify database initialization in `server/database/init.js`
3. Update API endpoints as needed

The project uses a database abstraction layer, making it easy to add support for other databases like PostgreSQL. See [DATABASE-SETUP.md](DATABASE-SETUP.md) for details.

## Production Deployment

### Environment Variables

Update the `.env.dev` file in the project root directory:

```env
NODE_ENV=production
PORT=3001
CLIENT_URL=https://your-frontend-domain.com

# Database configuration
DB_TYPE=mysql
DB_HOST=your-database-host
DB_PORT=3306
DB_USER=your-db-user
DB_PASSWORD=your-db-password
DB_NAME=sat_practice
DB_CONNECTION_LIMIT=20
```

### Build Commands

```bash
# Build frontend for production
npm run build

# Start production server
cd server && npm start
```

### Database Setup for Production

1. Create a production MySQL database
2. Update environment variables with production database credentials
3. Ensure MySQL server is properly secured and configured
4. Consider setting up database backups and monitoring

For detailed database configuration, see [DATABASE-SETUP.md](DATABASE-SETUP.md).


## License

MIT License - see LICENSE file for details

