<template>
  <div>
    <i class="el-icon-circle-plus-outline"  @click="dialogFormVisible = true"></i>
    <el-dialog
      title="添加/修改动物信息"
      :visible.sync="dialogFormVisible"
      @close="clear">
      <el-form v-model="form" style="text-align: left" ref="dataForm">
        <el-form-item label="昵称" :label-width="formLabelWidth" prop="name">
          <el-input v-model="form.name" autocomplete="off" placeholder="请输入动物昵称"></el-input>
        </el-form-item>
        <el-form-item label="品种" :label-width="formLabelWidth" prop="breed">
          <el-input v-model="form.breed" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="最近出现日期" :label-width="formLabelWidth" prop="date">
          <el-input v-model="form.date" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="年龄" :label-width="formLabelWidth" prop="age">
          <el-input v-model="form.age" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="图片" :label-width="formLabelWidth" prop="picture">
          <el-input v-model="form.picture" autocomplete="off" placeholder="图片 URL"></el-input>
        </el-form-item>
        <el-form-item label="简介" :label-width="formLabelWidth" prop="description">
          <el-input type="textarea" v-model="form.description" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="活动地区" :label-width="formLabelWidth" prop="cid">
          <el-select v-model="form.area.id" placeholder="请选择学部">
            <el-option label="信息学部" value="1"></el-option>
            <el-option label="文理学部" value="2"></el-option>
            <el-option label="工学部" value="3"></el-option>
            <el-option label="医学部" value="4"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item prop="id" style="height: 0">
          <el-input type="hidden" v-model="form.id" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="onSubmit">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: 'EditForm',
  data () {
    return {
      dialogFormVisible: false,
      form: {
        id: '',
        name: '',
        breed: '',
        date: '',
        age: '',
        picture: '',
        description: '',
        area: {
          id: '',
          name: ''
        }
      },
      formLabelWidth: '120px'
    }
  },
  methods: {
    clear () {
      this.form = {
        id: '',
        name: '',
        breed: '',
        date: '',
        age: '',
        picture: '',
        description: '',
        area: null
      }
    },
    onSubmit () {
      this.$axios
        .post('/animal', {
          id: this.form.id,
          picture: this.form.picture,
          name: this.form.name,
          breed: this.form.breed,
          date: this.form.date,
          age: this.form.age,
          description: this.form.description,
          area: this.form.area
        }).then(resp => {
          if (resp && resp.status === 200) {
            this.dialogFormVisible = false
            this.$emit('onSubmit')
          }
        })
    }
  }
}
</script>

<style scoped>
.el-icon-circle-plus-outline {
  margin: 50px 0 0 20px;
  font-size: 100px;
  float: left;
  cursor: pointer;
}
</style>
