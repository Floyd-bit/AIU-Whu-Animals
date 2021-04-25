<template>
    <div class="container">
        <div class="iframe">
            <iframe src="../../../static/pintu.html" style="width: 100%;height: 500px;margin: auto" frameborder=0 scrolling="no" />
        </div>
        <div>
            <el-card>
                拼图游戏
            </el-card>
        </div>
    </div>
</template>

<script>
export default {
    name: 'Pintu'
}
</script>

<style>
    .container{
        margin: auto;
        display: flex;
        justify-content: space-around;
    }
    .iframe{
        width: 600px;
        height: 500px;
    }
</style>
