<template>
  <el-container>
    <el-aside style="width: 200px;margin-top: 20px">
      <switch/>
      <!--侧边菜单-->
      <SideMenu/>
    </el-aside>
    <el-main>
      <!--动物展示-->
      <AnimalShow class="animalshow"/>
    </el-main>
  </el-container>
</template>

<script>
import SideMenu from './SideMenu'
import AnimalShow from './AnimalShow'
export default {
  name: 'AnimalIndex',
  components: {SideMenu, AnimalShow}
}
</script>

<style scoped>
  .animalshow {
    width: 990px;
    margin-left: auto;
    margin-right: auto;
  }
</style>
