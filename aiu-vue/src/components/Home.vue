<template>
  <div>
    <nav-menu></nav-menu>
    <router-view/>
  </div>
</template>

<script>
import NavMenu from './common/NavMenu'
export default {
  name: 'Home.vue',
  components: {NavMenu}
}
</script>

<style scoped>

</style>
