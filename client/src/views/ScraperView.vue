<template>
  <div class="container">
    <div class="page-header">
      <h1>Question Bank Integration</h1>
      <p class="text-muted">Manage synchronization with the College Board SAT Question Bank</p>
    </div>

    <ScraperManager />
  </div>
</template>

<script setup lang="ts">
import ScraperManager from '@/components/ScraperManager.vue'
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
</style>
