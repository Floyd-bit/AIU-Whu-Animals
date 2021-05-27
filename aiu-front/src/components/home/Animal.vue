<template>
  <el-table
    :data="tableData"
    style="width: 100%"
    height="250">
    <el-table-column
      fixed
      prop="date"
      label="日期"
      width="150">
    </el-table-column>
    <el-table-column
      prop="name"
      label="姓名"
      width="120">
    </el-table-column>
    <el-table-column
      prop="province"
      label="学部"
      width="120">
    </el-table-column>
    <el-table-column
      prop="city"
      label="品种"
      width="320">
    </el-table-column>
    <el-table-column
      prop="address"
      label="出现地址"
      width="600">
    </el-table-column>
    <el-table-column
      prop="zip"
      label="编号"
      width="120">
    </el-table-column>
  </el-table>
</template>

<script>
export default {
  name: 'Animal',
  data () {
    return {
      tableData: [{
        date: '2021-05-03',
        name: '杰哥',
        province: '信息学部',
        city: '猫',
        address: '武汉大学信息学部二食堂',
        zip: 200333
      }, {
        date: '2021-05-04',
        name: '大黄',
        province: '文理学部',
        city: '狗',
        address: '武汉大学文理学部桂圆食堂',
        zip: 200333
      }, {
        date: '2021-05-04',
        name: '珞珞',
        province: '珞珈山',
        city: '狐狸',
        address: '珞珈山梅园食堂',
        zip: 200333
      }, {
        date: '2021-05-01',
        name: '旺财',
        province: '文理学部',
        city: '乌鸦',
        address: '武汉大学文理学部3教',
        zip: 200333
      }, {
        date: '2021-05-08',
        name: '斌斌',
        province: '信息学部',
        city: '猫',
        address: '武汉大学信息学部青楼',
        zip: 200333
      }, {
        date: '2021-05-06',
        name: '阿伟',
        province: '信息学部',
        city: '猫',
        address: '武汉大学信息学部1食堂',
        zip: 200333
      }, {
        date: '2021-05-07',
        name: '杰哥2号',
        province: '信息学部',
        city: '猫',
        address: '武汉大学信息学部C3宿舍',
        zip: 200333
      }]
    }
  }
}
</script>

<style scoped>

</style>
