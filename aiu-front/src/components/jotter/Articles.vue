<template>
  <div style="margin-top: 40px">
    <!--<el-button @click="addArticle()">添加文章</el-button>-->
    <div class="articles-area">
      <el-row>
      <el-tabs v-model="activeName" type="border-card" @tab-click="handleClick">
        <el-tab-pane label="热门文章" name="first">热门文章</el-tab-pane>
        <el-tab-pane label="最新文章" name="second">最新文章</el-tab-pane>
        <el-tab-pane label="热门评论" name="third">热门评论</el-tab-pane>
        <el-tab-pane label="精选文章" name="fourth">精选文章</el-tab-pane>
      </el-tabs>
      <el-card style="text-align: left">
        <div v-for="article in articles" :key="article.id">
          <div style="float:left;width:85%;height: 150px;">
            <router-link class="article-link" :to="{path:'jotter/article',query:{id: article.id}}"><span style="font-size: 20px"><strong>{{article.articleTitle}}</strong></span></router-link>
            <el-divider content-position="left">{{article.articleDate}}</el-divider>
            <router-link class="article-link" :to="{path:'jotter/article',query:{id: article.id}}"><p>{{article.articleAbstract}}</p></router-link>
          </div>
          <el-image
            style="margin:18px 0 0 30px;width:100px;height: 100px"
            :src="article.articleCover"
            fit="cover"></el-image>
          <el-divider></el-divider>
        </div>
      </el-card>
      </el-row>
    </div>
    <el-pagination
      background
      layout="total, prev, pager, next, jumper"
      @current-change="handleCurrentChange"
      :page-size="pageSize"
      :total="total">
    </el-pagination>
  </div>
</template>

<script>
/* eslint-disable */
export default {
    name: 'Articles',
    data () {
      return {
        articles: [],
        pageSize: 4,
        total: 0,
        activeName: 'first'
      }
    },
    mounted () {
      this.loadArticles()
    },
    methods: {
      loadArticles () {
        var _this = this
        this.$axios.get('/article/' + this.pageSize + '/1').then(resp => {
          if (resp && resp.data.code === 200) {
            _this.articles = resp.data.result.content
            _this.total = resp.data.result.totalElements
          }
        })
      },
      handleCurrentChange (page) {
        var _this = this
        this.$axios.get('/article/' + this.pageSize + '/' + page).then(resp => {
          if (resp && resp.data.code === 200) {
            _this.articles = resp.data.result.content
            _this.total = resp.data.result.totalElements
          }
        })
      },
      handleClick(tab, event) {
        console.log(tab, event);
        if(tab === 'third'){
          console.log('评论')
        }
      }
    }
  }
</script>

<style scoped>
  .articles-area {
    width: 990px;
    height: 750px;
    margin-left: auto;
    margin-right: auto;
  }

  .article-link {
    text-decoration: none;
    color: #606266;
  }

  .article-link:hover {
    color: #409EFF;
  }
</style>
