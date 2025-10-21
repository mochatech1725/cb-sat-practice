<template>
  <div class="scraper-manager">
    <div class="card">
      <h2>College Board Question Bank Integration</h2>
      <p class="text-muted">Sync questions from the official College Board SAT Question Bank</p>

      <!-- Status Section -->
      <div class="status-section">
        <h3>Current Status</h3>
        <div v-if="statusLoading" class="loading">
          <div class="spinner"></div>
          <span>Loading status...</span>
        </div>
        <div v-else-if="scraperStatus" class="status-info">
          <div class="status-grid">
            <div class="status-item">
              <strong>Total Questions:</strong> {{ scraperStatus.totalQuestions }}
            </div>
            <div class="status-item">
              <strong>Questions This Week:</strong> {{ scraperStatus.questionsLastWeek }}
            </div>
            <div class="status-item">
              <strong>Last Sync:</strong> {{ formatDate(scraperStatus.lastSync) }}
            </div>
            <div class="status-item">
              <strong>Scraper Status:</strong> 
              <span :class="scraperStatus.scraperAvailable ? 'status-online' : 'status-offline'">
                {{ scraperStatus.scraperAvailable ? 'Available' : 'Offline' }}
              </span>
            </div>
          </div>
        </div>
      </div>

      <!-- Actions Section -->
      <div class="actions-section">
        <h3>Actions</h3>
        
        <!-- Test Connection -->
        <div class="action-group">
          <button 
            @click="testConnection" 
            class="btn btn-secondary"
            :disabled="loading"
          >
            {{ loading ? 'Testing...' : 'Test Connection' }}
          </button>
          <p class="action-description">Test connection to College Board Question Bank</p>
        </div>

        <!-- Get Available Options -->
        <div class="action-group">
          <button 
            @click="getAvailableOptions" 
            class="btn btn-primary"
            :disabled="loading"
          >
            {{ loading ? 'Loading...' : 'Get Available Options' }}
          </button>
          <p class="action-description">Fetch current filter options from College Board</p>
        </div>

        <!-- Sync Questions -->
        <div class="action-group">
          <div class="sync-controls">
            <select v-model="syncFilters.testType" class="form-control">
              <option value="">All Test Types</option>
              <option v-for="testType in availableOptions.testTypes" :key="testType.value" :value="testType.value">
                {{ testType.text }}
              </option>
            </select>
            
            <div class="checkbox-group">
              <label v-for="domain in availableOptions.domains" :key="domain.value" class="checkbox-item">
                <input type="checkbox" :value="domain.value" v-model="syncFilters.domains">
                {{ domain.text }}
              </label>
            </div>
          </div>
          
          <button 
            @click="syncQuestions" 
            class="btn btn-success"
            :disabled="loading"
          >
            {{ loading ? 'Syncing...' : 'Sync Questions' }}
          </button>
          <p class="action-description">Sync questions with selected filters</p>
        </div>

        <!-- Bulk Import -->
        <div class="action-group">
          <div class="bulk-controls">
            <input 
              v-model.number="bulkCount" 
              type="number" 
              min="1" 
              max="500" 
              class="form-control"
              placeholder="Number of questions"
            >
            <select v-model="bulkFilters.testType" class="form-control">
              <option value="">All Test Types</option>
              <option v-for="testType in availableOptions.testTypes" :key="testType.value" :value="testType.value">
                {{ testType.text }}
              </option>
            </select>
          </div>
          
          <button 
            @click="bulkImport" 
            class="btn btn-warning"
            :disabled="loading || bulkCount < 1"
          >
            {{ loading ? 'Importing...' : `Bulk Import ${bulkCount} Questions` }}
          </button>
          <p class="action-description">Import multiple questions in batches (respects server limits)</p>
        </div>

        <!-- Cleanup -->
        <div class="action-group">
          <button 
            @click="cleanup" 
            class="btn btn-danger"
            :disabled="loading"
          >
            {{ loading ? 'Cleaning...' : 'Cleanup Resources' }}
          </button>
          <p class="action-description">Clean up scraper resources and connections</p>
        </div>
      </div>

      <!-- Results Section -->
      <div v-if="results.length > 0" class="results-section">
        <h3>Recent Results</h3>
        <div v-for="(result, index) in results" :key="index" class="result-item">
          <div class="result-header">
            <span class="result-type">{{ result.type }}</span>
            <span class="result-time">{{ formatTime(result.timestamp) }}</span>
          </div>
          <div class="result-content">
            <p>{{ result.message }}</p>
            <div v-if="result.details" class="result-details">
              <pre>{{ JSON.stringify(result.details, null, 2) }}</pre>
            </div>
          </div>
        </div>
      </div>

      <!-- Error Display -->
      <div v-if="error" class="alert alert-danger">
        <strong>Error:</strong> {{ error }}
      </div>

      <!-- Success Display -->
      <div v-if="successMessage" class="alert alert-success">
        {{ successMessage }}
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, reactive, onMounted } from 'vue'
import axios from 'axios'

// Reactive data
const loading = ref(false)
const error = ref<string | null>(null)
const successMessage = ref<string | null>(null)
const scraperStatus = ref<any>(null)
const statusLoading = ref(false)
const availableOptions = ref<any>({
  testTypes: [],
  domains: [],
  difficulties: [],
  skills: []
})

const syncFilters = reactive({
  testType: '',
  domains: [] as string[],
  difficulties: [] as string[],
  skills: [] as string[]
})

const bulkFilters = reactive({
  testType: ''
})

const bulkCount = ref(50)
const results = ref<Array<{
  type: string
  message: string
  timestamp: Date
  details?: any
}>>([])

// Methods
async function loadStatus() {
  statusLoading.value = true
  try {
    const response = await axios.get('/api/scraper/status')
    scraperStatus.value = response.data.status
  } catch (err: any) {
    console.error('Error loading status:', err)
  } finally {
    statusLoading.value = false
  }
}

async function testConnection() {
  loading.value = true
  error.value = null
  successMessage.value = null

  try {
    const response = await axios.get('/api/scraper/test')
    
    addResult('Test Connection', response.data.message, response.data)
    successMessage.value = 'Connection test successful!'
    
    // Reload status after successful test
    await loadStatus()
  } catch (err: any) {
    error.value = err.response?.data?.error || 'Connection test failed'
    addResult('Test Connection', 'Failed', err.response?.data)
  } finally {
    loading.value = false
  }
}

async function getAvailableOptions() {
  loading.value = true
  error.value = null
  successMessage.value = null

  try {
    const response = await axios.get('/api/scraper/options')
    
    availableOptions.value = response.data.options
    addResult('Get Options', `Retrieved ${Object.keys(response.data.options).length} option categories`, response.data.options)
    successMessage.value = 'Available options retrieved successfully!'
  } catch (err: any) {
    error.value = err.response?.data?.error || 'Failed to get available options'
    addResult('Get Options', 'Failed', err.response?.data)
  } finally {
    loading.value = false
  }
}

async function syncQuestions() {
  loading.value = true
  error.value = null
  successMessage.value = null

  try {
    const response = await axios.post('/api/scraper/sync', {
      filters: syncFilters
    })
    
    addResult('Sync Questions', response.data.message, response.data.result)
    successMessage.value = `Successfully synced ${response.data.result.saved} questions!`
    
    // Reload status after successful sync
    await loadStatus()
  } catch (err: any) {
    error.value = err.response?.data?.error || 'Failed to sync questions'
    addResult('Sync Questions', 'Failed', err.response?.data)
  } finally {
    loading.value = false
  }
}

async function bulkImport() {
  loading.value = true
  error.value = null
  successMessage.value = null

  try {
    const response = await axios.post('/api/scraper/bulk-import', {
      questionCount: bulkCount.value,
      filters: bulkFilters
    })
    
    addResult('Bulk Import', response.data.message, { count: bulkCount.value, filters: bulkFilters })
    successMessage.value = `Bulk import started for ${bulkCount.value} questions!`
    
    // Reload status after starting bulk import
    setTimeout(loadStatus, 2000)
  } catch (err: any) {
    error.value = err.response?.data?.error || 'Failed to start bulk import'
    addResult('Bulk Import', 'Failed', err.response?.data)
  } finally {
    loading.value = false
  }
}

async function cleanup() {
  loading.value = true
  error.value = null
  successMessage.value = null

  try {
    const response = await axios.post('/api/scraper/cleanup')
    
    addResult('Cleanup', response.data.message)
    successMessage.value = 'Scraper resources cleaned up successfully!'
    
    // Reload status after cleanup
    await loadStatus()
  } catch (err: any) {
    error.value = err.response?.data?.error || 'Failed to cleanup resources'
    addResult('Cleanup', 'Failed', err.response?.data)
  } finally {
    loading.value = false
  }
}

function addResult(type: string, message: string, details?: any) {
  results.value.unshift({
    type,
    message,
    timestamp: new Date(),
    details
  })
  
  // Keep only last 10 results
  if (results.value.length > 10) {
    results.value = results.value.slice(0, 10)
  }
}

function formatDate(dateString: string) {
  if (!dateString) return 'Never'
  return new Date(dateString).toLocaleString()
}

function formatTime(date: Date) {
  return date.toLocaleTimeString()
}

// Lifecycle
onMounted(() => {
  loadStatus()
})
</script>

<style scoped>
.scraper-manager {
  max-width: 1000px;
  margin: 0 auto;
}

.status-section {
  margin-bottom: 2rem;
}

.status-info {
  background-color: #f8f9fa;
  padding: 1rem;
  border-radius: 8px;
  border-left: 4px solid #667eea;
}

.status-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
}

.status-item {
  font-size: 0.9rem;
}

.status-online {
  color: #28a745;
  font-weight: 500;
}

.status-offline {
  color: #dc3545;
  font-weight: 500;
}

.actions-section {
  margin-bottom: 2rem;
}

.action-group {
  margin-bottom: 1.5rem;
  padding: 1rem;
  background-color: #f8f9fa;
  border-radius: 8px;
}

.action-group h4 {
  margin-bottom: 0.5rem;
  color: #333;
}

.action-description {
  margin-top: 0.5rem;
  margin-bottom: 0;
  font-size: 0.9rem;
  color: #6c757d;
}

.sync-controls,
.bulk-controls {
  margin-bottom: 1rem;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.sync-controls select,
.bulk-controls input,
.bulk-controls select {
  max-width: 300px;
}

.results-section {
  margin-bottom: 2rem;
}

.result-item {
  background-color: #f8f9fa;
  border: 1px solid #e9ecef;
  border-radius: 8px;
  padding: 1rem;
  margin-bottom: 1rem;
}

.result-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.result-type {
  font-weight: 500;
  color: #333;
}

.result-time {
  font-size: 0.8rem;
  color: #6c757d;
}

.result-content p {
  margin-bottom: 0.5rem;
}

.result-details {
  background-color: white;
  border: 1px solid #e9ecef;
  border-radius: 4px;
  padding: 0.5rem;
  margin-top: 0.5rem;
}

.result-details pre {
  margin: 0;
  font-size: 0.8rem;
  overflow-x: auto;
}

/* Responsive design */
@media (max-width: 768px) {
  .status-grid {
    grid-template-columns: 1fr;
  }
  
  .sync-controls,
  .bulk-controls {
    flex-direction: column;
  }
  
  .sync-controls select,
  .bulk-controls input,
  .bulk-controls select {
    max-width: 100%;
  }
}
</style>
