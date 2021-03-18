<template>
  <el-menu
    :default-active="'/index'"
    router
    mode="horizontal"
    background-color="#545c64"
    text-color="#fff"
    active-text-color="#ffd04b"
    style="min-width: 1300px">
    <el-menu-item v-for="(item,i) in navList" :key="i" :index="item.name">
      {{ item.navItem }}
    </el-menu-item>
    <a href="#nowhere" style="color: #fff;float: right;padding: 20px;">更多功能</a>
    <i class="el-icon-menu" style="float:right;font-size: 45px;color: #fff;padding-top: 8px"></i>
    <span style="position: absolute;padding-top: 20px;right: 43%;font-size: 20px;font-weight: bold;color: white">WHU Animals</span>
    <i class="el-icon-switch-button" v-on:click="logout" style="float:right;font-size: 40px;color: #222;padding: 10px"></i>
  </el-menu>
</template>

<script>
export default {
  name: 'NavMenu',
  data () {
    return {
      // 动态修改导航栏内容
      navList: [
        {name: '/index', navItem: '首页'},
        {name: '/article', navItem: '爱心日记'},
        {name: '/animals', navItem: '动物一览'},
        {name: '/admin', navItem: '个人中心'}
      ]
    }
  },
  methods: {
    logout () {
      var _this = this
      this.$axios.get('/logout').then(resp => {
        if (resp.data.code === 200) {
          // 前后端状态保持一致
          _this.$store.commit('logout')
          _this.$router.replace('/login')
        }
      })
    }

  }
}
</script>

<style scoped>
a{
  text-decoration: none;
}

span {
  pointer-events: none;
}

.el-icon-switch-button {
  cursor: pointer;
  outline:0;
}

</style>
