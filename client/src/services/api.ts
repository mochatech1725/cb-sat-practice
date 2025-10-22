/**
 * Centralized API service for all server communication
 * All axios calls should go through this service
 */

import axios, { type AxiosInstance } from 'axios'
import type {
  User,
  CreateUserRequest,
  UpdateUserRequest,
  UserStats,
  Question,
  QuestionFilters,
  FilterOptions,
  PracticeSet,
  PracticeHistory
} from '@types'

// Create axios instance with default config
const apiClient: AxiosInstance = axios.create({
  baseURL: '/api',
  timeout: 30000,
  headers: {
    'Content-Type': 'application/json'
  }
})

// Request interceptor for adding auth tokens, etc.
apiClient.interceptors.request.use(
  (config) => {
    // Add auth token if available
    // const token = localStorage.getItem('auth_token')
    // if (token) {
    //   config.headers.Authorization = `Bearer ${token}`
    // }
    return config
  },
  (error) => {
    return Promise.reject(error)
  }
)

// Response interceptor for error handling
apiClient.interceptors.response.use(
  (response) => response,
  (error) => {
    // Handle specific error codes globally
    if (error.response?.status === 401) {
      // Handle unauthorized
      console.error('Unauthorized access')
    }
    return Promise.reject(error)
  }
)

// ============================================================================
// User API
// ============================================================================

export const userAPI = {
  /**
   * Register a new user
   */
  register: async (data: CreateUserRequest) => {
    const response = await apiClient.post<{ message: string; user: User }>('/users/register', data)
    return response.data
  },

  /**
   * Get all users
   */
  getAll: async () => {
    const response = await apiClient.get<{ count: number; users: User[] }>('/users')
    return response.data
  },

  /**
   * Get user by ID
   */
  getById: async (userId: string) => {
    const response = await apiClient.get<{ user: User }>(`/users/${userId}`)
    return response.data
  },

  /**
   * Update user
   */
  update: async (userId: string, data: UpdateUserRequest) => {
    const response = await apiClient.put<{ message: string; user: User }>(`/users/${userId}`, data)
    return response.data
  },

  /**
   * Delete user
   */
  delete: async (userId: string) => {
    const response = await apiClient.delete<{ message: string; userId: string }>(`/users/${userId}`)
    return response.data
  },

  /**
   * Get user statistics
   */
  getStats: async (userId: string) => {
    const response = await apiClient.get<UserStats>(`/users/${userId}/stats`)
    return response.data
  }
}

// ============================================================================
// Questions API
// ============================================================================

export const questionsAPI = {
  /**
   * Get available filter options
   */
  getFilters: async () => {
    const response = await apiClient.get<FilterOptions>('/questions/filters')
    return response.data
  },

  /**
   * Search questions with filters
   */
  search: async (filters: QuestionFilters) => {
    const response = await apiClient.post<Question[]>('/questions/search', filters)
    return response.data
  },

  /**
   * Get question by ID
   */
  getById: async (id: number) => {
    const response = await apiClient.get<Question>(`/questions/${id}`)
    return response.data
  },

  /**
   * Get questions for a practice set
   */
  getByPracticeSet: async (practiceSetId: string) => {
    const response = await apiClient.get<Question[]>(`/questions/practice-set/${practiceSetId}`)
    return response.data
  }
}

// ============================================================================
// Practice API
// ============================================================================

export const practiceAPI = {
  /**
   * Create a new practice set/test
   */
  create: async (params: {
    assessment: string
    testType: string
    domains: string[]
    difficulties: string[]
    skills: string[]
    questionCount: number
    excludePrevious?: boolean
    setName?: string
    userId: string
  }) => {
    const response = await apiClient.post<{
      practiceSetId: string
      questions: Question[]
    }>('/practice/create', params)
    return response.data
  },

  /**
   * Get practice history for a user
   */
  getHistory: async (userId: string) => {
    const response = await apiClient.get<PracticeHistory[]>(`/practice/history/${userId}`)
    return response.data
  },

  /**
   * Get a specific practice set
   */
  getSet: async (practiceSetId: string) => {
    const response = await apiClient.get<{
      practiceSet: PracticeSet
      questions: Question[]
    }>(`/practice/set/${practiceSetId}`)
    return response.data
  },

  /**
   * Submit a practice set
   */
  submit: async (
    practiceSetId: string,
    data: {
      answers: Array<{
        questionId: number
        userAnswer: string
      }>
      userId?: string
    }
  ) => {
    const response = await apiClient.post(`/practice/submit/${practiceSetId}`, data)
    return response.data
  },

  /**
   * Reset practice history for a user
   */
  resetHistory: async (userId: string = 'anonymous') => {
    const response = await apiClient.delete(`/practice/history/${userId}`)
    return response.data
  },

  /**
   * Get excluded question IDs for a user
   */
  getExcludedQuestions: async (userId: string = 'anonymous') => {
    const response = await apiClient.get<{ excludedQuestionIds: number[] }>(
      `/practice/excluded/${userId}`
    )
    return response.data
  }
}

// ============================================================================
// Scraper API
// ============================================================================

export const scraperAPI = {
  /**
   * Get scraper status
   */
  getStatus: async () => {
    const response = await apiClient.get('/scraper/status')
    return response.data
  },

  /**
   * Test scraper connection
   */
  test: async () => {
    const response = await apiClient.get('/scraper/test')
    return response.data
  },

  /**
   * Get available scraper options
   */
  getOptions: async () => {
    const response = await apiClient.get('/scraper/options')
    return response.data
  },

  /**
   * Sync questions from College Board
   */
  sync: async (filters: {
    testType?: string
    domains?: string[]
    difficulties?: string[]
    skills?: string[]
  }) => {
    const response = await apiClient.post('/scraper/sync', filters)
    return response.data
  },

  /**
   * Bulk import questions
   */
  bulkImport: async (data: { questions: Question[] }) => {
    const response = await apiClient.post('/scraper/bulk-import', data)
    return response.data
  },

  /**
   * Cleanup duplicate or invalid questions
   */
  cleanup: async () => {
    const response = await apiClient.post('/scraper/cleanup')
    return response.data
  }
}

// ============================================================================
// Export API client for custom requests
// ============================================================================

export default apiClient

