-- Database schema for SAT Practice Set Generator

-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id VARCHAR(36) PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Questions table to store SAT questions from College Board
CREATE TABLE IF NOT EXISTS questions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    question_id TEXT UNIQUE NOT NULL, -- College Board question ID
    assessment TEXT NOT NULL, -- Assessment type from PDF (e.g., 'SAT', 'Digital SAT')
    test_type TEXT NOT NULL, -- Test section: 'Math' or 'Reading and Writing'
    domain TEXT NOT NULL, -- Specific domain (e.g., 'Algebra', 'Information and Ideas')
    difficulty TEXT NOT NULL, -- 'Easy', 'Medium', 'Hard'
    skill TEXT NOT NULL, -- Specific skill being tested
    question_text TEXT NOT NULL,
    correct_answer TEXT NOT NULL,
    answer_choices JSON, -- {"A": "Choice 1", "B": "Choice 2", ...}
    explanation TEXT, -- Rationale from College Board
    answer_analysis TEXT, -- Detailed analysis after rationale
    is_active BOOLEAN DEFAULT 1, -- Whether question is on actual SAT tests
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Practice tests (the test templates) - renamed from practice_sets
CREATE TABLE IF NOT EXISTS practice_tests (
    test_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    test_name VARCHAR(255) NOT NULL,
    test_type TEXT NOT NULL, -- 'SAT', 'PSAT', etc.
    domains TEXT NOT NULL, -- JSON array of selected domains
    difficulties TEXT NOT NULL, -- JSON array of selected difficulties
    skills TEXT NOT NULL, -- JSON array of selected skills
    question_count INTEGER NOT NULL,
    exclude_active BOOLEAN DEFAULT 0,
    exclude_previous BOOLEAN DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id)
);

-- Problems/questions that belong to tests
CREATE TABLE IF NOT EXISTS practice_problems (
    problem_id VARCHAR(36) PRIMARY KEY,
    test_id VARCHAR(36) NOT NULL,
    question_id INTEGER NOT NULL, -- Reference to questions table
    question_text TEXT NOT NULL,
    correct_answer VARCHAR(10) NOT NULL, -- e.g., 'A', 'B', 'C', 'D'
    answer_choices JSON, -- {"A": "Choice 1", "B": "Choice 2", ...}
    answer_analysis TEXT,
    problem_order INT, -- to maintain question order
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (test_id) REFERENCES practice_tests(test_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE,
    INDEX idx_test_id (test_id)
);

-- User test attempts (when a user takes a test) - this serves as the practice history
CREATE TABLE IF NOT EXISTS user_test_attempts (
    attempt_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    test_id VARCHAR(36) NOT NULL,
    started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP NULL,
    score DECIMAL(5,2), -- percentage score
    total_questions INTEGER NOT NULL,
    correct_answers INTEGER NOT NULL,
    total_time INTEGER, -- in seconds
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (test_id) REFERENCES practice_tests(test_id) ON DELETE CASCADE,
    INDEX idx_user_test (user_id, test_id)
);

-- Individual answers for each attempt
CREATE TABLE IF NOT EXISTS user_answers (
    answer_id VARCHAR(36) PRIMARY KEY,
    attempt_id VARCHAR(36) NOT NULL,
    problem_id VARCHAR(36) NOT NULL,
    user_answer VARCHAR(10), -- what the user selected
    is_correct BOOLEAN,
    answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (attempt_id) REFERENCES user_test_attempts(attempt_id) ON DELETE CASCADE,
    FOREIGN KEY (problem_id) REFERENCES practice_problems(problem_id) ON DELETE CASCADE,
    INDEX idx_attempt_id (attempt_id)
);

-- Note: practice_history functionality is now handled by user_test_attempts table

-- Indexes for better performance
CREATE INDEX IF NOT EXISTS idx_questions_assessment ON questions(assessment);
CREATE INDEX IF NOT EXISTS idx_questions_test_type ON questions(test_type);
CREATE INDEX IF NOT EXISTS idx_questions_domain ON questions(domain);
CREATE INDEX IF NOT EXISTS idx_questions_difficulty ON questions(difficulty);
CREATE INDEX IF NOT EXISTS idx_questions_skill ON questions(skill);
CREATE INDEX IF NOT EXISTS idx_questions_active ON questions(is_active);
CREATE INDEX IF NOT EXISTS idx_practice_tests_user ON practice_tests(user_id);
CREATE INDEX IF NOT EXISTS idx_practice_problems_test ON practice_problems(test_id);
CREATE INDEX IF NOT EXISTS idx_user_test_attempts_user ON user_test_attempts(user_id);
CREATE INDEX IF NOT EXISTS idx_user_test_attempts_test ON user_test_attempts(test_id);
CREATE INDEX IF NOT EXISTS idx_user_test_attempts_completed ON user_test_attempts(completed_at);
CREATE INDEX IF NOT EXISTS idx_user_answers_attempt ON user_answers(attempt_id);
