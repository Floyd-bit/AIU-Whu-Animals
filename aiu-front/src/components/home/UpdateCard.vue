<template>
  <el-card class="box-card">
    <div slot="header" class="clearfix">
      <span style="font-weight: bold;font-size: 20px">系统公告</span>
      <!--<el-button style="float: right; padding: 3px 0" type="text">修改</el-button>-->
    </div>
    <div class="block">
      <el-timeline>
        <el-timeline-item timestamp="2021/4/13" placement="top">
          <el-card>
            <h4>实现了热评与热门图片显示在首页功能，根据热度与评分，将会展示热门内容</h4>
            <p>杰哥 提交于 2021/4/13 21:32</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021/4/11" placement="top">
          <el-card>
            <h4>实现了用户上传功能，用户可以自主将动物图片上传</h4>
            <p>杰哥 提交于 2021/4/11 09:02</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021/4/8" placement="top">
          <el-card>
            <h4>实现了点评功能，用户可以对心爱的动物点评</h4>
            <p>杰哥 提交于 2021/4/8 22:10</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021/4/6" placement="top">
          <el-card>
            <h4>任何个人使用本平台应当遵守宪法法律，遵守公共秩序，尊重社会公德</h4>
            <p>杰哥 提交于 2021/4/6 19:51</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021/4/5" placement="top">
          <el-card>
            <h4>文明聊天</h4>
            <p>杰哥 提交于 2021/4/5 22:52</p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </div>
  </el-card>
</template>

<script>
  export default {
    name: 'UpdateCard'
  }
</script>

<style scoped>
  .box-card {
    margin-top: 5px;
    width: 988px;
    height: 1050px;
    text-align: left;
  }
</style>
