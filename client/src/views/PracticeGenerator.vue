<template>
  <div class="container">
    <div class="page-header">
      <h1>Generate SAT Practice Set</h1>
      <p class="text-muted">Create a customized practice set from the College Board question bank</p>
    </div>

    <!-- Filter Options Card -->
    <div class="card">
      <h2>Practice Set Configuration</h2>
      
      <form @submit.prevent="handleGeneratePractice">
        <!-- User Selection -->
        <div class="form-group">
          <label class="form-label">User *</label>
          <select 
            v-model="selectedUser" 
            class="form-control"
            required
          >
            <option value="">Select user</option>
            <option 
              v-for="user in users" 
              :key="user.userId" 
              :value="user.userId"
            >
              {{ user.name }}
            </option>
          </select>
          <small class="form-text text-muted">
            Selected User ID: {{ selectedUser || 'None' }}
          </small>
        </div>

        <div class="grid grid-2">
          <!-- Assessment -->
          <div class="form-group">
            <label class="form-label">Assessment *</label>
            <select 
              v-model="filters.assessment" 
              class="form-control"
              required
            >
              <option value="">Select assessment</option>
              <option 
                v-for="assessment in availableAssessments" 
                :key="assessment" 
                :value="assessment"
              >
                {{ assessment }}
              </option>
            </select>
          </div>

          <!-- Test Type -->
          <div class="form-group">
            <label class="form-label">Test Type *</label>
            <select 
              v-model="filters.testType" 
              class="form-control"
              required
              :disabled="!filters.assessment"
            >
              <option value="">Select test type</option>
              <option 
                v-for="testType in availableTestTypesFromHierarchy" 
                :key="testType" 
                :value="testType"
              >
                {{ testType }}
              </option>
            </select>
          </div>

          <!-- Question Count -->
          <div class="form-group">
            <label class="form-label">Number of Questions *</label>
            <input 
              v-model.number="filters.questionCount" 
              type="number" 
              min="1" 
              max="100"
              class="form-control"
              required
            >
          </div>
        </div>

        <!-- Domains -->
        <div v-if="filters.testType" class="form-group">
          <label class="form-label">Domains *</label>
          <div v-if="availableDomains.length === 0" class="text-muted">
            No domains available for selected test type
          </div>
          <div v-else class="checkbox-group">
            <label 
              v-for="domain in availableDomains" 
              :key="domain" 
              class="checkbox-item"
            >
              <input 
                type="checkbox" 
                :value="domain" 
                v-model="filters.domains"
              >
              {{ domain }}
            </label>
          </div>
        </div>

        <!-- Skills -->
        <div v-if="filters.domains.length > 0" class="form-group">
          <label class="form-label">Skills *</label>
          <div v-if="availableSkills.length === 0" class="text-muted">
            No skills available for selected domains
          </div>
          <div v-else class="checkbox-group skills-grid">
            <label 
              v-for="skill in availableSkills" 
              :key="skill" 
              class="checkbox-item"
            >
              <input 
                type="checkbox" 
                :value="skill" 
                v-model="filters.skills"
              >
              {{ skill }}
            </label>
          </div>
        </div>

        <!-- Difficulty -->
        <div class="form-group">
          <label class="form-label">Difficulty *</label>
          <div class="checkbox-group">
            <label class="checkbox-item">
              <input 
                type="checkbox" 
                value="Easy" 
                v-model="filters.difficulties"
              >
              Easy
            </label>
            <label class="checkbox-item">
              <input 
                type="checkbox" 
                value="Medium" 
                v-model="filters.difficulties"
              >
              Medium
            </label>
            <label class="checkbox-item">
              <input 
                type="checkbox" 
                value="Hard" 
                v-model="filters.difficulties"
              >
              Hard
            </label>
          </div>
        </div>

        <!-- Options -->
        <div class="form-group">
          <label class="form-label">Options</label>
          <div class="checkbox-group">
            <label class="checkbox-item">
              <input 
                type="checkbox" 
                v-model="filters.excludePrevious"
              >
              Exclude Previously Used Questions
            </label>
          </div>
        </div>

        <!-- Set Name -->
        <div class="form-group">
          <label class="form-label">Practice Set Name (Optional)</label>
          <input 
            v-model="filters.setName" 
            type="text" 
            class="form-control"
            placeholder="Enter a name for this practice set"
          >
        </div>

        <!-- Error Message -->
        <div v-if="error" class="alert alert-danger">
          {{ error }}
        </div>

        <!-- Generate Button -->
        <div class="text-center">
          <button 
            type="submit" 
            class="btn btn-primary"
            :disabled="loading || !showGenerateButton"
          >
            <span v-if="loading" class="spinner"></span>
            {{ loading ? 'Generating...' : 'Generate Practice Set' }}
          </button>
        </div>
      </form>
    </div>

    <!-- Practice Set Preview -->
    <div v-if="currentPracticeSet" class="card">
      <h2>Generated Practice Set</h2>
      <div class="practice-set-info">
        <p><strong>Name:</strong> {{ currentPracticeSet.set_name }}</p>
        <p><strong>Test Type:</strong> {{ currentPracticeSet.test_type }}</p>
        <p><strong>Questions:</strong> {{ currentPracticeSet.question_count }}</p>
        <p><strong>Domains:</strong> {{ currentPracticeSet.domains.join(', ') }}</p>
        <p><strong>Difficulty:</strong> {{ currentPracticeSet.difficulties.join(', ') }}</p>
        <p><strong>Skills:</strong> {{ currentPracticeSet.skills.join(', ') }}</p>
      </div>
      
      <div class="text-center mt-3">
        <button 
          @click="startPractice" 
          class="btn btn-success"
        >
          Start Practice
        </button>
        <button 
          @click="clearPracticeSet" 
          class="btn btn-secondary ml-2"
        >
          Clear
        </button>
      </div>
    </div>

    <!-- Practice Session -->
    <div v-if="showPracticeSession && currentQuestions.length > 0" class="card">
      <div class="practice-session-header">
        <h2>Practice Session</h2>
        <div class="progress-info">
          <span>Question {{ currentQuestionIndex + 1 }} of {{ currentQuestions.length }}</span>
          <div class="progress-bar">
            <div 
              class="progress-fill" 
              :style="{ width: `${((currentQuestionIndex + 1) / currentQuestions.length) * 100}%` }"
            ></div>
          </div>
        </div>
      </div>

      <div class="question-container">
        <div class="question">
          <div class="question-header">
            <h3>Question {{ currentQuestionIndex + 1 }}</h3>
            <div class="question-meta">
              <span class="badge badge-domain">{{ currentQuestions[currentQuestionIndex].domain }}</span>
              <span class="badge badge-difficulty">{{ currentQuestions[currentQuestionIndex].difficulty }}</span>
              <span class="badge badge-skill">{{ currentQuestions[currentQuestionIndex].skill }}</span>
            </div>
          </div>
          
          <div class="question-content">
            <pre class="question-text">{{ currentQuestions[currentQuestionIndex].question_text }}</pre>
          </div>
        </div>

        <div class="answer-section">
          <label class="form-label">Your Answer:</label>
          <textarea 
            v-model="currentAnswer" 
            class="form-control answer-input"
            rows="3"
            placeholder="Enter your answer here..."
          ></textarea>
        </div>

        <div class="correct-answer-section">
          <button 
            @click="toggleAnswer" 
            class="btn btn-outline"
            type="button"
          >
            {{ showCorrectAnswer ? 'Hide Answer' : 'Show Answer' }}
          </button>
          
          <div v-if="showCorrectAnswer" class="answer-reveal">
            <div class="correct-answer">
              <strong>Correct Answer:</strong> {{ currentQuestions[currentQuestionIndex].correct_answer }}
            </div>
            
            <div v-if="currentQuestions[currentQuestionIndex].explanation" class="explanation">
              <strong>Explanation:</strong>
              <pre class="explanation-text">{{ currentQuestions[currentQuestionIndex].explanation }}</pre>
            </div>
            
            <div v-if="currentQuestions[currentQuestionIndex].answer_analysis" class="rationale">
              <strong>Rationale:</strong>
              <pre class="rationale-text">{{ currentQuestions[currentQuestionIndex].answer_analysis }}</pre>
            </div>
          </div>
        </div>

        <div class="question-navigation">
          <button 
            @click="previousQuestion" 
            class="btn btn-secondary"
            :disabled="currentQuestionIndex === 0"
          >
            ← Previous
          </button>
          <button 
            @click="nextQuestion" 
            class="btn btn-primary"
            :disabled="currentQuestionIndex === currentQuestions.length - 1"
          >
            Next →
          </button>
        </div>
      </div>

      <div class="practice-actions">
        <button 
          @click="submitPractice" 
          class="btn btn-success"
          :disabled="!allQuestionsAnswered"
        >
          Submit Practice Set
        </button>
        <button 
          @click="exitPractice" 
          class="btn btn-secondary"
        >
          Exit Practice
        </button>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, onMounted, watch } from 'vue'
import { usePracticeStore } from '@/stores/practice'
import { userAPI } from '@/services'
import { ASSESSMENT_HIERARCHY } from '../../../types/hierarchy'

const practiceStore = usePracticeStore()

// Reactive data
const filters = ref({
  assessment: '',
  testType: '',
  domains: [] as string[],
  difficulties: [] as string[],
  skills: [] as string[],
  questionCount: 10,
  excludePrevious: false,
  setName: ''
})

const showPracticeSession = ref(false)
const currentQuestionIndex = ref(0)
const currentAnswer = ref('')
const answers = ref<Array<{ questionId: number; userAnswer: string }>>([])
const showCorrectAnswer = ref(false)

// User data
interface UserOption {
  userId: string
  name: string
  firstName: string
  lastName: string
}
const users = ref<UserOption[]>([])
const selectedUser = ref('')

// Computed properties
const loading = computed(() => practiceStore.loading)
const error = computed(() => practiceStore.error)
const currentPracticeSet = computed(() => practiceStore.currentPracticeSet)
const currentQuestions = computed(() => practiceStore.currentQuestions)

// Available assessments from hierarchy
const availableAssessments = computed(() => {
  return Object.keys(ASSESSMENT_HIERARCHY)
})

// Filtered test types based on selected assessment
const availableTestTypesFromHierarchy = computed(() => {
  if (!filters.value.assessment) return []
  const assessmentData = ASSESSMENT_HIERARCHY[filters.value.assessment]
  return assessmentData ? Object.keys(assessmentData) : []
})

// Filtered domains based on selected assessment and test type
const availableDomains = computed(() => {
  if (!filters.value.assessment || !filters.value.testType) return []
  const assessmentData = ASSESSMENT_HIERARCHY[filters.value.assessment]
  if (!assessmentData) return []
  return Object.keys(assessmentData[filters.value.testType] || {})
})

// Filtered skills based on selected domains
const availableSkills = computed(() => {
  if (!filters.value.assessment || !filters.value.testType || filters.value.domains.length === 0) return []
  
  const skills: string[] = []
  const assessmentData = ASSESSMENT_HIERARCHY[filters.value.assessment]
  if (!assessmentData) return []
  
  const testTypeData = assessmentData[filters.value.testType] || {}
  
  filters.value.domains.forEach(domain => {
    const domainSkills = testTypeData[domain] || []
    skills.push(...domainSkills)
  })
  
  return skills
})

const showGenerateButton = computed(() => {
  return selectedUser.value.length > 0 &&
         filters.value.assessment.length > 0 &&
         filters.value.testType.length > 0 && 
         filters.value.domains.length > 0 && 
         filters.value.skills.length > 0
})

const allQuestionsAnswered = computed(() => {
  return answers.value.length === currentQuestions.value.length &&
         answers.value.every(answer => answer.userAnswer.trim() !== '')
})

// Methods
async function handleGeneratePractice() {
  try {
    await practiceStore.generatePracticeSet({
      ...filters.value
    })
  } catch (err) {
    console.error('Error generating practice set:', err)
  }
}

function startPractice() {
  showPracticeSession.value = true
  currentQuestionIndex.value = 0
  currentAnswer.value = ''
  answers.value = []
  showCorrectAnswer.value = false
}

function toggleAnswer() {
  showCorrectAnswer.value = !showCorrectAnswer.value
}

function nextQuestion() {
  saveCurrentAnswer()
  if (currentQuestionIndex.value < currentQuestions.value.length - 1) {
    currentQuestionIndex.value++
    loadCurrentAnswer()
    showCorrectAnswer.value = false // Hide answer when moving to next question
  }
}

function previousQuestion() {
  saveCurrentAnswer()
  if (currentQuestionIndex.value > 0) {
    currentQuestionIndex.value--
    loadCurrentAnswer()
    showCorrectAnswer.value = false // Hide answer when moving to previous question
  }
}

function saveCurrentAnswer() {
  const currentQuestion = currentQuestions.value[currentQuestionIndex.value]
  const existingAnswerIndex = answers.value.findIndex(
    answer => answer.questionId === currentQuestion.id
  )
  
  const answerData = {
    questionId: currentQuestion.id,
    userAnswer: currentAnswer.value
  }
  
  if (existingAnswerIndex >= 0) {
    answers.value[existingAnswerIndex] = answerData
  } else {
    answers.value.push(answerData)
  }
}

function loadCurrentAnswer() {
  const currentQuestion = currentQuestions.value[currentQuestionIndex.value]
  const existingAnswer = answers.value.find(
    answer => answer.questionId === currentQuestion.id
  )
  currentAnswer.value = existingAnswer?.userAnswer || ''
}

async function submitPractice() {
  saveCurrentAnswer()
  
  try {
    const result = await practiceStore.submitPracticeSet(
      currentPracticeSet.value!.id,
      answers.value
    )
    
    alert(`Practice completed! Score: ${result.score}% (${result.correctAnswers}/${result.totalQuestions})`)
    exitPractice()
    
    // Refresh practice history
    await practiceStore.fetchPracticeHistory()
  } catch (err) {
    console.error('Error submitting practice:', err)
  }
}

function exitPractice() {
  showPracticeSession.value = false
  currentQuestionIndex.value = 0
  currentAnswer.value = ''
  answers.value = []
  showCorrectAnswer.value = false
}

function clearPracticeSet() {
  practiceStore.clearCurrentPracticeSet()
}

// Watchers
watch(currentQuestionIndex, () => {
  loadCurrentAnswer()
})

// Reset everything when assessment changes
watch(() => filters.value.assessment, () => {
  filters.value.testType = ''
  filters.value.domains = []
  filters.value.skills = []
})

// Reset domains and skills when test type changes
watch(() => filters.value.testType, () => {
  filters.value.domains = []
  filters.value.skills = []
})

// Reset skills when domains change
watch(() => filters.value.domains, () => {
  // Remove skills that are no longer available
  const currentAvailableSkills = availableSkills.value
  filters.value.skills = filters.value.skills.filter(skill => 
    currentAvailableSkills.includes(skill)
  )
})

// Fetch users
async function fetchUsers() {
  try {
    const response = await userAPI.getAll()
    users.value = response.users as unknown as UserOption[]
  } catch (err) {
    console.error('Error fetching users:', err)
  }
}

// Watch selectedUser and update store
watch(selectedUser, (newUserId) => {
  if (newUserId) {
    practiceStore.setSelectedUser(newUserId)
  }
})

// Lifecycle
onMounted(async () => {
  if (practiceStore.filterOptions.testTypes.length === 0) {
    practiceStore.fetchFilterOptions()
  }
  await fetchUsers()
})
</script>

<style scoped>
.page-header {
  text-align: center;
  margin-bottom: 2rem;
}

.page-header h1 {
  color: #333;
  margin-bottom: 0.5rem;
}

.practice-set-info {
  background-color: #f8f9fa;
  padding: 1rem;
  border-radius: 8px;
  margin-bottom: 1rem;
}

.practice-set-info p {
  margin-bottom: 0.5rem;
}

.practice-session-header {
  margin-bottom: 2rem;
}

.progress-info {
  margin-bottom: 1rem;
}

.progress-bar {
  width: 100%;
  height: 8px;
  background-color: #e9ecef;
  border-radius: 4px;
  overflow: hidden;
  margin-top: 0.5rem;
}

.progress-fill {
  height: 100%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  transition: width 0.3s ease;
}

.question-container {
  margin-bottom: 2rem;
}

.question {
  margin-bottom: 2rem;
  padding: 1.5rem;
  background-color: #f8f9fa;
  border-radius: 8px;
  border: 1px solid #dee2e6;
}

.question-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 1.5rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #dee2e6;
}

.question h3 {
  color: #333;
  margin: 0;
}

.question-content {
  margin-top: 1rem;
}

.question-text {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-size: 1.1rem;
  line-height: 1.8;
  color: #212529;
  white-space: pre-wrap;
  word-wrap: break-word;
  background-color: white;
  padding: 1.5rem;
  border-radius: 6px;
  border: 1px solid #dee2e6;
  margin: 0;
}

.question-meta {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
  align-items: center;
}

.badge {
  padding: 0.35rem 0.75rem;
  border-radius: 6px;
  font-size: 0.875rem;
  font-weight: 500;
}

.badge-domain {
  background-color: #e7f3ff;
  color: #0056b3;
}

.badge-difficulty {
  background-color: #fff3cd;
  color: #856404;
}

.badge-skill {
  background-color: #d1ecf1;
  color: #0c5460;
}

.answer-section {
  margin-bottom: 2rem;
  padding: 1rem;
  background-color: #f8f9fa;
  border-radius: 8px;
}

.answer-section .form-label {
  font-weight: 600;
  margin-bottom: 0.5rem;
  color: #333;
}

.answer-input {
  font-size: 1rem;
  padding: 0.75rem;
  border: 2px solid #ced4da;
  border-radius: 6px;
  transition: border-color 0.3s;
}

.answer-input:focus {
  border-color: #667eea;
  outline: none;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
}

.correct-answer-section {
  margin-bottom: 2rem;
  padding: 1rem;
}

.btn-outline {
  background-color: white;
  border: 2px solid #667eea;
  color: #667eea;
  padding: 0.5rem 1.5rem;
  border-radius: 6px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.3s;
}

.btn-outline:hover {
  background-color: #667eea;
  color: white;
}

.answer-reveal {
  margin-top: 1.5rem;
  padding: 1.5rem;
  background-color: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid #28a745;
}

.correct-answer {
  padding: 1rem;
  background-color: #d4edda;
  border-radius: 6px;
  margin-bottom: 1rem;
  color: #155724;
}

.correct-answer strong {
  color: #155724;
}

.explanation,
.rationale {
  margin-top: 1rem;
  padding: 1rem;
  background-color: white;
  border-radius: 6px;
  border: 1px solid #dee2e6;
}

.explanation-text,
.rationale-text {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-size: 1rem;
  line-height: 1.7;
  color: #495057;
  white-space: pre-wrap;
  word-wrap: break-word;
  margin-top: 0.5rem;
  margin-bottom: 0;
}

.question-navigation {
  display: flex;
  justify-content: space-between;
  margin-bottom: 2rem;
  gap: 1rem;
}

.question-navigation .btn {
  min-width: 120px;
}

.practice-actions {
  text-align: center;
  padding-top: 1rem;
  border-top: 1px solid #e9ecef;
}

.ml-2 {
  margin-left: 0.5rem;
}

.spinner {
  display: inline-block;
  width: 16px;
  height: 16px;
  border: 2px solid transparent;
  border-top: 2px solid currentColor;
  border-radius: 50%;
  animation: spin 1s linear infinite;
  margin-right: 0.5rem;
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Disabled button styles */
.btn:disabled,
.btn-primary:disabled {
  opacity: 0.5;
  cursor: not-allowed;
  background-color: #6c757d;
  border-color: #6c757d;
}

.btn-secondary:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

.btn-success:disabled {
  opacity: 0.5;
  cursor: not-allowed;
}

.skills-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 0.5rem;
}

@media (min-width: 768px) {
  .skills-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>
