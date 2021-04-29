<template>
  <div class="articles-area">
    <el-card style="text-align: left;width: 990px;margin: 35px auto 0 auto">
      <div>
        <span style="font-size: 20px"><strong>{{article.articleTitle}}</strong></span>
        <el-divider content-position="left">{{article.articleDate}}</el-divider>
        <div class="markdown-body">
          <div v-html="article.articleContentHtml"></div>
        </div>
      </div>
    </el-card>
    <el-card style="text-align: left;width: 990px;margin: 35px auto 0 auto">
      <el-rate
        v-model="value"
        disabled
        show-score
        text-color="#ff9900"
        score-template="{value}">
      </el-rate>
      <el-divider content-position="left">发表评论</el-divider>
      <el-button type="warning" icon="el-icon-star-off" circle></el-button>
      <el-button type="info" icon="el-icon-message" circle></el-button>
      <el-input
        type="textarea"
        placeholder="请输入内容"
        v-model="textarea"
        maxlength="100"
        show-word-limit
      >
      </el-input>
      <el-button type="primary" @click="submit">提交</el-button>
    </el-card>
  </div>
</template>

<script>
/* eslint-disable */
  export default {
    name: 'ArticleDetails',
    data () {
      return {
        article: [],
        value: 3.7,
        textarea: ''
      }
    },
    mounted () {
      this.loadArticle()
    },
    methods: {
      loadArticle () {
        var _this = this
        this.$axios.get('/article/' + this.$route.query.id).then(resp => {
          if (resp && resp.data.code === 200) {
            _this.article = resp.data.result
          }
        })
      },
      submit(){
        this.$notify({
          title: '成功',
          message: '评论发表成功',
          type: 'success'
        });
      }
    }
  }
</script>

<style scoped>
  @import "../../styles/markdown.css";
</style>
