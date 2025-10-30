import { createRouter, createWebHistory } from 'vue-router'
import PracticeGenerator from '@/views/PracticeGenerator.vue'
import PracticeHistory from '@/views/PracticeHistory.vue'

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
    }
  ]
})

export default router
