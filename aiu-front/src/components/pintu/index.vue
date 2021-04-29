<template>
  <div>
    <el-page-header @back="goBack" content="拼图小游戏">
    </el-page-header>
    <div class="container">
        <div class="iframe">
            <iframe src="../../../static/pintu.html" style="width: 100%;height: 500px;margin: auto" frameborder=0 scrolling="no" />
        </div>
        <div>
            <el-card>
              <el-row>
                <el-col :span="8" v-for="(o, index) in 2" :key="o" :offset="index > 0 ? 2 : 0">
                  <el-card :body-style="{ padding: '0px' }">
                    <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png" class="image">
                    <div style="padding: 14px;">
                      <span>拼图素材</span>
                      <div class="bottom">
                        <time class="time">{{ currentDate }}</time>
                        <el-button type="text" class="button">选择</el-button>
                      </div>
                    </div>
                  </el-card>
                </el-col>
              </el-row>
              <el-row>
                <el-col :span="8" v-for="(o, index) in 2" :key="o" :offset="index > 0 ? 2 : 0">
                  <el-card :body-style="{ padding: '0px' }">
                    <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png" class="image">
                    <div style="padding: 14px;">
                      <span>拼图素材</span>
                      <div class="bottom">
                        <time class="time">{{ currentDate }}</time>
                        <el-button type="text" class="button">选择</el-button>
                      </div>
                    </div>
                  </el-card>
                </el-col>
              </el-row>
            </el-card>
        </div>
    </div>
  </div>
</template>

<script>
/* eslint-disable */
export default {
    name: 'Pintu',
    data() {
      return {
        currentDate: new Date()
      };
    },
  methods: {
    goBack() {
      this.$router.push('/login')
    }
  }
}
</script>

<style>
    .container{
        margin: auto;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }
    .iframe{
        width: 600px;
        height: 500px;
    }
    .time {
      font-size: 13px;
      color: #999;
    }

    .bottom {
      margin-top: 13px;
      line-height: 12px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .button {
      padding: 0;
      min-height: auto;
    }

    .image {
      width: 100%;
      display: block;
    }
</style>
