<template>
  <div style="margin-top: 40px">
    <side-menu id="side-menu"></side-menu>
      <div class="home">
        <update-card id="update-card"></update-card>
        <slogan id="slogan"></slogan>
        <about id="about"></about>
      </div>
  </div>
</template>

<script>
  import Slogan from './Slogan'
  import About from '@/components/common/About'
  import UpdateCard from './UpdateCard'
  export default {
    name: 'AppIndex',
    components: {Slogan, About, UpdateCard}
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
