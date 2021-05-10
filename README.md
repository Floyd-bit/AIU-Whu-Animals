# WHU-Animals
> 2019级软件工程概论大作业

#### 介紹
校园流浪动物管理救助平台——WHU Animals是一个针对当前校园流浪动物管理所推出的平台。在校园中，我们随时随地都能看到流浪漂泊无家可归的野生动物，面对这样的情况，我们往往想对这些动物施以救助但爱心无处可施。校园流浪动物管理救助平台为大家提供了一个尽自己所能对校园流浪动物进行救助的平台，它为每一个同学提供登记自己所遭遇的想救助的流浪动物的区域，同学们还可以在个人博客页面讲述自己与流浪动物的遭遇。对管理者来说，管理者可以编辑流浪动物的详细资料，还能将这些流浪动物的救助过程实时更新，让关心它们的同学们了解到最新信息。 

#### 技术选型（初步）
- 核心框架：Spring Boot 2 + vue
- 数据库层：Spring data jpa
- 持久化：MySQL
- 权限认证：Shiro
- 前端：基于Vue.js的element和vux
- 开发平台：IntelliJ IDEA + vscode 
- 项目管理：Maven工程
- 小组同步管理工作平台：Gitee
- 项目文档管理平台：石墨文档
- 服务器：阿里云学生服务器


#### 小组分工
- 杨棋霖 文档撰写，前端开发
- 赵卓轩 后端开发，数据库设计，服务器部署
- 朱中杨 后端开发，前后端链接
- 许同春 前端开发，界面设计
- 蒙夏 用户，测试

#### 进度安排

1. 第一次迭代：第1周-第4周 注册界面，后端判断用户权限，完善介绍页面，完善个人中心，开发文章发布界面
2. 第二次迭代：第5周-第7周 登录界面美化，用户实名认证
3. 第三次迭代：第8周-第11周 根据用户贡献动态赋予相应权限，后台管理系统

#### 项目进度
- 新增 项目文档
- 新增 用例图、甘特图、类图、时序图、协作图
- 新增 需求文档
- 新增 设计文档
- 新增 测试文档

#### 需求分析（需求文档见项目文档）
[需求文档地址](https://shimo.im/docs/3odvQ53htLI2ESKa/ 《需求文档》，可复制链接后用石墨文档 App 或小程序打开)
1. 甘特图

![Gant图](https://images.gitee.com/uploads/images/2021/0415/092916_276fa071_7797088.png "图片1.png")
2. 用例图

![用例图](https://images.gitee.com/uploads/images/2021/0330/104852_632c9274_7797088.png "QQ图片20210330104835.png")

3. 时序图

![搜索动物时序图](https://images.gitee.com/uploads/images/2021/0417/160837_777beeb0_7799985.png "QQ图片20210417160812.png")
![上传和评论动物时序图](https://images.gitee.com/uploads/images/2021/0417/160933_34db0981_7799985.png "QQ图片20210417160828.png")

4. 协作图

![协作图](https://images.gitee.com/uploads/images/2021/0417/161041_0e219e17_7799985.png "uml协作图.png")

#### 概要设计（设计文档见项目文档）

1. 三层架构

![三层架构](https://images.gitee.com/uploads/images/2021/0417/151220_343bc655_7797088.png "简单三层.png")

#### 详细设计（设计文档见项目文档）
[需求文档地址](https://shimo.im/docs/ZzkLVn1447CyP03Q/ 《详细设计文档》，可复制链接后用石墨文档 App 或小程序打开)

1. 软件系统架构图

![软件系统架构图](https://images.gitee.com/uploads/images/2021/0417/151136_a9728619_7797088.png "软件系统架构图 (1).png")

2. 类图

- 实体类图
![实体类图](https://images.gitee.com/uploads/images/2021/0417/151506_5523c4bb_7797088.png "Package entity.png")

- service类图

![Service类图](https://images.gitee.com/uploads/images/2021/0417/151542_6be2b356_7797088.png "Package service.png")

- DAO类图

![DAO类图](https://images.gitee.com/uploads/images/2021/0417/151621_35aefe85_7797088.png "Package dao.png")

- controller类图

![Controller类图](https://images.gitee.com/uploads/images/2021/0417/151642_5abed92c_7797088.png "Package controller.png")
3.数据库设计
- User表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162144_058ab4a8_7797088.png "屏幕截图.png")
- animal表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162203_74541277_7797088.png "屏幕截图.png")
- areas表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162217_031123b4_7797088.png "屏幕截图.png")
- article表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162233_fd9bc7c7_7797088.png "屏幕截图.png")
- admin-menu表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162252_04750473_7797088.png "屏幕截图.png")
- admin-permission表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162307_e264bebc_7797088.png "屏幕截图.png")
- admin_role表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162322_22ded541_7797088.png "屏幕截图.png")
- admin_user_role表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162409_6f2873e0_7797088.png "屏幕截图.png")
- admin_role表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162430_8a836300_7797088.png "屏幕截图.png")
- admin_role_menu表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162447_73e7fba5_7797088.png "屏幕截图.png")
- admin_role_permission表
![輸入圖片說明](https://images.gitee.com/uploads/images/2021/0417/162501_082eabef_7797088.png "屏幕截图.png")

#### 测试（测试文档见项目文档）
[测试文档地址](https://shimo.im/docs/9030MW0j9lIznDqw/ 《测试文档》，可复制链接后用石墨文档 App 或小程序打开)