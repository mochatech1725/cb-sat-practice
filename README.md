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
- **Axios** for HTTP requests

### Backend
- **Express.js** for RESTful API
- **MySQL** for data persistence
- **Node.js** with ES6 modules
- **CORS** and **Helmet** for security
- **Rate limiting** for API protection
- **Database abstraction layer** for flexibility

## Project Structure

```
cb-sat-practice/
├── client/                 # Vue.js frontend
│   ├── src/
│   │   ├── components/     # Reusable Vue components
│   │   ├── views/          # Page components
│   │   ├── stores/         # Pinia stores
│   │   ├── router/         # Vue Router configuration
│   │   └── main.ts         # Application entry point
│   ├── package.json
│   └── vite.config.ts
├── server/                 # Express.js backend
│   ├── database/           # Database schema and initialization
│   ├── routes/             # API route handlers
│   ├── package.json
│   └── index.js
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

See [DATABASE-SETUP.md](DATABASE-SETUP.md) for detailed database configuration and setup instructions.

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

## API Endpoints

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
2. Select your desired filters:
   - Test type (required)
   - Domains (multiple selection, required)
   - Difficulties (multiple selection, required)
   - Skills (multiple selection, required)
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

## Sample Data

The application comes with sample SAT questions across different domains and difficulties for testing purposes. In a production environment, you would need to:

1. Import questions from the College Board question bank
2. Set up proper user authentication
3. Configure production database (PostgreSQL, MySQL, etc.)

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

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

MIT License - see LICENSE file for details

## Support

For issues and questions, please create an issue in the repository.
