# Shared Types

This directory contains TypeScript type definitions shared between the client and server applications.

## Usage

### In Client (Vue.js/TypeScript)

Import types directly from the types directory:

```typescript
import type { User, Question, PracticeTest } from '../../types';

// Use in components
const user: User = {
  user_id: '123',
  first_name: 'John',
  last_name: 'Doe',
  email: 'john@example.com',
  created_at: new Date().toISOString()
};
```

### In Server (Node.js)

Import types using the relative path:

```typescript
import type { User, CreateUserRequest } from '../../types/index.js';

// Use in route handlers
const createUser = async (req: Request, res: Response) => {
  const userData: CreateUserRequest = req.body;
  // ...
};
```

## Available Types

### User Types
- `User` - User database model
- `CreateUserRequest` - Request body for creating a user
- `UpdateUserRequest` - Request body for updating a user
- `UserStats` - User statistics with practice history

### Question Types
- `Question` - Question database model
- `QuestionFilters` - Filters for searching questions
- `AnswerChoices` - Answer choices object
- `FilterOptions` - Available filter options

### Practice Test Types
- `PracticeTest` - Practice test database model
- `CreatePracticeTestRequest` - Request body for creating a practice test
- `PracticeTestWithQuestions` - Practice test with related questions
- `PracticeProblem` - Individual problem in a practice test

### Test Attempt Types
- `UserTestAttempt` - User's attempt at a practice test
- `UserAnswer` - Individual answer in an attempt
- `SubmitAnswerRequest` - Request body for submitting an answer

### API Response Types
- `ApiResponse<T>` - Generic API response wrapper
- `PaginatedResponse<T>` - Paginated API response

## Type Safety

These shared types ensure:
- Consistency between client and server
- Type-safe API contracts
- Better IDE autocomplete
- Catch errors at compile time
- Self-documenting code

## Maintenance

When updating the database schema:
1. Update the corresponding type in `index.ts`
2. Run TypeScript checks in both client and server
3. Update any affected API routes or components

