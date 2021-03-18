import Vue from 'vue'
import Router from 'vue-router'
// 导入刚才编写的组件
import Home from '../components/Home'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Default',
      redirect: '/login',
      component: () => import('../components/Login')
    },
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
          component: () => import('../components/home/Appindex')
        },
        {
          path: '/animals',
          name: 'AnimalIndex',
          component: () => import('../components/Animals/AnimalIndex')
        }
      ]
    },
    {
      path: '/login',
      name: 'Login',
      component: () => import('../components/Login')
    },
    {
      path: '/register',
      name: 'Register',
      component: () => import('../components/Register')
    },
    {
      path: '/admin',
      name: 'Admin',
      component: () => import('../components/admin/AdminIndex'),
      meta: {
        requiredAuth: true
      }
    }
  ]
})
export const createRouter = router => new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Default',
      redirect: '/login',
      component: () => import('../components/Login')
    },
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
          component: () => import('../components/home/Appindex')
        },
        {
          path: '/animals',
          name: 'AnimalIndex',
          component: () => import('../components/Animals/AnimalIndex')
        }
      ]
    },
    {
      path: '/login',
      name: 'Login',
      component: () => import('../components/Login')
    },
    {
      path: '/register',
      name: 'Register',
      component: () => import('../components/Register')
    },
    {
      path: '/admin',
      name: 'Admin',
      component: () => import('../components/admin/AdminIndex'),
      meta: {
        requiredAuth: true
      }
    }
  ]
})
