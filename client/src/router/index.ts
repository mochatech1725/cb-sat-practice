import { createRouter, createWebHistory } from 'vue-router'
import PracticeGenerator from '@/views/PracticeGenerator.vue'
import PracticeHistory from '@/views/PracticeHistory.vue'
import ScraperView from '@/views/ScraperView.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'home',
      component: PracticeGenerator
    },
    {
      path: '/history',
      name: 'history',
      component: PracticeHistory
    },
    {
      path: '/scraper',
      name: 'scraper',
      component: ScraperView
    }
  ]
})

export default router
