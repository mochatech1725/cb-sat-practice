-- Database schema for SAT Practice Set Generator (MySQL version)

-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id VARCHAR(36) PRIMARY KEY DEFAULT (UUID()),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Questions table to store SAT questions from College Board
CREATE TABLE IF NOT EXISTS questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id VARCHAR(255) UNIQUE NOT NULL,
    assessment VARCHAR(255) NOT NULL,
    test_type VARCHAR(255) NOT NULL,
    domain VARCHAR(255) NOT NULL,
    difficulty VARCHAR(50) NOT NULL,
    skill VARCHAR(255) NOT NULL,
    question_text TEXT NOT NULL,
    correct_answer VARCHAR(10) NOT NULL,
    answer_choices JSON,
    explanation TEXT,
    answer_analysis TEXT,
    is_active BOOLEAN DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_question_id (question_id),
    INDEX idx_assessment (assessment),
    INDEX idx_test_type (test_type),
    INDEX idx_domain (domain),
    INDEX idx_difficulty (difficulty),
    INDEX idx_skill (skill),
    INDEX idx_active (is_active)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Practice tests (the test templates)
CREATE TABLE IF NOT EXISTS practice_tests (
    test_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    test_name VARCHAR(255) NOT NULL,
    test_type VARCHAR(255) NOT NULL,
    domains JSON NOT NULL,
    difficulties JSON NOT NULL,
    skills JSON NOT NULL,
    question_count INT NOT NULL,
    exclude_previous BOOLEAN DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_test_type (test_type),
    INDEX idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Problems/questions that belong to tests
CREATE TABLE IF NOT EXISTS practice_problems (
    problem_id VARCHAR(36) PRIMARY KEY,
    test_id VARCHAR(36) NOT NULL,
    question_id INT NOT NULL,
    question_text TEXT NOT NULL,
    correct_answer VARCHAR(10) NOT NULL,
    answer_choices JSON,
    answer_analysis TEXT,
    problem_order INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (test_id) REFERENCES practice_tests(test_id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE,
    INDEX idx_test_id (test_id),
    INDEX idx_question_id (question_id),
    INDEX idx_problem_order (problem_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- User test attempts (when a user takes a test)
CREATE TABLE IF NOT EXISTS user_test_attempts (
    attempt_id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36) NOT NULL,
    test_id VARCHAR(36) NOT NULL,
    started_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP NULL,
    score DECIMAL(5,2),
    total_questions INT NOT NULL,
    correct_answers INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (test_id) REFERENCES practice_tests(test_id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_test_id (test_id),
    INDEX idx_user_test (user_id, test_id),
    INDEX idx_completed_at (completed_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Individual answers for each attempt
CREATE TABLE IF NOT EXISTS user_answers (
    answer_id VARCHAR(36) PRIMARY KEY,
    attempt_id VARCHAR(36) NOT NULL,
    problem_id VARCHAR(36) NOT NULL,
    user_answer VARCHAR(10),
    is_correct BOOLEAN,
    answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (attempt_id) REFERENCES user_test_attempts(attempt_id) ON DELETE CASCADE,
    FOREIGN KEY (problem_id) REFERENCES practice_problems(problem_id) ON DELETE CASCADE,
    INDEX idx_attempt_id (attempt_id),
    INDEX idx_problem_id (problem_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

