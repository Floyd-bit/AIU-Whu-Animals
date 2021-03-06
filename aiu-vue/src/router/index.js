import Vue from 'vue'
import Router from 'vue-router'
// 导入刚才编写的组件
import AppIndex from '../components/home/Appindex'
import Login from '../components/Login'
import Home from '../components/Home'
import AnimalIndex from '../components/Animals/AnimalIndex'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    // 下面都是固定的写法
    {
      path: '/home',
      name: 'Home',
      component: Home,
      // 重定向，Home无需直接访问
      // Home为主界面父组件，其中包括...
      redirect: 'index',
      children: [
        {
          path: '/index',
          name: 'AppIndex',
          component: AppIndex,
          meta: {
            requiredAuth: true
          }
        },
        {
          path: '/animals',
          name: 'AnimalIndex',
          component: AnimalIndex,
          meta: {
            requiredAuth: true
          }
        }
      ]
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    }
  ]
})
