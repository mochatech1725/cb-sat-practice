/**
 * Shared TypeScript types for SAT Practice Application
 * Used by both client and server
 */

// Export hierarchy
export * from './hierarchy'

// ============================================================================
// User Types
// ============================================================================

export interface User {
    user_id: string;
    first_name: string;
    last_name: string;
    email?: string | null;
    created_at: string;
}

export interface CreateUserRequest {
    firstName: string;
    lastName: string;
    email?: string;
}

export interface UpdateUserRequest {
    firstName?: string;
    lastName?: string;
    email?: string;
}

export interface UserStats {
    user: {
        userId: string;
        firstName: string;
        lastName: string;
    };
    stats: {
        totalPracticeTests: number;
        totalAttempts: number;
        averageScore: number;
    };
    recentTests: RecentTest[];
}

export interface RecentTest {
    test_id: string;
    test_name: string;
    created_at: string;
    score?: number | null;
    completed_at?: string | null;
}

// ============================================================================
// Question Types
// ============================================================================

export interface Question {
    id: number;
    question_id: string;
    assessment?: string;
    test_type: string;
    domain: string;
    difficulty: string;
    skill: string;
    question_text: string;
    question_type?: string;
    correct_answer: string;
    answer_choices?: AnswerChoices | string;
    explanation?: string | null;
    answer_analysis?: string | null;
    is_active: boolean | number;
    created_at?: string;
    updated_at?: string;
}

export interface AnswerChoices {
    A?: string;
    B?: string;
    C?: string;
    D?: string;
    E?: string;
    [key: string]: string | undefined;
}

export interface QuestionFilters {
    testType: string;
    domains?: string[];
    difficulties?: string[];
    skills?: string[];
    questionCount: number;
    excludeActive?: boolean;
    excludePrevious?: boolean;
    excludedQuestionIds?: number[];
}

export interface FilterOptions {
    testTypes: string[];
    domains: string[];
    difficulties: string[];
    skills: string[];
}

// ============================================================================
// Practice Test Types (also known as Practice Sets in legacy code)
// ============================================================================

export interface PracticeTest {
    test_id: string;
    user_id: string;
    test_name: string;
    test_type: string;
    domains: string[] | string;
    difficulties: string[] | string;
    skills: string[] | string;
    question_count: number;
    exclude_previous: boolean | number;
    created_at: string;
    completed_at?: string | null;
}

// Legacy interface name for backward compatibility
export interface PracticeSet {
    id: string;
    user_id: string;
    set_name: string;
    test_type: string;
    domains: string[];
    difficulties: string[];
    skills: string[];
    question_count: number;
    exclude_previous: boolean;
    created_at: string;
    completed_at?: string;
}

export interface CreatePracticeTestRequest {
    userId?: string;
    testName?: string;
    testType: string;
    domains: string[];
    difficulties: string[];
    skills: string[];
    questionCount: number;
    excludeActive?: boolean;
    excludePrevious?: boolean;
}

export interface PracticeTestWithQuestions extends PracticeTest {
    questions: Question[];
}

// ============================================================================
// Practice Problem Types
// ============================================================================

export interface PracticeProblem {
    problem_id: string;
    test_id: string;
    question_id: number;
    question_text: string;
    correct_answer: string;
    answer_choices: AnswerChoices | string;
    answer_analysis?: string | null;
    problem_order: number;
    created_at: string;
}

// ============================================================================
// User Test Attempt Types (also known as Practice History)
// ============================================================================

export interface UserTestAttempt {
    attempt_id: string;
    user_id: string;
    test_id: string;
    started_at: string;
    completed_at?: string | null;
    score?: number | null;
    total_questions: number;
    correct_answers: number;
}

// Legacy interface name for backward compatibility
export interface PracticeHistory {
    id: string;
    user_id: string;
    practice_set_id: string;
    total_questions: number;
    correct_answers: number;
    score: number;
    completed_at: string;
}

export interface CreateAttemptRequest {
    userId: string;
    testId: string;
    totalQuestions: number;
}

export interface SubmitAttemptRequest {
    attemptId: string;
    correctAnswers: number;
}

// ============================================================================
// User Answer Types
// ============================================================================

export interface UserAnswer {
    answer_id: string;
    attempt_id: string;
    problem_id: string;
    user_answer?: string | null;
    is_correct: boolean | number | null;
    answered_at: string;
}

export interface SubmitAnswerRequest {
    attemptId: string;
    problemId: string;
    userAnswer: string;
    isCorrect: boolean;
}

// ============================================================================
// API Response Types
// ============================================================================

export interface ApiResponse<T> {
    success: boolean;
    data?: T;
    error?: string;
    message?: string;
}

export interface PaginatedResponse<T> {
    data: T[];
    total: number;
    page: number;
    pageSize: number;
    totalPages: number;
}

// ============================================================================
// Scraper Types
// ============================================================================

export interface ScraperOptions {
    testType?: string;
    domains?: string[];
    difficulties?: string[];
    skills?: string[];
    excludeActive?: boolean;
}

export interface ScraperResult {
    availableOptions?: {
        testTypes: Array<{ value: string; text: string }>;
        domains: Array<{ value: string; text: string }>;
        difficulties: Array<{ value: string; text: string }>;
        skills: Array<{ value: string; text: string }>;
    };
    questions: Question[];
    filters: ScraperOptions;
}

// ============================================================================
// Database Adapter Types
// ============================================================================

export interface DatabaseConfig {
    type?: 'mysql' | 'postgresql' | 'mongodb';
    host?: string;
    port?: number;
    user?: string;
    password?: string;
    database?: string;
    connectionLimit?: number;
    path?: string;
}

// ============================================================================
// Utility Types
// ============================================================================

export type TestType = 'SAT' | 'PSAT' | 'Digital SAT';
export type Difficulty = 'Easy' | 'Medium' | 'Hard';
export type Domain = 'Math' | 'Reading and Writing' | 'Algebra' | 'Geometry' | 'Information and Ideas' | 'Craft and Structure';

// ============================================================================
// Enums
// ============================================================================

export enum UserRole {
    Student = 'student',
    Teacher = 'teacher',
    Admin = 'admin'
}

export enum QuestionStatus {
    Active = 1,
    Inactive = 0
}

export enum AttemptStatus {
    InProgress = 'in_progress',
    Completed = 'completed',
    Abandoned = 'abandoned'
}

