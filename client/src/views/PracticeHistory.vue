<template>
  <div class="container">
    <div class="page-header">
      <h1>Practice History</h1>
      <p class="text-muted">View your past practice sessions and track your progress</p>
    </div>

    <!-- Loading State -->
    <div v-if="loading" class="loading">
      <div class="spinner"></div>
      <p>Loading practice history...</p>
    </div>

    <!-- Error State -->
    <div v-else-if="error" class="alert alert-danger">
      {{ error }}
    </div>

    <!-- Empty State -->
    <div v-else-if="practiceHistory.length === 0" class="card text-center">
      <h2>No Practice History</h2>
      <p class="text-muted">You haven't completed any practice sets yet.</p>
      <router-link to="/" class="btn btn-primary">
        Create Your First Practice Set
      </router-link>
    </div>

    <!-- Practice History List -->
    <div v-else>
      <!-- History Actions -->
      <div class="card">
        <div class="history-actions">
          <h2>Practice History</h2>
          <button 
            @click="handleResetHistory" 
            class="btn btn-danger"
            :disabled="loading"
          >
            Reset All History
          </button>
        </div>
      </div>

      <!-- History Items -->
      <div v-for="item in practiceHistory" :key="item.id" class="card">
        <div class="history-item">
          <div class="history-header">
            <h3>{{ item.set_name || `Practice Set ${item.id}` }}</h3>
            <div class="history-meta">
              <span class="date">{{ formatDate(item.created_at) }}</span>
              <span v-if="item.completed_at" class="status completed">Completed</span>
              <span v-else class="status pending">In Progress</span>
            </div>
          </div>

          <div class="history-details">
            <div class="detail-grid">
              <div class="detail-item">
                <strong>Test Type:</strong> {{ item.test_type }}
              </div>
              <div class="detail-item">
                <strong>Questions:</strong> {{ item.question_count }}
              </div>
              <div class="detail-item">
                <strong>Domains:</strong> {{ formatArray(item.domains) }}
              </div>
              <div class="detail-item">
                <strong>Difficulty:</strong> {{ formatArray(item.difficulties) }}
              </div>
              <div class="detail-item">
                <strong>Skills:</strong> {{ formatArray(item.skills) }}
              </div>
              <div class="detail-item">
                <strong>Options:</strong> 
                <span v-if="item.exclude_previous">Excluded Previous Questions</span>
                <span v-if="!item.exclude_previous">None</span>
              </div>
            </div>

            <!-- Score Display -->
            <div v-if="item.score !== null && item.score !== undefined" class="score-display">
              <div class="score-circle">
                <div class="score-value">{{ Math.round(item.score) }}%</div>
                <div class="score-label">Score</div>
              </div>
              <div class="score-details">
                <p><strong>{{ item.correct_answers || 0 }}</strong> correct out of <strong>{{ item.total_questions || 0 }}</strong> questions</p>
                <p v-if="item.completed_at">Completed on {{ formatDate(item.completed_at) }}</p>
              </div>
            </div>
          </div>

          <div class="history-actions">
            <button 
              @click="viewPracticeSet(item.id)" 
              class="btn btn-primary"
            >
              View Details
            </button>
            <button 
              v-if="!item.completed_at" 
              @click="continuePractice(item.id)" 
              class="btn btn-success"
            >
              Continue Practice
            </button>
            <button 
              @click="deletePracticeSet(item.id)" 
              class="btn btn-danger"
            >
              Delete
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Practice Set Detail Modal -->
    <div v-if="selectedPracticeSet" class="modal-overlay" @click="closeModal">
      <div class="modal" @click.stop>
        <div class="modal-header">
          <h2>{{ selectedPracticeSet.practiceSet.set_name || `Practice Set ${selectedPracticeSet.practiceSet.id}` }}</h2>
          <button @click="closeModal" class="btn-close">&times;</button>
        </div>
        
        <div class="modal-body">
          <div class="practice-set-details">
            <h3>Configuration</h3>
            <div class="detail-grid">
              <div class="detail-item">
                <strong>Test Type:</strong> {{ selectedPracticeSet.practiceSet.test_type }}
              </div>
              <div class="detail-item">
                <strong>Question Count:</strong> {{ selectedPracticeSet.practiceSet.question_count }}
              </div>
              <div class="detail-item">
                <strong>Domains:</strong> {{ formatArray(selectedPracticeSet.practiceSet.domains) }}
              </div>
              <div class="detail-item">
                <strong>Difficulties:</strong> {{ formatArray(selectedPracticeSet.practiceSet.difficulties) }}
              </div>
              <div class="detail-item">
                <strong>Skills:</strong> {{ formatArray(selectedPracticeSet.practiceSet.skills) }}
              </div>
            </div>

            <h3>Questions</h3>
            <div class="questions-list">
              <div 
                v-for="(question, index) in selectedPracticeSet.questions" 
                :key="question.id"
                class="question-item"
              >
                <div class="question-header">
                  <span class="question-number">Q{{ index + 1 }}</span>
                  <span class="question-domain">{{ question.domain }}</span>
                  <span class="question-difficulty">{{ question.difficulty }}</span>
                  <span v-if="question.is_correct !== null" class="question-result">
                    {{ question.is_correct ? '✓ Correct' : '✗ Incorrect' }}
                  </span>
                </div>
                <div class="question-text">{{ question.question_text }}</div>
                <div v-if="question.user_answer" class="question-answer">
                  <strong>Your Answer:</strong> {{ question.user_answer }}
                </div>
                <div v-if="question.correct_answer" class="question-correct">
                  <strong>Correct Answer:</strong> {{ question.correct_answer }}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import { usePracticeStore, type PracticeHistory, type PracticeSet, type Question } from '@/stores/practice'

const router = useRouter()
const practiceStore = usePracticeStore()

// Reactive data
const selectedPracticeSet = ref<{
  practiceSet: PracticeSet
  questions: Question[]
} | null>(null)

// Computed properties
const practiceHistory = computed(() => practiceStore.practiceHistory)
const loading = computed(() => practiceStore.loading)
const error = computed(() => practiceStore.error)

// Methods
async function loadPracticeHistory() {
  await practiceStore.fetchPracticeHistory('anonymous')
}

async function handleResetHistory() {
  if (confirm('Are you sure you want to reset all practice history? This action cannot be undone.')) {
    try {
      await practiceStore.resetPracticeHistory('anonymous')
      await loadPracticeHistory()
    } catch (err) {
      console.error('Error resetting practice history:', err)
    }
  }
}

async function viewPracticeSet(practiceSetId: number) {
  try {
    await practiceStore.fetchPracticeSet(practiceSetId)
    selectedPracticeSet.value = {
      practiceSet: practiceStore.currentPracticeSet!,
      questions: practiceStore.currentQuestions
    }
  } catch (err) {
    console.error('Error fetching practice set:', err)
  }
}

function continuePractice(practiceSetId: number) {
  // Navigate to practice generator with the existing practice set
  router.push({
    name: 'home',
    query: { continue: practiceSetId.toString() }
  })
}

async function deletePracticeSet(practiceSetId: number) {
  if (confirm('Are you sure you want to delete this practice set?')) {
    try {
      // Note: This would need a delete endpoint in the backend
      console.log('Delete practice set:', practiceSetId)
      // await practiceStore.deletePracticeSet(practiceSetId)
      await loadPracticeHistory()
    } catch (err) {
      console.error('Error deleting practice set:', err)
    }
  }
}

function closeModal() {
  selectedPracticeSet.value = null
}

function formatDate(dateString: string) {
  return new Date(dateString).toLocaleDateString('en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit'
  })
}

function formatArray(arr: string[] | string) {
  if (typeof arr === 'string') {
    try {
      const parsed = JSON.parse(arr)
      return Array.isArray(parsed) ? parsed.join(', ') : arr
    } catch {
      return arr
    }
  }
  return Array.isArray(arr) ? arr.join(', ') : ''
}

// Lifecycle
onMounted(() => {
  loadPracticeHistory()
})
</script>

<style scoped>
.history-actions {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1rem;
}

.history-actions h2 {
  margin: 0;
}

.history-item {
  margin-bottom: 0;
}

.history-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 1rem;
  flex-wrap: wrap;
}

.history-header h3 {
  margin: 0;
  color: #333;
}

.history-meta {
  display: flex;
  align-items: center;
  gap: 1rem;
  flex-wrap: wrap;
}

.date {
  color: #6c757d;
  font-size: 0.9rem;
}

.status {
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
  font-weight: 500;
}

.status.completed {
  background-color: #d4edda;
  color: #155724;
}

.status.pending {
  background-color: #fff3cd;
  color: #856404;
}

.history-details {
  margin-bottom: 1.5rem;
}

.detail-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 0.5rem;
  margin-bottom: 1rem;
}

.detail-item {
  font-size: 0.9rem;
}

.score-display {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 1rem;
  background-color: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid #667eea;
}

.score-circle {
  text-align: center;
  min-width: 80px;
}

.score-value {
  font-size: 2rem;
  font-weight: bold;
  color: #667eea;
  line-height: 1;
}

.score-label {
  font-size: 0.8rem;
  color: #6c757d;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.score-details p {
  margin: 0.25rem 0;
  font-size: 0.9rem;
}

.history-actions {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

/* Modal Styles */
.modal-overlay {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 1000;
  padding: 2rem;
}

.modal {
  background: white;
  border-radius: 12px;
  max-width: 800px;
  max-height: 90vh;
  width: 100%;
  overflow: hidden;
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

.modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1.5rem;
  border-bottom: 1px solid #e9ecef;
  background-color: #f8f9fa;
}

.modal-header h2 {
  margin: 0;
  color: #333;
}

.btn-close {
  background: none;
  border: none;
  font-size: 1.5rem;
  cursor: pointer;
  color: #6c757d;
  padding: 0;
  width: 30px;
  height: 30px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.btn-close:hover {
  color: #333;
}

.modal-body {
  padding: 1.5rem;
  max-height: calc(90vh - 120px);
  overflow-y: auto;
}

.practice-set-details h3 {
  color: #333;
  margin-bottom: 1rem;
  margin-top: 1.5rem;
}

.practice-set-details h3:first-child {
  margin-top: 0;
}

.questions-list {
  max-height: 400px;
  overflow-y: auto;
}

.question-item {
  padding: 1rem;
  border: 1px solid #e9ecef;
  border-radius: 8px;
  margin-bottom: 1rem;
  background-color: #f8f9fa;
}

.question-header {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  margin-bottom: 0.5rem;
  flex-wrap: wrap;
}

.question-number {
  background-color: #667eea;
  color: white;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
  font-weight: 500;
}

.question-domain,
.question-difficulty {
  background-color: #e9ecef;
  color: #495057;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  font-size: 0.8rem;
}

.question-result {
  font-size: 0.8rem;
  font-weight: 500;
}

.question-result:contains("✓") {
  color: #28a745;
}

.question-result:contains("✗") {
  color: #dc3545;
}

.question-text {
  margin-bottom: 0.5rem;
  font-size: 0.9rem;
  line-height: 1.5;
}

.question-answer,
.question-correct {
  font-size: 0.85rem;
  margin-bottom: 0.25rem;
}

.question-answer {
  color: #495057;
}

.question-correct {
  color: #28a745;
}

/* Responsive Design */
@media (max-width: 768px) {
  .history-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .history-meta {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .score-display {
    flex-direction: column;
    text-align: center;
  }
  
  .detail-grid {
    grid-template-columns: 1fr;
  }
  
  .modal-overlay {
    padding: 1rem;
  }
  
  .modal-header,
  .modal-body {
    padding: 1rem;
  }
}
</style>
