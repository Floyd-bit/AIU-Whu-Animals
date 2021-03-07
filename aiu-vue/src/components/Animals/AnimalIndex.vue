<template>
  <el-container>
    <el-aside style="width: 200px;margin-top: 20px">
      <switch/>
      <SideMenu @indexSelect="listByArea" ref="sideMenu"></SideMenu>
      <!--侧边菜单-->
    </el-aside>
    <el-main>
      <!--动物展示-->
      <AnimalShow class="animal-show" ref="animalshow"/>
    </el-main>
  </el-container>
</template>

<script>
import SideMenu from './SideMenu'
import AnimalShow from './AnimalShow'
export default {
  name: 'AnimalIndex',
  components: {SideMenu, AnimalShow},
  methods: {
    listByArea () {
      var _this = this
      var cid = this.$refs.sideMenu.cid
      var url = 'area/' + cid + '/animal'
      this.$axios.get(url).then(resp => {
        if (resp && resp.status === 200) {
          _this.$refs.animalshow.animal = resp.data
        }
      })
    }
  }
}
</script>

<style scoped>
  .animal-show {
    width: 990px;
    margin-left: auto;
    margin-right: auto;
  }
</style>
