webpackJsonp([6],{"1vuj":function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={name:"ImgUpload",data:function(){return{fileList:[],url:""}},methods:{handleRemove:function(t,e){console.log(t,e)},handlePreview:function(t){console.log(t)},handleExceed:function(t,e){this.$message.warning("当前限制选择 1 个文件，本次选择了 "+t.length+" 个文件，共选择了 "+(t.length+e.length)+" 个文件")},beforeRemove:function(t,e){return this.$confirm("确定移除 "+t.name+"？")},handleSuccess:function(t){this.url=t,this.$emit("onUpload"),this.$message.warning("上传成功")},clear:function(){this.$refs.upload.clearFiles()}}},l={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("el-upload",{ref:"upload",staticClass:"img-upload",attrs:{action:"http://localhost:8443/api/admin/content/books/covers","with-credentials":"","on-preview":t.handlePreview,"on-remove":t.handleRemove,"before-remove":t.beforeRemove,"on-success":t.handleSuccess,multiple:"",limit:1,"on-exceed":t.handleExceed,"file-list":t.fileList}},[i("el-button",{attrs:{size:"small",type:"primary"}},[t._v("点击上传")]),t._v(" "),i("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"},[t._v("只能上传jpg/png文件，且不超过500kb")])],1)},staticRenderFns:[]};var o=i("VU/8")(a,l,!1,function(t){i("MNS/")},"data-v-ac812b22",null);e.default=o.exports},DNt1:function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={name:"Editor",components:{ImgUpload:i("1vuj").default},data:function(){return{article:{},dialogVisible:!1}},mounted:function(){this.$route.params.article&&(this.article=this.$route.params.article)},methods:{saveArticles:function(t,e){var i=this;this.$confirm("是否保存并发布文章?","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){i.$axios.post("/admin/content/article",{id:i.article.id,articleTitle:i.article.articleTitle,articleContentMd:t,articleContentHtml:e,articleAbstract:i.article.articleAbstract,articleCover:i.article.articleCover,articleDate:i.article.articleDate}).then(function(t){t&&200===t.data.code&&i.$message({type:"info",message:"已保存成功"})})}).catch(function(){i.$message({type:"info",message:"已取消发布"})})},uploadImg:function(){this.article.articleCover=this.$refs.imgUpload.url}}},l={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",[i("el-row",{staticStyle:{margin:"18px 0px 0px 18px"}},[i("el-breadcrumb",{attrs:{"separator-class":"el-icon-arrow-right"}},[i("el-breadcrumb-item",{attrs:{to:{path:"/admin/dashboard"}}},[t._v("管理中心")]),t._v(" "),i("el-breadcrumb-item",{attrs:{to:{path:"/admin/content/book"}}},[t._v("内容管理")]),t._v(" "),i("el-breadcrumb-item",{attrs:{to:{path:"/admin/content/article"}}},[t._v("文章管理")]),t._v(" "),i("el-breadcrumb-item",[t._v("编辑器")])],1)],1),t._v(" "),i("el-row",[i("el-input",{staticStyle:{margin:"10px 0px","font-size":"18px"},attrs:{placeholder:"请输入标题"},model:{value:t.article.articleTitle,callback:function(e){t.$set(t.article,"articleTitle",e)},expression:"article.articleTitle"}})],1),t._v(" "),i("el-row",{staticStyle:{height:"calc(100vh - 140px)"}},[i("mavon-editor",{ref:"md",staticStyle:{height:"100%"},attrs:{fontSize:"16px"},on:{save:t.saveArticles},model:{value:t.article.articleContentMd,callback:function(e){t.$set(t.article,"articleContentMd",e)},expression:"article.articleContentMd"}},[i("button",{staticClass:"op-icon el-icon-document",attrs:{slot:"left-toolbar-after",type:"button",title:"摘要/封面"},on:{click:function(e){t.dialogVisible=!0}},slot:"left-toolbar-after"})]),t._v(" "),i("el-dialog",{attrs:{visible:t.dialogVisible,width:"30%"},on:{"update:visible":function(e){t.dialogVisible=e}}},[i("el-divider",{attrs:{"content-position":"left"}},[t._v("摘要")]),t._v(" "),i("el-input",{attrs:{type:"textarea",rows:"6",maxlength:"255","show-word-limit":""},model:{value:t.article.articleAbstract,callback:function(e){t.$set(t.article,"articleAbstract",e)},expression:"article.articleAbstract"}}),t._v(" "),i("el-divider",{attrs:{"content-position":"left"}},[t._v("封面")]),t._v(" "),i("div",{staticStyle:{"margin-top":"20px"}},[i("el-input",{attrs:{autocomplete:"off",placeholder:"图片 URL"},model:{value:t.article.articleCover,callback:function(e){t.$set(t.article,"articleCover",e)},expression:"article.articleCover"}}),t._v(" "),i("img-upload",{ref:"imgUpload",staticStyle:{"margin-top":"5px"},on:{onUpload:t.uploadImg}})],1),t._v(" "),i("span",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[i("el-button",{on:{click:function(e){t.dialogVisible=!1}}},[t._v("取 消")]),t._v(" "),i("el-button",{attrs:{type:"primary"},on:{click:function(e){t.dialogVisible=!1}}},[t._v("确 定")])],1)],1)],1)],1)},staticRenderFns:[]},o=i("VU/8")(a,l,!1,null,null,null);e.default=o.exports},"MNS/":function(t,e){}});
//# sourceMappingURL=6.f60ff166655536f01306.js.map