import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import axios from 'axios'

export interface Question {
  id: number
  question_id: string
  test_type: string
  domain: string
  subdomain?: string
  difficulty: string
  skill: string
  question_text: string
  question_type?: string
  correct_answer: string
  explanation?: string
  is_active: boolean
}

export interface PracticeSet {
  id: number
  user_id: string
  set_name: string
  test_type: string
  domains: string[]
  difficulties: string[]
  skills: string[]
  question_count: number
  exclude_active: boolean
  exclude_previous: boolean
  created_at: string
  completed_at?: string
}

export interface PracticeHistory {
  id: number
  user_id: string
  practice_set_id: number
  total_questions: number
  correct_answers: number
  total_time?: number
  score: number
  completed_at: string
}

export interface FilterOptions {
  testTypes: string[]
  domains: string[]
  difficulties: string[]
  skills: string[]
}

export const usePracticeStore = defineStore('practice', () => {
  // State
  const filterOptions = ref<FilterOptions>({
    testTypes: [],
    domains: [],
    difficulties: [],
    skills: []
  })
  
  const currentPracticeSet = ref<PracticeSet | null>(null)
  const currentQuestions = ref<Question[]>([])
  const practiceHistory = ref<PracticeHistory[]>([])
  const loading = ref(false)
  const error = ref<string | null>(null)

  // Getters
  const availableDomains = computed(() => filterOptions.value.domains)
  const availableDifficulties = computed(() => filterOptions.value.difficulties)
  const availableSkills = computed(() => filterOptions.value.skills)
  const availableTestTypes = computed(() => filterOptions.value.testTypes)

  // Actions
  async function fetchFilterOptions() {
    try {
      loading.value = true
      error.value = null
      
      const response = await axios.get('/api/questions/filters')
      filterOptions.value = response.data
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to fetch filter options'
      console.error('Error fetching filter options:', err)
    } finally {
      loading.value = false
    }
  }

  async function generatePracticeSet(params: {
    testType: string
    domains: string[]
    difficulties: string[]
    skills: string[]
    questionCount: number
    excludeActive: boolean
    excludePrevious: boolean
    setName?: string
  }) {
    try {
      loading.value = true
      error.value = null

      const response = await axios.post('/api/practice/create', {
        ...params,
        userId: 'anonymous' // For now, using anonymous user
      })

      currentPracticeSet.value = {
        id: response.data.practiceSetId,
        user_id: 'anonymous',
        set_name: params.setName || `Practice Set ${new Date().toLocaleDateString()}`,
        test_type: params.testType,
        domains: params.domains,
        difficulties: params.difficulties,
        skills: params.skills,
        question_count: response.data.questions.length,
        exclude_active: params.excludeActive,
        exclude_previous: params.excludePrevious,
        created_at: new Date().toISOString()
      }
      
      currentQuestions.value = response.data.questions
      
      return response.data
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to generate practice set'
      console.error('Error generating practice set:', err)
      throw err
    } finally {
      loading.value = false
    }
  }

  async function fetchPracticeHistory(userId: string = 'anonymous') {
    try {
      loading.value = true
      error.value = null

      const response = await axios.get(`/api/practice/history/${userId}`)
      practiceHistory.value = response.data
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to fetch practice history'
      console.error('Error fetching practice history:', err)
    } finally {
      loading.value = false
    }
  }

  async function fetchPracticeSet(practiceSetId: number) {
    try {
      loading.value = true
      error.value = null

      const response = await axios.get(`/api/practice/set/${practiceSetId}`)
      currentPracticeSet.value = response.data.practiceSet
      currentQuestions.value = response.data.questions
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to fetch practice set'
      console.error('Error fetching practice set:', err)
    } finally {
      loading.value = false
    }
  }

  async function submitPracticeSet(practiceSetId: number, answers: Array<{
    questionId: number
    userAnswer: string
    timeSpent: number
  }>) {
    try {
      loading.value = true
      error.value = null

      const response = await axios.post(`/api/practice/submit/${practiceSetId}`, {
        answers,
        userId: 'anonymous'
      })

      return response.data
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to submit practice set'
      console.error('Error submitting practice set:', err)
      throw err
    } finally {
      loading.value = false
    }
  }

  async function resetPracticeHistory(userId: string = 'anonymous') {
    try {
      loading.value = true
      error.value = null

      await axios.delete(`/api/practice/history/${userId}`)
      practiceHistory.value = []
      
      // Also clear current practice set if it belongs to this user
      if (currentPracticeSet.value?.user_id === userId) {
        currentPracticeSet.value = null
        currentQuestions.value = []
      }
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to reset practice history'
      console.error('Error resetting practice history:', err)
      throw err
    } finally {
      loading.value = false
    }
  }

  async function getExcludedQuestionIds(userId: string = 'anonymous') {
    try {
      const response = await axios.get(`/api/practice/excluded/${userId}`)
      return response.data.excludedQuestionIds
    } catch (err: any) {
      console.error('Error fetching excluded question IDs:', err)
      return []
    }
  }

  function clearError() {
    error.value = null
  }

  function clearCurrentPracticeSet() {
    currentPracticeSet.value = null
    currentQuestions.value = []
  }

  return {
    // State
    filterOptions,
    currentPracticeSet,
    currentQuestions,
    practiceHistory,
    loading,
    error,
    
    // Getters
    availableDomains,
    availableDifficulties,
    availableSkills,
    availableTestTypes,
    
    // Actions
    fetchFilterOptions,
    generatePracticeSet,
    fetchPracticeHistory,
    fetchPracticeSet,
    submitPracticeSet,
    resetPracticeHistory,
    getExcludedQuestionIds,
    clearError,
    clearCurrentPracticeSet
  }
})
