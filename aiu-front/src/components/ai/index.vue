<template>
  <div>
    <div>
    <el-input type="text" v-model="filepath" placeholder="请输入图片链接" style="width: 400px;margin-top: 50px;margin-bottom: 50px"></el-input>
    <el-button type="primary" @click="loadArticles">确定</el-button>
    </div>
    <div>
    <el-image
      style="width: 100px; height: 100px"
      :src="filepath"
      :fit="fit">
      <div slot="placeholder" class="image-slot">
        加载中<span class="dot">...</span>
      </div>
    </el-image>
    <el-card style="width: 800px;margin-top: 50px;margin-left: 400px">
      <el-table :data="data">
        <el-table-column
          prop="name"
          label="品种名称"
          fit>
        </el-table-column>
        <el-table-column
          prop="score"
          label="得分"
          fit>
        </el-table-column>
      </el-table>
    </el-card>
    </div>
  </div>
</template>

<script>
/* eslint-disable */
export default {
  name: 'AI',
  data () {
    return {
      data: [],
      filepath: '',
      fit: 'fill'
    }
  },
  methods: {
    inits () {
      this.identify({filepath: this.filepath}).then(resp => {
        if (resp) {
          console.log(resp)
          this.data = resp.data
        }
      })
    },
    recode (origin) {
      let reg = new RegExp('/', 'g')
      let newMsg = JSON.stringify(origin).replace(reg,'*')
      return newMsg
    },
    loadArticles () {
      var _this = this
      var path = this.recode(this.filepath)
      this.$axios.get('/baidu/' + path).then(resp => {
        if (resp) {
          _this.data = resp.data.result
          console.log(resp)
        }
      })
    }
}
    }
</script>
