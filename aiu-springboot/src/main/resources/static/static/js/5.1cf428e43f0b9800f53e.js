webpackJsonp([5],{"2n4G":function(e,t){},"3D9b":function(e,t){},BLno:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("el-menu",{staticClass:"categories",attrs:{"default-active":"0","active-text-color":"red"},on:{select:e.handleSelect}},[a("el-menu-item",{attrs:{index:"0"}},[a("i",{staticClass:"el-icon-menu"}),e._v(" "),a("span",{attrs:{slot:"title"},slot:"title"},[e._v("全部")])]),e._v(" "),a("el-menu-item",{attrs:{index:"1"}},[a("i",{staticClass:"el-icon-menu"}),e._v(" "),a("span",{attrs:{slot:"title"},slot:"title"},[e._v("信息学部")])]),e._v(" "),a("el-menu-item",{attrs:{index:"2"}},[a("i",{staticClass:"el-icon-menu"}),e._v(" "),a("span",{attrs:{slot:"title"},slot:"title"},[e._v("文理学部")])]),e._v(" "),a("el-menu-item",{attrs:{index:"3"}},[a("i",{staticClass:"el-icon-menu"}),e._v(" "),a("span",{attrs:{slot:"title"},slot:"title"},[e._v("工学部")])]),e._v(" "),a("el-menu-item",{attrs:{index:"4"}},[a("i",{staticClass:"el-icon-menu"}),e._v(" "),a("span",{attrs:{slot:"title"},slot:"title"},[e._v("医学部")])])],1)},staticRenderFns:[]};var n=a("VU/8")({name:"SideMenu",data:function(){return{cid:""}},methods:{handleSelect:function(e,t){this.cid=e,this.$emit("indexSelect")}}},i,!1,function(e){a("2n4G")},"data-v-1b8eec8a",null).exports,o={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("el-upload",{ref:"upload",staticClass:"img-upload",attrs:{action:"http://localhost:8443/api/pucture","on-preview":e.handlePreview,"on-remove":e.handleRemove,"before-remove":e.beforeRemove,"on-success":e.handleSuccess,multiple:"",limit:1,"on-exceed":e.handleExceed,"file-list":e.fileList}},[a("el-button",{attrs:{size:"small",type:"primary"}},[e._v("点击上传")]),e._v(" "),a("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[e._v("只能上传jpg/png文件，且不超过500kb")])],1)},staticRenderFns:[]},r={name:"EditForm",components:{ImgUpload:a("VU/8")({name:"ImgUpload",data:function(){return{fileList:[],url:""}},methods:{handleRemove:function(e,t){},handlePreview:function(e){},handleExceed:function(e,t){this.$message.warning("当前限制选择 1 个文件，本次选择了 "+e.length+" 个文件，共选择了 "+(e.length+t.length)+" 个文件")},beforeRemove:function(e,t){return this.$confirm("确定移除 "+e.name+"？")},handleSuccess:function(e){this.url=e,this.$emit("onUpload"),this.$message.warning("上传成功")},clear:function(){this.$refs.upload.clearFiles()}}},o,!1,null,null,null).exports},data:function(){return{dialogFormVisible:!1,form:{id:"",name:"",breed:"",date:"",age:"",picture:"",description:"",area:{id:"",name:""}},formLabelWidth:"120px"}},methods:{clear:function(){this.form={id:"",name:"",breed:"",date:"",age:"",picture:"",description:"",area:null}},onSubmit:function(){var e=this;this.$axios.post("/animal",{id:this.form.id,picture:this.form.picture,name:this.form.name,breed:this.form.breed,date:this.form.date,age:this.form.age,description:this.form.description,area:this.form.area}).then(function(t){t&&200===t.status&&(e.dialogFormVisible=!1,e.$emit("onSubmit"))})},uploadImg:function(){this.form.picture=this.$refs.imgUpload.url}}},l={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("i",{staticClass:"el-icon-circle-plus-outline",on:{click:function(t){e.dialogFormVisible=!0}}}),e._v(" "),a("el-dialog",{attrs:{title:"添加/修改动物信息",visible:e.dialogFormVisible},on:{"update:visible":function(t){e.dialogFormVisible=t},close:e.clear}},[a("el-form",{ref:"dataForm",staticStyle:{"text-align":"left"},model:{value:e.form,callback:function(t){e.form=t},expression:"form"}},[a("el-form-item",{attrs:{label:"昵称","label-width":e.formLabelWidth,prop:"name"}},[a("el-input",{attrs:{autocomplete:"off",placeholder:"请输入动物昵称"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"品种","label-width":e.formLabelWidth,prop:"breed"}},[a("el-input",{attrs:{autocomplete:"off"},model:{value:e.form.breed,callback:function(t){e.$set(e.form,"breed",t)},expression:"form.breed"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"最近出现日期","label-width":e.formLabelWidth,prop:"date"}},[a("el-input",{attrs:{autocomplete:"off"},model:{value:e.form.date,callback:function(t){e.$set(e.form,"date",t)},expression:"form.date"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"年龄","label-width":e.formLabelWidth,prop:"age"}},[a("el-input",{attrs:{autocomplete:"off"},model:{value:e.form.age,callback:function(t){e.$set(e.form,"age",t)},expression:"form.age"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"图片","label-width":e.formLabelWidth,prop:"picture"}},[a("el-input",{attrs:{autocomplete:"off",placeholder:"图片 URL"},model:{value:e.form.picture,callback:function(t){e.$set(e.form,"picture",t)},expression:"form.picture"}}),e._v(" "),a("img-upload",{ref:"imgUpload",on:{onUpload:e.uploadImg}})],1),e._v(" "),a("el-form-item",{attrs:{label:"简介","label-width":e.formLabelWidth,prop:"description"}},[a("el-input",{attrs:{type:"textarea",autocomplete:"off"},model:{value:e.form.description,callback:function(t){e.$set(e.form,"description",t)},expression:"form.description"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"活动地区","label-width":e.formLabelWidth,prop:"cid"}},[a("el-select",{attrs:{placeholder:"请选择学部"},model:{value:e.form.area.id,callback:function(t){e.$set(e.form.area,"id",t)},expression:"form.area.id"}},[a("el-option",{attrs:{label:"信息学部",value:"1"}}),e._v(" "),a("el-option",{attrs:{label:"文理学部",value:"2"}}),e._v(" "),a("el-option",{attrs:{label:"工学部",value:"3"}}),e._v(" "),a("el-option",{attrs:{label:"医学部",value:"4"}})],1)],1),e._v(" "),a("el-form-item",{staticStyle:{height:"0"},attrs:{prop:"id"}},[a("el-input",{attrs:{type:"hidden",autocomplete:"off"},model:{value:e.form.id,callback:function(t){e.$set(e.form,"id",t)},expression:"form.id"}})],1)],1),e._v(" "),a("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[a("el-button",{on:{click:function(t){e.dialogFormVisible=!1}}},[e._v("取 消")]),e._v(" "),a("el-button",{attrs:{type:"primary"},on:{click:e.onSubmit}},[e._v("确 定")])],1)],1)],1)},staticRenderFns:[]};var s=a("VU/8")(r,l,!1,function(e){a("t7Ba")},"data-v-2dc38824",null).exports,c={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticStyle:{"margin-bottom":"30px",display:"flex","justify-content":"center","align-items":"center"}},[a("el-input",{staticStyle:{width:"400px","margin-right":"10px"},attrs:{placeholder:"通过动物名或品种名搜索...","prefix-icon":"el-icon-search",size:"small"},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.searchClick(t)}},model:{value:e.keywords,callback:function(t){e.keywords=t},expression:"keywords"}}),e._v(" "),a("el-button",{attrs:{size:"small",type:"primary",icon:"el-icon-search"},on:{click:e.searchClick}},[e._v("搜索")])],1)},staticRenderFns:[]};var d=a("VU/8")({name:"SearchBar",data:function(){return{keywords:"",books:[],cardLoading:[]}},methods:{searchClick:function(){this.$emit("onSearch")}}},c,!1,function(e){a("pJ8+")},"data-v-53662035",null).exports,u={render:function(){var e=this,t=e.$createElement;return(e._self._c||t)("el-switch",{attrs:{"active-text":"列表视图"},model:{value:e.value,callback:function(t){e.value=t},expression:"value"}})},staticRenderFns:[]};var m={name:"Books",components:{ViewSwitch:a("VU/8")({name:"ViewSwitch",data:function(){return{value:!0}}},u,!1,function(e){a("QkFE")},"data-v-28331a0c",null).exports,EditForm:s,SearchBar:d},data:function(){return{animal:[],currentPage:1,pagesize:17}},mounted:function(){this.loadBooks()},methods:{loadBooks:function(){var e=this;this.$axios.get("/animal").then(function(t){t&&200===t.status&&(e.animal=t.data.result)})},handleCurrentChange:function(e){this.currentPage=e},searchResult:function(){var e=this;this.$axios.get("/search?keywords="+this.$refs.searchBar.keywords,{}).then(function(t){t&&200===t.status&&(e.books=t.data.result)})}}},f={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("el-row",{staticStyle:{height:"840px"}},[a("search-bar",{ref:"searchBar",on:{onSearch:e.searchResult}}),e._v(" "),a("view-switch",{staticClass:"switch"}),e._v(" "),e._l(e.animal.slice((e.currentPage-1)*e.pagesize,e.currentPage*e.pagesize),function(t){return a("el-tooltip",{key:t.id,attrs:{effect:"light",placement:"right"}},[a("p",{staticStyle:{"font-size":"14px","margin-bottom":"6px"},attrs:{slot:"content"},slot:"content"},[e._v(e._s(t.name))]),e._v(" "),a("p",{staticStyle:{"font-size":"13px","margin-bottom":"6px"},attrs:{slot:"content"},slot:"content"},[a("span",[e._v(e._s(t.breed))]),e._v(" "),a("span",[e._v(e._s(t.date))]),e._v(" "),a("span",[e._v(e._s(t.age))])]),e._v(" "),a("p",{staticClass:"abstract",staticStyle:{width:"300px"},attrs:{slot:"content"},slot:"content"},[e._v(e._s(t.description))]),e._v(" "),a("el-card",{staticClass:"book",staticStyle:{width:"135px","margin-bottom":"20px",height:"233px",float:"left","margin-right":"15px"},attrs:{bodyStyle:"padding:10px",shadow:"hover"}},[a("div",{staticClass:"cover"},[a("img",{attrs:{src:t.picture,alt:"图片"}})]),e._v(" "),a("div",{staticClass:"info"},[a("div",{staticClass:"title"},[a("a",{attrs:{href:""}},[e._v(e._s(t.name))])])]),e._v(" "),a("div",{staticClass:"author"},[e._v(e._s(t.breed))])])],1)})],2),e._v(" "),a("el-row",[a("el-pagination",{attrs:{"current-page":e.currentPage,"page-size":e.pagesize,total:e.animal.length},on:{"current-change":e.handleCurrentChange}})],1)],1)},staticRenderFns:[]};var p={name:"LibraryIndex",components:{SideMenu:n,Books:a("VU/8")(m,f,!1,function(e){a("3D9b")},"data-v-83b04770",null).exports},methods:{listByArea:function(){var e=this,t="area/"+this.$refs.sideMenu.cid+"/animal";this.$axios.get(t).then(function(t){t&&200===t.status&&(e.$refs.animalshow.animal=t.data.result,e.$refs.booksArea.currentPage=1)})}}},h={render:function(){var e=this.$createElement,t=this._self._c||e;return t("el-container",[t("el-aside",{staticStyle:{width:"200px","margin-top":"20px"}},[t("switch"),this._v(" "),t("SideMenu",{ref:"sideMenu",on:{indexSelect:this.listByArea}})],1),this._v(" "),t("el-main",[t("Books",{ref:"books",staticClass:"animal-show"})],1)],1)},staticRenderFns:[]};var v=a("VU/8")(p,h,!1,function(e){a("KyIv")},"data-v-78402899",null);t.default=v.exports},KyIv:function(e,t){},QkFE:function(e,t){},"pJ8+":function(e,t){},t7Ba:function(e,t){}});
//# sourceMappingURL=5.1cf428e43f0b9800f53e.js.map