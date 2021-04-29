<template>
    <el-carousel :interval="3000" type="card" height="200px">
      <el-carousel-item v-for="item in 6" :key="item">
        <h3 class="medium">{{ item }}</h3>
      </el-carousel-item>
    </el-carousel>
</template>

<style>
  .el-carousel__item h3 {
    background-image: url('../../../static/img/carousel/backimg.jpg');
  }

  .el-carousel__item:nth-child(2n) {
    background-image: url('../../../static/img/carousel/backimg.jpg');
  }

  .el-carousel__item:nth-child(2n+1) {
    background-image: url('../../../static/img/carousel/backimg.jpg');
  }

</style>

<script>
  export default {
    name: 'Carousel',
    data: function () {
      return {
        items: [{
          id: 1,
          title: 'How2J.cn - Java 全栈学习网站',
          img: '../../../static/img/carousel/design.png',
          link: 'http://how2j.cn?p=50613'},
        {
          id: 2,
          title: 'Vue.js - 渐进式 JavaScript 框架',
          img: '../../../static/img/carousel/vue.png',
          link: 'https://cn.vuejs.org/'
        },
        {
          id: 3,
          title: 'element-ui - 网站快速成型工具',
          img: '../../../static/img/carousel/element.png',
          link: 'http://element-cn.eleme.io/#/zh-CN'
        }]
      }
    }
  }
</script>
