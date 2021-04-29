<template>
  <iframe src="../../static/welcome.html" style="width: 100%;height: 900px;margin: auto" frameborder=0 scrolling="no"></iframe>
</template>

<script>
/* eslint-disable */
export default {
  name: 'Welcome',
  data () {
    return {
      time: 0,
    }
  },
  methods: {
    countDown() {
      let THIS = this
      THIS.time--
      console.log(THIS.time)
    }
  },
  //挂载
  mounted() {
    let THIS = this
    THIS.time = 15
    setInterval(THIS.countDown,1000)
  },
  //监听
  watch: {
    time: function(newVal) {
      if(newVal == 0) {
        this.$router.push('/login')
      }
    }
  }
}
</script>

<style scoped>

</style>
