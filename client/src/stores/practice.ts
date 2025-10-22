import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import { questionsAPI, practiceAPI } from '@/services'
import type { Question, PracticeSet, PracticeHistory, FilterOptions } from '@types'

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
      
      filterOptions.value = await questionsAPI.getFilters()
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

      const result = await practiceAPI.create({
        ...params,
        userId: 'anonymous' // For now, using anonymous user
      })

      currentPracticeSet.value = {
        id: result.practiceSetId,
        user_id: 'anonymous',
        set_name: params.setName || `Practice Set ${new Date().toLocaleDateString()}`,
        test_type: params.testType,
        domains: params.domains,
        difficulties: params.difficulties,
        skills: params.skills,
        question_count: result.questions.length,
        exclude_active: params.excludeActive,
        exclude_previous: params.excludePrevious,
        created_at: new Date().toISOString()
      }
      
      currentQuestions.value = result.questions
      
      return result
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

      practiceHistory.value = await practiceAPI.getHistory(userId)
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to fetch practice history'
      console.error('Error fetching practice history:', err)
    } finally {
      loading.value = false
    }
  }

  async function fetchPracticeSet(practiceSetId: string) {
    try {
      loading.value = true
      error.value = null

      const result = await practiceAPI.getSet(practiceSetId)
      currentPracticeSet.value = result.practiceSet
      currentQuestions.value = result.questions
    } catch (err: any) {
      error.value = err.response?.data?.error || 'Failed to fetch practice set'
      console.error('Error fetching practice set:', err)
    } finally {
      loading.value = false
    }
  }

  async function submitPracticeSet(practiceSetId: string, answers: Array<{
    questionId: number
    userAnswer: string
  }>) {
    try {
      loading.value = true
      error.value = null

      const result = await practiceAPI.submit(practiceSetId, {
        answers,
        userId: 'anonymous'
      })

      return result
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

      await practiceAPI.resetHistory(userId)
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
      const result = await practiceAPI.getExcludedQuestions(userId)
      return result.excludedQuestionIds
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
