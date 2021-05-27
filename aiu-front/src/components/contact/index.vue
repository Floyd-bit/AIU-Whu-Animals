<template>
  <div style="margin-top: 40px">
    <side-menu id="side-menu"></side-menu>
      <div class="home">
        <el-collapse v-model="activeNames" @change="handleChange">
          <el-collapse-item title="保" name="1">
            <div>保护动物，人人有责</div>
            <div>爱护动物，就是爱护自己</div>
          </el-collapse-item>
          <el-collapse-item title="护" name="2">
            <div>爱护动物，让人类不孤单</div>
            <div>别让人类成为最孤独的生命</div>
          </el-collapse-item>
          <el-collapse-item title="宣" name="3">
            <div>关爱野生动物，保护美好家园</div>
            <div>野生动物是人类最好的朋友</div>
          </el-collapse-item>
          <el-collapse-item title="言" name="4">
            <div>保护动物，与自然和谐</div>
            <div>动物动物我爱你，就像我们爱妈咪</div>
          </el-collapse-item>
        </el-collapse>
        <update-card id="update-card"></update-card>
        <slogan id="slogan"></slogan>
        <about id="about"></about>
      </div>
  </div>
</template>

<script>
/* eslint-disable */
  import Slogan from './Slogan'
  import About from '@/components/common/About'
  import UpdateCard from './UpdateCard'
  export default {
    name: 'AppIndex',
    components: {Slogan, About, UpdateCard},
    data() {
      return {
        activeNames: ['1']
      }
    },
    methods: {
      handleChange(val) {
        console.log(val);
      }
    }
  }
</script>

<style scoped>
  .home {
    width: 990px;
    margin-left: auto;
    margin-right: auto;
    margin-top: -20px;
  }
  #side-menu {
    position: fixed;
    margin-left: 50%;
    left: -680px;
    top: 100px;
  }
</style>
