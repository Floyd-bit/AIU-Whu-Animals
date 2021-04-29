<template>
  <div style="margin-top: 40px;background: url('../../../static/img/carousel/bcg.jpg') no-repeat;background-size: cover">
    <side-menu id="side-menu"></side-menu>
      <div class="home">
        <div id="header-div">
          <carousel></carousel>
        </div>
        <animal style="margin-top: 20px;margin-bottom: 20px"></animal>
        <update-card id="update-card"></update-card>
        <el-row gutter= 22 style="margin-top: 20px;margin-bottom: 20px">
          <el-col span= 12>
            <el-card class="box-card">
              <template #header>
                <div class="card-header">
                  <span>最近热评</span>
                  <el-button class="button" type="text">换一批</el-button>
                </div>
              </template>
              <div v-for="o in 4" :key="o" class="text item">
                {{'列表内容 ' + o }}
                <el-divider></el-divider>
              </div>
            </el-card>
          </el-col>
          <el-col span= 12 >
            <el-card class="box-card">
              <template #header>
                <div class="card-header">
                  <span>活跃用户</span>
                  <el-button class="button" type="text">下一页</el-button>
                </div>
              </template>
              <div v-for="o in 4" :key="o" class="text item">
                {{'用户姓名 ' + o }}
                <el-avatar :size="size" :src="circleUrl" style="margin-left: 100px"></el-avatar>
                <el-divider></el-divider>
              </div>
            </el-card>
          </el-col>
        </el-row>
        <el-card style="margin-bottom: 20px">
          <template #header>
            <div class="card-header">
              <span>本月词云</span>
            </div>
          </template>
          <cloud></cloud>
        </el-card>
        <slogan id="slogan"></slogan>
        <about id="about"></about>
      </div>
  </div>

</template>

<script>
/* eslint-disable */
  import Carousel from './Carousel'
  import QuickNav from './QuickNav'
  import Slogan from './Slogan'
  import About from '@/components/common/About'
  import UpdateCard from './UpdateCard'
  import SideMenu from './SideMenu'
  import Animal from './Animal'
  import Cloud from './WordCloud'

  export default {
    name: 'AppIndex',
    data () {
      return {
        circleUrl: 'https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png',
        squareUrl: 'https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png',
        size: 'small'
      }
    },
    components: {Animal, Carousel, QuickNav, Slogan, About, UpdateCard, SideMenu, Cloud}
  }
</script>

<style scoped>
  .home {
    width: 1000px;
    margin-left: auto;
    margin-right: auto;
    margin-top: -20px;
  }

  #header-div {
    padding-bottom: 20px;
    padding-left: 5px;
    background-color: white;
  }

  #side-menu {
    position: fixed;
    margin-left: 47%;
    left: -680px;
    top: 200px;
  }
  .card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }

  .box-card {
    width: 480px;
  }
/*
  .el-card {
    filter:alpha(opacity=70);

    -moz-opacity:0.5;

    -khtml-opacity: 0.5;

    opacity: 0.5;
  }

 */
</style>
