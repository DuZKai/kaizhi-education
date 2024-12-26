import Layout from '../pages/layout.vue'

export default [
  {
    path: '/app-index',
    component: Layout,
    children: [
      // 课程列表
      {
        path: 'ranking-list-entering',
        name: 'ranking-list-entering',
        component: () => import('../pages/index/ranking-list-index.vue')
      }
    ]
  }
]
