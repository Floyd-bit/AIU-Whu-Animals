/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : aiu_data

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 08/03/2022 15:04:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_zh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_cls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, '/admin', 'AdminIndex', '首页', 'el-icon-s-home', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (2, '/admin/dashboard', 'DashboardAdmin', '运行情况', NULL, 'dashboard/admin/index', 1);
INSERT INTO `admin_menu` VALUES (3, '/admin', 'User', '用户管理', 'el-icon-user', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (4, '/admin', 'Content', '内容管理', 'el-icon-tickets', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (5, '/admin', 'System', '系统配置', 'el-icon-s-tools', 'AdminIndex', 0);
INSERT INTO `admin_menu` VALUES (6, '/admin/user/profile', 'Profile', '用户信息', NULL, 'user/UserProfile', 3);
INSERT INTO `admin_menu` VALUES (7, '/admin/user/role', 'Role', '角色配置', NULL, 'user/Role', 3);
INSERT INTO `admin_menu` VALUES (8, '/admin/content/book', 'BookManagement', '动物信息管理', NULL, 'content/AnimalManagement', 4);
INSERT INTO `admin_menu` VALUES (9, '/admin/content/article', 'ArticleManagement', '文章管理', NULL, 'content/ArticleManagement', 4);

-- ----------------------------
-- Table structure for admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE `admin_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permission
-- ----------------------------
INSERT INTO `admin_permission` VALUES (1, 'users_management', '用户管理', '/api/admin/user');
INSERT INTO `admin_permission` VALUES (2, 'roles_management', '角色管理', '/api/admin/role');
INSERT INTO `admin_permission` VALUES (3, 'content_management', '内容管理', '/api/admin/content');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_zh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 'sysAdmin', '系统管理员', 1);
INSERT INTO `admin_role` VALUES (2, 'contentManager', '内容管理员', 1);
INSERT INTO `admin_role` VALUES (3, 'visitor', '访客', 1);
INSERT INTO `admin_role` VALUES (9, 'test', '测试角色', 1);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NULL DEFAULT NULL,
  `mid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (19, 4, 1);
INSERT INTO `admin_role_menu` VALUES (20, 4, 2);
INSERT INTO `admin_role_menu` VALUES (21, 3, 1);
INSERT INTO `admin_role_menu` VALUES (22, 3, 2);
INSERT INTO `admin_role_menu` VALUES (23, 9, 1);
INSERT INTO `admin_role_menu` VALUES (24, 9, 2);
INSERT INTO `admin_role_menu` VALUES (77, 2, 1);
INSERT INTO `admin_role_menu` VALUES (78, 2, 2);
INSERT INTO `admin_role_menu` VALUES (79, 2, 4);
INSERT INTO `admin_role_menu` VALUES (80, 2, 8);
INSERT INTO `admin_role_menu` VALUES (82, 2, 9);
INSERT INTO `admin_role_menu` VALUES (121, 1, 1);
INSERT INTO `admin_role_menu` VALUES (122, 1, 2);
INSERT INTO `admin_role_menu` VALUES (123, 1, 3);
INSERT INTO `admin_role_menu` VALUES (124, 1, 6);
INSERT INTO `admin_role_menu` VALUES (125, 1, 7);
INSERT INTO `admin_role_menu` VALUES (126, 1, 4);
INSERT INTO `admin_role_menu` VALUES (127, 1, 8);
INSERT INTO `admin_role_menu` VALUES (129, 1, 9);
INSERT INTO `admin_role_menu` VALUES (130, 1, 5);

-- ----------------------------
-- Table structure for admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permission`;
CREATE TABLE `admin_role_permission`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `rid` int(20) NULL DEFAULT NULL,
  `pid` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_role_permission_role_1`(`rid`) USING BTREE,
  INDEX `fk_role_permission_permission_1`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permission
-- ----------------------------
INSERT INTO `admin_role_permission` VALUES (83, 5, 3);
INSERT INTO `admin_role_permission` VALUES (108, 1, 1);
INSERT INTO `admin_role_permission` VALUES (109, 1, 2);
INSERT INTO `admin_role_permission` VALUES (110, 1, 3);
INSERT INTO `admin_role_permission` VALUES (139, 2, 3);

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_operator_role_operator_1`(`uid`) USING BTREE,
  INDEX `fk_operator_role_role_1`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES (40, 24, 2);
INSERT INTO `admin_user_role` VALUES (63, 3, 2);
INSERT INTO `admin_user_role` VALUES (64, 1, 1);
INSERT INTO `admin_user_role` VALUES (67, 2, 3);

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `breed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `age` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_cid_areas_on_cid`(`cid`) USING BTREE,
  CONSTRAINT `fk_cid_areas_on_cid` FOREIGN KEY (`cid`) REFERENCES `areas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animal
-- ----------------------------
INSERT INTO `animal` VALUES (102, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1977438004,2972925604&fm=26&gp=0.jpg', '毛球', '猫', '2020.10.5', 2, '黑毛猫，怕生', 1);
INSERT INTO `animal` VALUES (103, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3396066127,2278714904&fm=26&gp=0.jpg', '小泰迪', '狗', '2021.12.4', 1, '黄色小狗，亲近人', 1);
INSERT INTO `animal` VALUES (107, 'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2503976311,1922627414&fm=26&gp=0.jpg', '花花', '狗', '2021.3.4', 1, '查理士王小猎犬，毛色很好看', 1);
INSERT INTO `animal` VALUES (114, 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2745973924,2542117255&fm=26&gp=0.jpg', '丑八怪', '猫', '2018.12.2', 3, '白猫，对人非常友好，经常在路边可以看到', 1);
INSERT INTO `animal` VALUES (116, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3162229404,1217333898&fm=26&gp=0.jpg', '三花', '猫', '2015.5.1', 6, '三花猫，颜色非常好看，叫声很好听', 2);
INSERT INTO `animal` VALUES (117, 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1332725661,451885318&fm=26&gp=0.jpg', '小黑', '猫', '2018.8.7', 3, '黑白相间的花纹猫，很凶，但碰到亲近的人就很温柔。', 3);
INSERT INTO `animal` VALUES (118, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3396066127,2278714904&fm=26&gp=0.jpg', '小泰迪', '狗', '2021.12.4', 1, '黄色小狗，亲近人', 1);
INSERT INTO `animal` VALUES (119, 'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2503976311,1922627414&fm=26&gp=0.jpg', '花花', '狗', '2021.3.4', 1, '查理士王小猎犬，毛色很好看', 1);
INSERT INTO `animal` VALUES (120, 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3162229404,1217333898&fm=26&gp=0.jpg', '三花', '猫', '2015.5.1', 6, '三花猫，颜色非常好看，叫声很好听', 2);
INSERT INTO `animal` VALUES (121, 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1332725661,451885318&fm=26&gp=0.jpg', '小黑', '猫', '2018.8.7', 3, '黑白相间的花纹猫，很凶，但碰到亲近的人就很温柔。', 3);
INSERT INTO `animal` VALUES (122, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1977438004,2972925604&fm=26&gp=0.jpg', '毛球', '猫', '2020.10.5', 2, '黑毛猫，怕生', 1);

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES (1, '信息学部');
INSERT INTO `areas` VALUES (2, '文理学部');
INSERT INTO `areas` VALUES (3, '工学部');
INSERT INTO `areas` VALUES (4, '医学部');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `abs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_book_category_on_cid`(`cid`) USING BTREE,
  CONSTRAINT `fk_book_category_on_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'https://i.loli.net/2019/04/10/5cadaa0d0759b.jpg', '且在人间', '余秀华', '2019-2-1', '湖南文艺出版社', '诗人余秀华中篇小说首次结集出版。\r\n\r\n        《且在人间》——以余秀华为生活原型，讲述一个残疾女人悲苦倔强、向死而生的故事。\r\n\r\n        女主人公周玉生活在乡村，患有“脑瘫”，她几乎被所有人漠视，甚至被整个社会抛弃，但是她渴望被当成一个普通的健康人,而不是带着怜悯或不屑，她只要求平等。爱情的缺 失，家庭的不幸，生活的种种际遇让周玉用诗歌的方式把 情感抒发出来，最终她用诗歌创作出了一个文学的世界，得到了人们的认可。', 2);
INSERT INTO `book` VALUES (2, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体', '刘慈欣', ' 2008-1', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。', 2);
INSERT INTO `book` VALUES (32, 'https://i.loli.net/2019/04/10/5cada99bd8ca5.jpg', '叙事的虚构性', '[美] 海登·怀特 ', '2019-3', '南京大学出版社', '海登•怀特被誉为人类伟大的思想家之一。从1973年出版具有里程碑意义的专著《元史学》以来，怀特的作品对于历史学、文学研究、人类学、哲学、艺术史、电影传媒研究等将叙事学作为关注焦点的学科而言意义非凡。\n\n本书由罗伯特•多兰作序，他巧妙地将怀特重要但难得一见的文章汇集成册，研究探讨他关于历史书写和叙事的革命性理论。怀特的这些文章大多采用论文体，内容涉及多位思想家，探讨诸多主题，文笔犀利，语言优美。\n\n《叙事的虚构性》追溯怀特重要思想的演变轨迹，是历史编纂学者和学习者、历史理论和文学研究学者们的重要读物。', 3);
INSERT INTO `book` VALUES (35, 'https://i.loli.net/2019/04/10/5cada940e206a.jpg', '圣母', '[日]秋吉理香子 ', '2019-3', '新星出版社', '一起男童被害案搅得蓝出市人心惶惶。\n\n好不容易怀孕生产的保奈美抱紧年幼的孩子，立誓要不惜任何代价保护她。\n\n男人是在孩子出生后才成为父亲的，但女人，是从小生命来到体内的那一瞬间起，就是母亲了。患有不孕症的保奈美是经历过艰辛的治疗过程才终于有了孩子的，她不允许这起命案威胁到宝贵的孩子！\n\n母亲，就是要消除所有对子女的威胁，每一位母亲都应肩负这样的使命，这是神圣的天职！', 1);
INSERT INTO `book` VALUES (37, 'https://i.loli.net/2019/04/10/5cada8986e13a.jpg', '奢侈与逸乐', '[英]马克辛·伯格', '2019-3', '中国工人出版社', '本书探讨了十八世纪英国新式、时尚的消费品的发明、制造和购买。', 3);
INSERT INTO `book` VALUES (38, 'https://i.loli.net/2019/04/10/5cada8b8a3a17.jpg', '忧伤动物', '[德]莫妮卡·马龙 ', '2019-4', '漓江出版社', '“忧伤动物”(animal triste)这个词组取自一句最早可以追溯到亚里士多德时代的拉丁语名言，即“欢爱后，每个动物都忧伤不已”（Post coitum omne animal triste est）。无疑，这部冠以如此标题的小说让人有不祥的预感并暗示着宿命的思想。小说的女主人公是位近乎百岁的老人。在多年前有意斩断了与外界的一切联系之后，在她的后半生里，她唯一能做的就是或躺或坐在“印着鲜红、艳绿和深紫色的大花”、让人想起“食肉植物的花朵”的床单上，追忆几十年前她和自己...', 1);
INSERT INTO `book` VALUES (54, 'https://i.loli.net/2019/04/10/5cada9d9d23a6.jpg', '爱界', '[英] 费伊·韦尔登 ', '2019-3-1', '人民文学出版社', '去不去爱，爱的界限何在，一直是普拉克西丝的人生课题。\n\n年迈的她独自待在肮脏而昏暗的地下室里，想写回忆录，可她该写些什么呢？是写父母未婚同居生下了她，她还年幼天真无邪时，母女就遭父亲抛弃？还是写她曾经或是主动或是被动地成了未婚同居者、妻子、情人、母亲、后母？还是写她两年的牢狱生活？她想描绘二十世纪女性的众生相，想记录女性群体在情感、灵魂和思想方面所处的三重困境，想道出女性之间的大爱如何铸成姐妹之谊。', 3);
INSERT INTO `book` VALUES (55, 'https://i.loli.net/2019/04/10/5cada824c7119.jpg', '密室中的旅行', '[美] 保罗·奥斯特 ', '2019-3', '九州出版社', '一旦被抛进这个世界，我们就永远不会消失，即使造物者已经死去。\n\n.\n\n布兰克先生发现自己被囚禁在一个陌生的房间里，对过去的身份和经历一无所知。桌上有四叠六英寸厚的文稿，其中有一份未完待续的囚犯自述；还有一叠似曾相识的照片，照片中的人物将逐一登场。他续写了那个囚犯的故事，却发现自己正在经历的一切也早已被记录在文稿中……', 1);
INSERT INTO `book` VALUES (59, 'https://i.loli.net/2019/04/10/5cada87fd5c72.jpg', '基本穿搭', '[日]大山旬 ', '2019-3', '四川人民出版社', '对穿衣搭配感到不耐烦，认为时尚很麻烦，穿什么都可以或者对衣服有着自己的想法但不够自信，本书就是为这样的人而准备的穿衣指南。不需要追随瞬息万变的时尚潮流，也不需要烦恼色彩搭配，只要掌握最低限度的知识和备齐常规单品，谁都能完成清爽得体的 80分搭配。', 4);
INSERT INTO `book` VALUES (60, 'https://i.loli.net/2019/04/10/5cada976927da.jpg', '冒牌人生', '陈思安', '2019-4', '四川文艺出版社', '《冒牌人生》收录了十篇短篇小说。十个故事分别以城市中的怪人为主角，他们默默无闻地生存在城市主流生活的边缘地带：或是等待手术的性别认同障碍者，或是武艺高强而深藏不露的夜市摊主，或是卧底追凶的底层保安，或是甘于...', 1);
INSERT INTO `book` VALUES (61, 'https://i.loli.net/2019/04/10/5cada9202d970.jpg', '战争哀歌', '[越]保宁 ', '2019-4', '湖南文艺出版社', '《战争哀歌》超越了战争，战争是它的背景，它的内核是关于逝去的青春，关于美和伤痛！\n\n一场突如其来的战争打碎了阿坚和阿芳这对年轻情侣的生活，在血肉横飞的战争中，主人公阿坚成了幸存者，但战争带来的伤痛还远远没有平息。那些经历仍旧萦绕在阿坚的生活之中，被战争毁灭的不仅 仅是阿坚， 阿芳也遭遇了难以想象的梦魇。时间越长，阿坚越觉得自己不是活着，而是被困在这人世间。', 1);
INSERT INTO `book` VALUES (62, 'https://i.loli.net/2019/04/10/5cada9c852298.jpg', '胡椒的全球史', '[美] 玛乔丽·谢弗 ', '2019-3', '上海三联出版社', '看似不起眼的胡椒，却是家家餐桌必备。在中世纪时，更是欧洲达官显贵们的最爱、财富与地位的象征。黑胡椒原产于印度，距离欧洲各港口有十万八千里之远，取之向来不易。商人们对其供应来源不遗余力的追寻，成为世界史上一股重要的推动力量，促成全球贸易的兴起，重新划定了世界经济版图。', 2);
INSERT INTO `book` VALUES (63, 'https://i.loli.net/2019/04/10/5cada962c287c.jpg', '与病对话', '胡冰霜', '2019-3-31', '北京联合出版公司', '一部融合科普性与趣味性、兼具心理学与哲学意味的医学散文。\n\n一位满怀仁心的资深医者对几十年行医生涯的回望与省思。\n\n全书以真实的病例和鲜活的故事贯穿始终，作者从一位全科医生、心理学者的视角观察、解读疾病与患者身心之关系，厘清大众对诸多常见疾病的误解...', 1);
INSERT INTO `book` VALUES (64, 'https://i.loli.net/2019/04/10/5cada858e6019.jpg', '上帝笑了99次', '[英]彼得·凯弗', '2019-2', '北京联合出版公司', '一只美洲羊驼会坠入爱河吗？机器人能变成人吗？怎样才能不赢得公主青睐？人类一思考，上帝就发笑。在99个奇妙、怪诞、滑稽的问题背后，其实是99个烧脑的哲学、道德、法律领域的经典悖论，也是99道极富挑战性的大思考测试。本书内容覆盖了大多数常见哲学话题，包括形而上学、逻辑学、伦理学、语言哲学、政治哲学、自我认知、人际关系、美学、存在主义等，还配有20多幅漫画插图。在锻炼思维之外，本书也能帮我们建立个性化的哲学知识体系。', 3);
INSERT INTO `book` VALUES (65, 'https://i.loli.net/2019/04/10/5cada8e1aa892.jpg', '互联网算法', '[美] 菲斯曼等 ', '2019-4', '江西人民出版社', '只要你租过房子、上网买过东西、自己经营过企业，那么你就处在商业变革的前线。在这场变革中，亚马逊、谷歌、优步等不同以往的企业取得了史无前例的成功，而促成这场变革的不只是科技进步，还有经济学思想。\n\n在这本趣味横生的书中，我们会看到，经济思想的革命远比科技革命更宏大。从谷歌广告的算法，到网上购物规避欺诈，都要依靠经济学家建立的经济模型，甚至连互联网公司...', 6);
INSERT INTO `book` VALUES (66, 'https://i.loli.net/2019/04/10/5cada9ec514c9.jpg', '七侯笔录', '马伯庸', '2019-4-15', '湖南文艺出版社', '一个关于文化的离奇故事，一段关于文人的壮丽传说。\n\n几千年来，每一位风华绝代的文人墨客辞世之时，都会让自己的灵魂寄寓在一管毛笔之中。他们身躯虽去，才华永存，这些伟大的精神凝为性情不一的笔灵，深藏于世间，只为一句“不教天下才情付诸东流”的誓言。其中最伟大的七位古人，他们所凝聚的七管笔灵，被称为“管城七侯”。\n\n一位不学无术的现代少年，无意中邂逅了李白的青莲笔，命运就此与千年之前的诗仙交织一处，并为他开启了一个叫作笔冢的神秘世界。', 3);
INSERT INTO `book` VALUES (67, 'https://i.loli.net/2019/04/10/5cada9870c2ab.jpg', '中心与边缘', '[美] 希尔斯', '2019-3', '译林出版社', '美国著名社会学家爱德华·希尔斯的主要研究成果包括他对“克里斯玛”、“中心”和“边缘”等概念的解释，以及他对“大众社会”一词的修正，这些研究对分析政治和文化领导力以及社会凝聚力具有重要价值。本书对希尔斯数十载社会理论研究进行了全面而详细的总结，为解释与探究当代社会的结构与变化提供了极具科学性的参考依据。', 3);
INSERT INTO `book` VALUES (68, 'https://i.loli.net/2019/04/10/5cad643643d4c.jpg', '水浒群星闪耀时', '李黎', '2019-4', '上海文艺出版社', '本书以众所周知的梁山英雄为写作对象，重点书写其上山后、招安前的日常生活，涉及他们的喜怒哀乐、同类中人、乡愁怀旧、未来憧憬、命运追问等。书中涉及宋江、武松、鲁智深、李俊、燕青等等耳熟能详的人物而显得有些“改编”与水浒研究的意味，但鉴于所有人物皆为虚构，本书稿的内容是虚构之上的虚构，旨在宏大叙事的语境下突出个人的细微之处和命运感。', 1);
INSERT INTO `book` VALUES (69, 'https://i.loli.net/2019/04/10/5cad63931ce27.jpg', '谋杀狄更斯', '[美] 丹·西蒙斯 ', '2019-4', '上海文艺出版社', '“狄更斯的那场意外灾难发生在1865年6月9日，那列搭载他的成功、平静、理智、手稿与情妇的火车一路飞驰，迎向铁道上的裂隙，突然触目惊心地坠落了。”', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '文学');
INSERT INTO `category` VALUES (2, '流行');
INSERT INTO `category` VALUES (3, '文化');
INSERT INTO `category` VALUES (4, '生活');
INSERT INTO `category` VALUES (5, '经管');
INSERT INTO `category` VALUES (6, '科技');

-- ----------------------------
-- Table structure for jotter_article
-- ----------------------------
DROP TABLE IF EXISTS `jotter_article`;
CREATE TABLE `jotter_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_content_md` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_abstract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jotter_article
-- ----------------------------
INSERT INTO `jotter_article` VALUES (1, '救助动物，就是在救助人', '<div class=\"paragraph\">\r\n						<p class=\"content-l-title\">\r\n							救助动物，就是在救助人\r\n						</p>\r\n						<p class=\"content-l-titleS\">\r\n							\r\n						</p>\r\n						<p class=\"content-l-time\">\r\n							发布日期：2015-01-07 14:51:38\r\n						</p>\r\n						<p>2012-04-28 03:20:03&nbsp;&nbsp;<strong>新京报</strong></p>\r\n<p>国际伦理协会原主席、世界动物保护运动倡导者彼得·辛格评中国动保事件</p>\r\n<p>　　近几年，包括活熊取胆、高速路救狗、取消动物表演等在内的动物保护事件，不断进入公众视野，并成为媒体报道的热点、公众争议的焦点。实际上，这是20世纪迅速发展的环境伦理学在中国的落地与萌芽，是中国将道德关怀从人际间扩展到人与自然间的伦理变革。</p>\r\n<p>　　事实上，这种环境伦理变革，早就在世界上产生了广泛影响。这其中，“动物解放”的概念深入人心，并成为30年来风起云涌的动物权利运动最为响亮的口号。提出这一概念的，是曾任国际伦理协会主席的国际著名伦理学家彼得·辛格（Peter Singer）。</p>\r\n<p>　　1973年4月5日，彼得·辛格在《纽约书评》上撰文，首次提出“动物解放”（Animal Liberation）。随后，他在此文章的基础上写成《动物解放》一书。该书自1975年出版以来，被翻译成二十多种文字，在几十个国家出版，其中英文版重版26次。“动物解放”论，由此成为世界动物伦理研究中影响最大、争议最多的主要理论。</p>\r\n<p>　　4月20日，现同时任教于美国普林斯顿大学和澳大利亚墨尔本大学的彼得·辛格教授首次来华访问。4月22日，本报时事访谈员独家专访彼得·辛格教授，邀请他就活熊取胆、取消动物表演、高速路救狗、哈尔滨市养犬管理条例、激素奶牛等典型动物保护事件，发表看法。</p>\r\n<p>　　访谈嘉宾：彼得·辛格</p>\r\n<p>　　国际伦理协会原主席、美国普林斯顿大学和澳大利亚墨尔本大学教授</p>\r\n<p>　　无动物表演：城市文明的新高度</p>\r\n<p>　　【新闻事件：2012年4月14日，中国动物园观察小组、它基金、达尔问自然求知社等志愿者团队及公益组织，邀请多名专家、政协委员等，针对动物园和马戏团虐待性动物表演等情况展开探讨，倡议让北京成为无动物表演城市。】</p>\r\n<p>　　新京报：最近，有不少学者和动物保护组织提出，倡议让北京成为无动物表演的城市。对此，你怎么看？</p>\r\n<p>　　彼得·辛格：这是非常好的事。实际上，动物表演已经成了一个符号，象征着人类对动物的强制和控制。在所有的动物表演中，动物给人类表演的各种小戏法，大都不是它们的自然行为，都必须经过一定的训练。在训练的过程当中，如果动物做得不对，就会对动物加以惩罚。这样的惩罚，会让动物感到痛苦。比如，使用饥饿训练法，动物做得好了，就给食物吃；反之，则不给。有的动物，还常常会被鞭打。取消动物表演，则表明人们对动物更友好、更懂得爱护它们。</p>\r\n<p>　　新京报：就你所知，其他国家大城市的学者和动保组织，有没有提出过类似的倡议？</p>\r\n<p>　　彼得·辛格：在西方社会，类似的倡议非常多。在西方，动物的表演主要集中在马戏团，在动物园里的表演是很少的。我本人在20年前就参加过这样的倡议活动，后来又参加过很多次。一开始，我是在澳大利亚倡议无动物表演，后来是在欧洲，再后来是在美国。现在，在世界各地，倡议无动物表演的活动越来越多。</p>\r\n<p>　　新京报：对这个倡议，有很多人表示，让动物“钻火圈”这类表演确实危险，然而海洋馆开放动物表演并不是坏事，人们尤其是孩子可以通过看表演的方式了解动物，从而知道如何保护它们。</p>\r\n<p>　　彼得·辛格：对鲸鱼和海豚这样的动物，你没有办法让它们在海洋馆里满足自己的自然需求。因为根据它们的习性，它们通常需要游很长很长的距离，这是它们的自然生活。在海洋馆的池子里，它们是不可能拥有这样的自由的。它们在海洋馆里生活得很压抑。</p>\r\n<p>　　我不相信通过看被监禁的动物为人类表演，能够使孩子获得对待动物的正确态度。实际上，如果孩子想要了解海豚，可以看海豚在自然的环境当中真实生活的录像。要获得对动物的了解，最重要的是要看在自然状态下生活的动物。比如说，可以去观察大自然中的鸟类。</p>\r\n<p>　　我发现，北京就有很多鸟，它们在枝头自由地飞落。我不知道在北京是否还有其他这样自然生活的动物，比如，在澳大利亚、美国，你经常可以看到松鼠，孩子们可以去观察它们。像这样，既让动物在自然的环境里生活，又将它们的生活加以保护，这样就可以实现人类和动物的近距离接触。对动物爱护的意识，是要通过观察不受监禁的、自由行为的动物的自然“表演”来获得。</p>\r\n<p>　　新京报：北京海洋馆负责人表示，海洋馆所安排的表演很“人性化”，如果这只海豚今天状态不好，则会用另一只状态好的“同事”替换，从不强迫海豚表演。每只海豚的表演项目都是根据海豚的特长来安排，比如这只海豚喜欢跳跃，则安排它做空中跳跃的表演。对这种说法，你怎么看？</p>\r\n<p>　　彼得·辛格：对海豚来说，在这种情况下，问题并不一定是身体上的疼痛。我担心的是，海豚在不表演的时候，它们在做什么？海豚在表演的时候，也许是快乐的，但是，在不表演的时候，就会非常无聊，什么事情都做不了。无论海洋馆做得多么“人性化”，对于海豚来说也不是自然的环境；海洋馆的池子再大，对海豚来说，都是小的。池子再大，也大不过真正的海洋。</p>\r\n<p>　　新京报：2010年，国家林业局、住房和城乡建设部曾发布《关于进一步加强动物园管理的意见》等文件，要求禁止动物表演和野生动物与观众零距离接触活动，但两年后并未禁止。相关负责人表示，《意见》是规范性意见，不能作为执法依据。那么，这种“不能作为执法依据的、政府部门的规范性意见”，在西方会有吗？</p>\r\n<p>　　彼得·辛格：在西方，也有这样的由政府部门出台的建议性条例。因为，针对一些问题，很多法律并不是规定得十分精确，所以，政府部门就会出台一些条例。如果遵守了这些条例，就不会被起诉；否则，就可能会被起诉。但是，人们一般不会违反条例，而会自觉地尊重它。如果条例不能被很好地执行，它的危害就会很大。</p>\r\n<p>　　新京报：如果北京真的成了无动物表演的城市，它对北京的形象，将会有什么样的影响？</p>\r\n<p>　　彼得·辛格：如果真的如此，它不仅会对北京这个城市的形象，而且会对整个中国的形象，都会有非常好的影响。它体现着一个城市新的精神，新的文明高度，也体现着一个国家新的精神，新的文明高度。现在，世界上有越来越多的城市，正在努力成为无动物表演的城市，北京需要跟上来，中国也需要跟上来。</p>\r\n<p>　　活熊取胆：合法，但未必合伦理</p>\r\n<p>　　【新闻事件：2012年2月1日，证监会创业板发行监管部公布IPO申报企业基本信息表，在这份名单中，从黑熊养殖、熊胆系列产品的研发、生产、销售为一体的归真堂赫然在列，被排在第28位。2月14日，动物保护公益基金会“它基金”联名72位知名人士，向中国证监会信访办递交吁请函，反对归真堂上市。】</p>\r\n<p>　　新京报：针对归真堂活熊取胆，中国近期曾掀起了一场动保风暴，你知道这件事吗？</p>\r\n<p>　　彼得·辛格：我知道。在西方，有一些媒体对这个事情有所关注，特别是电视报道，还有网络上的录像，让我基本上可以看到这些熊的状况。它们身上有伤口，有的还穿着铁马甲，在西方，尽管不是每个人都知道，但是，大部分关注动物福利的人，注意到了这个问题。</p>\r\n<p>　　在我听说过的关于虐待动物的事情上，活熊取胆是非常残酷的一个。中国公众对活熊取胆坚决反对的态度与做法，非常令人高兴。</p>\r\n<p>　　新京报：你了解到的情况，和归真堂说的不太一样。归真堂认为熊生活得很快乐，有专门的游乐场，“熊快乐得像幼儿园的孩子一样”，而且没有穿铁马甲。这也是归真堂反驳公众的理由之一。</p>\r\n<p>　　彼得·辛格：我自己并没有看到现场，所以，尽管就具体事件而言，归真堂的熊场可能有所改进，但是，对熊来说，这实际上并没有根本性的改变。因为熊是个头非常高的动物，它需要很大的空间来生活或活动，归真堂并没有真正做到让熊自由地生活，有利于熊自身的需要。</p>\r\n<p>　　判断熊真正处在什么样的状态，不能是归真堂的声音，也不能是支持者或者反对者的声音，而必须是独立机构的声音。这样的独立机构，必须要有动物行为专家的参与。专家用自己的专业意见，判断熊的状态，这很重要。</p>\r\n<p>　　新京报：针对活熊取胆这件事，有人在美国一家名叫“改变”的网站，看到了征集签名的调查，结果发现，只有很少人关注动物保护。在中国，这反而成了大众关注的焦点。这是为什么呢？</p>\r\n<p>　　彼得·辛格：不能做这样的对比。在美国，公众更关注自己身边的事，而不是国外的事，这是比较自然的。美国人对发生在外国的虐待动物的事不是特别关注，并不能说明他们的动物保护意识不强，而是和它不是发生在自己国家有很大关系。</p>\r\n<p>　　事实上，美国有很多统计证明，如果虐待动物的事情发生在美国，当地的议会和政府会收到大量的抗议和要求严惩的信件，并且，这些信件会在短时期内急剧增加。在美国，对动物虐待的事情，公众的认可度比较高，那就是绝不能对动物施以虐待。</p>\r\n<p>　　新京报：归真堂的董事长曾说：“反对我，就等于反对国家。”在澳大利亚和美国，面对公众的批评，企业负责人会不会说出类似的话？</p>\r\n<p>　　彼得·辛格：在美国，公众批判大公司非常正常。合法的，不一定就是符合道德的，不一定就是符合伦理的。三年前，我曾有一个非常好的朋友，就是在反对两个大的化妆品公司，一个是雅芳，一个是露华浓。这两个公司涉嫌用动物做实验，非常残忍。在这两个公司中，没有任何负责人敢说“反对我，就等于反对国家”，但是，他们也会为自己辩护，强调自己对当地的经济、就业等所做的贡献。因为他们知道，一旦公众反对的声音太大，自己就会失去市场。所以，最终他们还是妥协了，因为他们不想因此而失去市场。</p>\r\n<p>　　新京报：记者和归真堂负责人曾有这样一段对话，记者问：你难道不知道熊痛吗？归真堂负责人答：你又不是熊，你怎么知道熊痛？记者又问：你也不是熊，你怎么知道熊不痛？这似乎成了哲学问题。因为中国人爱说“子非鱼，焉知鱼之乐。”</p>\r\n<p>　　彼得·辛格：熊痛与不痛，这不是哲学问题。西方社会也有这种辩论，特别是在集约化养殖的问题上，辩论得很激烈。实际上，动物不只是能感知肉体上的痛苦，也能感知精神上的痛苦，比如是不是受压抑，生活是不是非常单调，有很多不同情感状态的表现。</p>\r\n<p>　　在欧盟，针对这样的辩论，设立了科学兽医委员会，由委员会来判断动物是不是承受了精神上的压抑与痛苦，如果最后的鉴定结论是，动物确实承受了精神上的压抑与痛苦，那么这种情况就必须加以改变。比如，对于集约化养鸡，由于这个委员会得出的结论是肯定的，现在欧盟已经改变了此前的规定，在新的规定当中，每一只母鸡都要有更大的生活空间，都要有自己的巢来产蛋，使它整个的生存状况得到了改变。</p>\r\n<p>　　新京报：像归真堂这样的企业，在澳大利亚会不会寻求上市？</p>\r\n<p>　　彼得·辛格：西方不存在活熊取胆的事，所以，没办法具体评论。在西方，也没有类似的利用动物开发，来获取利益的企业。通常来说，如果公众认为某个公司的做法违背了伦理，就会向选举出来的议员提出自己的意见，并通过他们，去影响法律的修订，或者直接向政府投诉，有的还会对这类公司进行直接的抗议活动。</p>\r\n<p>　　新京报：有人认为，活熊取胆是为了治病。如果保护了熊，人的利益却受到了损害，那么，就不能保护熊。在熊命与人命之间，人命更重要。对此，你怎么看？</p>\r\n<p>　　彼得·辛格：关键在于，能否做到既救人，又不让熊受到伤害。在西方，测定某种药物是否有用，是要做对比实验的：用两组人，一组人用测试药物，另一组人用象征性的东西，看被测试的药物是否真的有效。</p>\r\n<p>　　我非常支持中医药，只要它能真正对公众有益，就应该鼓励。但是，迄今为止，我还从来没有看到过这样的对比性测试。</p>\r\n<p>　　哈尔滨养犬条例：应在狗活着时拥有狗</p>\r\n<p>　　【新闻事件：2012年4月1日，黑龙江省哈尔滨市开始实施《哈尔滨市养犬管理条例》，《条例》规定:“居民养犬,每户限养一只,禁止饲养烈性犬、大型犬。”该禁令引起公众的强烈质疑,认为被禁养的种类过多,一些温顺的犬种也在被禁之列。同时,一些人对公安部门对居民已养大型犬的处置提出疑问,认为存在屠狗、虐狗行为。《条例》规定的六类犬只禁入区域，也同样引发公众的强烈质疑。】</p>\r\n<p>　　新京报：《哈尔滨市养犬管理条例》规定，凡是肩高超过50厘米、体长超过70厘米的犬类，一律禁养。对已经饲养的大型犬和烈性犬，居民可在5月31日到10月31日自行处理。11月1日之后没法安置的，可交公安机关留检所安置、饲养。对这种做法，你做何评价？</p>\r\n<p>　　彼得·辛格：从原则上讲，有些大体型的犬，确实不适合在公寓里养。因为从动物保护的角度讲，大型犬需要大的生活空间，而公寓过于狭小。哈尔滨市的做法，实际上是让狗的主人被迫放弃狗。这是不合适的。由于和狗的长期相处，被迫让主人放弃狗，会让人感到痛苦。合情合理的做法应该是，让主人在狗的有生之年拥有狗。但是，也要规定，在此之后不能再养。</p>\r\n<p>　　新京报：能简单用狗的个头大小，来判断其是否该禁养吗？</p>\r\n<p>　　彼得·辛格：当然不能。有些猎狗，虽然个头小，但也很凶猛。所以，不能单纯用个头大小，判断狗是不是凶猛，是不是该禁养。</p>\r\n<p>　　新京报：《条例》规定了六大类狗的禁入区域，如机关、企业事业单位办公区；学校教学区、食宿区，学前教育机构，医院，少年儿童聚集、活动的场所；影剧院、图书馆、博物馆、美术馆、体育场馆等公众文化娱乐场所；宾馆、饭店、商店；候车(船、机)厅等公共场所，但符合有关规定的除外；中央大街等步行街、休闲体育广场、绿化地带和公园。对此，你又有何意见？</p>\r\n<p>　　彼得·辛格：只规定狗不可以去的公共场所，却没有给他们划出可以去的公共场所，这样的规定是很不合理的。狗需要自由跑动，在其他国家和城市里，是这样解决这个问题的，就是在公园里划出狗可以自由奔跑的特别区域，在这里，狗可以和其他的狗一起玩耍。在有的公园里，即便狗不能自由跑，但只要牵着，就没问题了。至于学校、医院，不同的国家和城市，有不同的规定，但只要有人牵着，除了特殊的地方，一般来说就都可以进。在西方，比较普遍的禁区是食品店，食品店不允许狗进入，而只能拴在外面。</p>\r\n<p>　　新京报：餐厅可以进吗？</p>\r\n<p>　　彼得·辛格：除了导盲犬，狗一般不能进入餐厅。</p>\r\n<p>　　新京报：很遗憾，在北京，导盲犬也不能进入餐厅。</p>\r\n<p>　　彼得·辛格：这是不应该的。导盲犬可以进入所有的公共场所。在西方，如果拒绝导盲犬进入公共场所，是要被追究法律责任的。</p>\r\n<p>　　高速路救狗：“狗道”和“人道”能兼顾</p>\r\n<p>　　【新闻事件：2011年4月15日，因怀疑待宰杀的狗系非法途径而来，数百名动物保护志愿者、小动物保护协会成员，在京哈高速上强行拦截了一辆河南籍的运狗车辆。僵持15个小时后，最终，动物保护组织和志愿者出资11.5万元，将整车520条狗买下，连夜送往动物流浪中心安置。】</p>\r\n<p>　　新京报：在高速路上拦运狗车，这样的方式，是不是可行？</p>\r\n<p>　　彼得·辛格：如果因为救狗，人可能会被伤到，我不希望这样的事情发生。这是危险的。可以用其他更安全的方式，既阻止动物被虐待，又防止人不被伤害。</p>\r\n<p>　　新京报：针对这件事，有人说，此举是滥用私刑。你怎么看？</p>\r\n<p>　　彼得·辛格：在西方，有这样一个相当长的传统和历史，那就是虽然行为的方式有道理，但却是非法的。对此，西方人称之为“非暴力不合作”，马丁·路德·金就是用这种方式，达到反抗种族歧视的目的。所以，虽然高速路救狗可能是非法的，但由于它是正义的，所以，要尽量采取和平的、非暴力、不危险的方式来做。</p>\r\n<p>　　新京报：高速路救狗事件发生后，动保基金出钱买下了全部的狗。最近几天，又发生了类似买狗救狗的方式。对这种救助方式，有人提出了批评，认为会刺激狗的买卖。你怎么看？</p>\r\n<p>　　彼得·辛格：的确如此。如果出钱购买狗，是会刺激市场的，所以，这是不对的，也是不可取的。但是，如果证明这些狗的来源不合法，那么，临时通过购买去紧急救助，也是可以的。最关键的是，要从源头上阻止这类事情的发生，然后再开展后续的救助。当然，我并不是只关心狗，我关心所有的动物，比如猪。猪是非常聪明的动物。</p>\r\n<p>　　新京报：有一种观点认为，中国还有很多穷人没有得到及时救助，动保志愿者却忙着去救狗。这是只讲“狗道”，不讲“人道”。</p>\r\n<p>　　彼得·辛格：并不是如此。在我的经验当中，这两者可以兼顾。那些救助动物，为动物工作的人，常常也同样会去救助人。很多救助动物的人，常常会更加关注人类的贫困问题。反倒是那些不关注动物苦难的人，往往谁都不会关心，不管你是不是人。</p>\r\n<p>　　新京报：有人说，人类还没有解放，就去提倡动物解放，是不是虚伪的，或者说，是不是过于超前了？</p>\r\n<p>　　彼得·辛格：绝对不是这样的，不是虚伪，也不是超前。人类的问题是永远存在的，像美国这样的发达国家，也有贫困问题，也有种族歧视问题。如果要把人类的问题都解决完了，再去考虑解决动物的问题，这是不可能的。事实上，二者完全可以同时去做。这两个问题是相互促进的，那些关注动物的人，也会关注人，并不是相互矛盾的。</p>\r\n<p>　　新京报：现在，世界上已有100多个国家和地区出台了反对虐待动物的法案，而中国只有《野生动物保护法》，关于猫狗之类非野生动物的管理法规，尽管一直在酝酿中，但迟迟未能制定。对非野生动物，是不是也要立法保护，包括集约化养殖的动物？</p>\r\n<p>　　彼得·辛格：这个问题非常重要，非野生动物当然需要立法保护。圣雄甘地曾经说：“从对待动物的态度上，可以判断出一个民族是否伟大，精神是否高尚。”因为动物是最弱势的，它们没有办法表达自己的意愿。我们需要保护野生动物，也需要保护所有的动物。</p>\r\n<p>　　中国有非常好的保护动物的古老传统，应该把这种美好的传统，继承下来，发扬光大。中国现在的经济、社会发展速度很快，中国要对外展示自己的社会文明发展成果，要树立自己良好的国家和民族形象，特别需要尽快制定出台一个全面的动物保护法。</p>\r\n\r\n					</div>', '救助动物，就是在救助人\r\n\r\n救助动物，就是在救助人\r\n', '救助动物，就是在救助人', 'https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=115886696,251640004&fm=26&gp=0.jpg', '2020-05-12 00:00:00');
INSERT INTO `jotter_article` VALUES (3, '请救救我们的爱犬', '<p><img src=\"https://i.loli.net/2019/12/15/sYnuTIrDUwAfGgo.png\" alt=\"wjlogo.png\" /></p>\n<hr />\n<p><img src=\"https://img.shields.io/github/license/Antabot/White-Jotter\" alt=\"lisense\" /><br />\n<img src=\"https://img.shields.io/github/v/release/Antabot/White-Jotter\" alt=\"release\" /></p>\n<p>这是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。</p>\n<p>除了用作入门练习，我还希望该项目可以作为一些常见 Web 项目的脚手架，帮助大家简化搭建网站的流程。之所以叫白卷，是因为它从 0 开始，会随着时间的推移逐渐完善。</p>\n<p>欢迎加入微信圈子 【开发者】 分享、讨论学习经验：</p>\n<p><img src=\"https://i.loli.net/2020/01/17/HySWdM7wDfF8EKC.png\" alt=\"圈子\" /></p>\n<h1><a id=\"_17\"></a>整体效果</h1>\n<h2><a id=\"1_19\"></a>1.首页</h2>\n<p>作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan</p>\n<p><img src=\"https://img-blog.csdnimg.cn/20190403215932913.png\" alt=\"首页\" /></p>\n<h2><a id=\"2_25\"></a>2.图书馆</h2>\n<p>提供图书信息展示功能</p>\n<p><img src=\"https://i.loli.net/2019/12/03/AGLbIupct68ThBD.png\" alt=\"图书馆\" /></p>\n<h2><a id=\"3_31\"></a>3.登录页面</h2>\n<p><img src=\"https://i.loli.net/2019/04/14/5cb2fd5b78ae7.png\" alt=\"登录页面\" /></p>\n<h2><a id=\"4_35\"></a>4.后台管理</h2>\n<p>包含 dashboard、内容管理、用户及权限管理等</p>\n<p><img src=\"https://img-blog.csdnimg.cn/20191202200516251.png\" alt=\"后台\" /></p>\n<h1><a id=\"_41\"></a>技术栈</h1>\n<h2><a id=\"1_43\"></a>1.前端技术栈</h2>\n<p>1.Vue<br />\n2.ElementUI<br />\n3.axios</p>\n<h2><a id=\"2_49\"></a>2.后端技术栈</h2>\n<p>1.Spring Boot<br />\n2.Spring Data + JPA<br />\n3.MySQL<br />\n4.Shiro</p>\n<h1><a id=\"_56\"></a>部署方法</h1>\n<p>1.clone 项目到本地</p>\n<p><code>git clone https://github.com/Antabot/White-Jotter</code></p>\n<p>2.数据库脚本放在 <code>wj</code> 项目的根目录下，在MySQL中执行数据库脚本</p>\n<p>3.数据库配置在 <code>wj</code> 项目的 <code>src\\main\\resources</code> 目录下的<code>application.properties</code> 文件中，mysql 版本为 8.0.15</p>\n<p>4.在IntelliJ IDEA中运行 <code>wj</code> 项目，为了保证项目成功运行，可以右键点击 <code>pom.xml</code> 选择 maven -&gt; reimport ，并重启项目</p>\n<p>至此，服务端就启动成功了，同时，运行 <code>wj-vue</code> 项目，访问 <code>http://localhost:8080</code> ，即可进入登录页面，默认账号是 <code>admin</code>，密码是 <code>123</code></p>\n<p>如果要做二次开发，请继续看第五、六步。</p>\n<p>5.进入到 <code>wj-vue</code> 目录中，在命令行依次输入如下命令：</p>\n<pre><code class=\"lang-\"># 安装依赖\nnpm install\n\n# 在 localhost:8080 启动项目\nnpm run dev\n\n</code></pre>\n<p>由于在 <code>wj-vue</code> 项目中已经配置了端口转发，将数据转发到SpringBoot上，因此项目启动之后，在浏览器中输入 <code>http://localhost:8080</code> 就可以访问我们的前端项目了，所有的请求通过端口转发将数据传到 SpringBoot 中（注意此时不要关闭 SpringBoot 项目）。</p>\n<p>6.最后可以用 <code>WebStorm</code> 等工具打开 <code>wj-vue</code>项目，继续开发，开发完成后，当项目要上线时，依然进入到 <code>wj-vue</code> 目录，然后执行如下命令：</p>\n<pre><code class=\"lang-\">npm run build\n</code></pre>\n<p>该命令执行成功之后， <code>wj-vue</code> 目录下生成一个 <code>dist</code> 文件夹，可以将该文件夹中的两个文件 <code>static</code> 和 <code>index.html</code> 拷贝到 <code>wj</code> 项目中 <code>resources/static/</code> 目录下，然后直接运行 <code>wj</code> 项目，访问 <code>http://localhost:8443</code> ，实际上是把前端打包后作为静态文件，但不推荐使用这种方式。</p>\n<h1><a id=\"_93\"></a>教程</h1>\n<p>我在 CSDN 上分享了开发这个项目的教程，有兴趣的小伙伴可以点击下面的链接查看。</p>\n<p>1.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88925013\" target=\"_blank\">项目简介</a></p>\n<p>2.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88926242\" target=\"_blank\">使用 CLI 搭建 Vue.js 项目</a></p>\n<p>3.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88955387\" target=\"_blank\">前后端结合测试（登录页面开发）</a></p>\n<p>4.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/89294300\" target=\"_blank\">数据库的引入</a></p>\n<p>5.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/89298717\" target=\"_blank\">使用 Element 辅助前端开发</a></p>\n<p>6.<a href=\"https://learner.blog.csdn.net/article/details/89422585\" target=\"_blank\">前端路由与登录拦截器</a></p>\n<p>7.<a href=\"https://learner.blog.csdn.net/article/details/89853305\" target=\"_blank\">导航栏与图书页面设计</a></p>\n<p>8.<a href=\"https://learner.blog.csdn.net/article/details/92413933\" target=\"_blank\">数据库设计与增删改查</a></p>\n<p>9.<a href=\"https://learner.blog.csdn.net/article/details/95310666\" target=\"_blank\">核心功能的前端实现</a></p>\n<p>10.<a href=\"https://learner.blog.csdn.net/article/details/97619312\" target=\"_blank\">图片上传与项目的打包部署</a></p>\n<p>11.<a href=\"https://learner.blog.csdn.net/article/details/100849732\" target=\"_blank\">用户角色权限管理模块设计</a></p>\n<p>12.<a href=\"https://learner.blog.csdn.net/article/details/101121899\" target=\"_blank\">访问控制及其实现思路</a></p>\n<p>13.<a href=\"https://learner.blog.csdn.net/article/details/102690035\" target=\"_blank\">使用 Shiro 实现用户信息加密与登录认证</a></p>\n<p>14.<a href=\"https://learner.blog.csdn.net/article/details/102788866\" target=\"_blank\">用户认证方案与完善的访问拦截</a></p>\n<p>15.<a href=\"https://learner.blog.csdn.net/article/details/103114893\" target=\"_blank\">动态加载后台菜单</a></p>\n<p>16.<a href=\"https://learner.blog.csdn.net/article/details/103250775\" target=\"_blank\">功能级访问控制的实现</a></p>\n<p>(持续更新中)</p>\n<h1><a id=\"_131\"></a>近期更新</h1>\n<p>12-01 实现功能级权限控制<br />\n11-30 利用 vue-elment-admin 项目完善后台界面设计<br />\n11-17 重构项目，完成搭建后台基础界面，实现按角色加载菜单，取消前台访问限制<br />\n04-27 使用前端拦截器，数据库迁移至 mysql 8.0.15，后台管理页面初始化<br />\n04-13 完成图片的上传功能<br />\n04-11 完成图书分类功能<br />\n04-08 完成图书分页功能<br />\n04-06 完成图书查询功能<br />\n04-05 完成图书修改功能<br />\n04-04 完成图书删除功能<br />\n04-03 完成图书新增功能</p>\n', '![wjlogo.png](https://i.loli.net/2019/12/15/sYnuTIrDUwAfGgo.png)\n\n---\n\n![lisense](https://img.shields.io/github/license/Antabot/White-Jotter)\n![release](https://img.shields.io/github/v/release/Antabot/White-Jotter)\n\n\n这是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。\n\n除了用作入门练习，我还希望该项目可以作为一些常见 Web 项目的脚手架，帮助大家简化搭建网站的流程。之所以叫白卷，是因为它从 0 开始，会随着时间的推移逐渐完善。\n\n欢迎加入微信圈子 【开发者】 分享、讨论学习经验：\n\n![圈子](https://i.loli.net/2020/01/17/HySWdM7wDfF8EKC.png)\n\n\n# 整体效果\n\n## 1.首页\n\n作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan\n\n![首页](https://img-blog.csdnimg.cn/20190403215932913.png)\n\n## 2.图书馆\n\n提供图书信息展示功能\n\n![图书馆](https://i.loli.net/2019/12/03/AGLbIupct68ThBD.png)\n\n## 3.登录页面\n\n![登录页面](https://i.loli.net/2019/04/14/5cb2fd5b78ae7.png)\n\n## 4.后台管理\n\n包含 dashboard、内容管理、用户及权限管理等\n\n![后台](https://img-blog.csdnimg.cn/20191202200516251.png)\n\n# 技术栈\n\n## 1.前端技术栈\n\n1.Vue  \n2.ElementUI  \n3.axios   \n\n## 2.后端技术栈\n\n1.Spring Boot  \n2.Spring Data + JPA \n3.MySQL  \n4.Shiro\n\n# 部署方法\n\n1.clone 项目到本地\n\n`git clone https://github.com/Antabot/White-Jotter`\n\n2.数据库脚本放在 `wj` 项目的根目录下，在MySQL中执行数据库脚本  \n\n3.数据库配置在 `wj` 项目的 `src\\main\\resources` 目录下的`application.properties` 文件中，mysql 版本为 8.0.15   \n\n4.在IntelliJ IDEA中运行 `wj` 项目，为了保证项目成功运行，可以右键点击 `pom.xml` 选择 maven -> reimport ，并重启项目\n\n至此，服务端就启动成功了，同时，运行 `wj-vue` 项目，访问 `http://localhost:8080` ，即可进入登录页面，默认账号是 `admin`，密码是 `123`\n\n如果要做二次开发，请继续看第五、六步。\n\n5.进入到 `wj-vue` 目录中，在命令行依次输入如下命令：  \n\n```\n# 安装依赖\nnpm install\n\n# 在 localhost:8080 启动项目\nnpm run dev\n\n```  \n\n由于在 `wj-vue` 项目中已经配置了端口转发，将数据转发到SpringBoot上，因此项目启动之后，在浏览器中输入 `http://localhost:8080` 就可以访问我们的前端项目了，所有的请求通过端口转发将数据传到 SpringBoot 中（注意此时不要关闭 SpringBoot 项目）。\n\n6.最后可以用 `WebStorm` 等工具打开 `wj-vue`项目，继续开发，开发完成后，当项目要上线时，依然进入到 `wj-vue` 目录，然后执行如下命令：  \n\n```\nnpm run build\n```  \n\n该命令执行成功之后， `wj-vue` 目录下生成一个 `dist` 文件夹，可以将该文件夹中的两个文件 `static` 和 `index.html` 拷贝到 `wj` 项目中 `resources/static/` 目录下，然后直接运行 `wj` 项目，访问 `http://localhost:8443` ，实际上是把前端打包后作为静态文件，但不推荐使用这种方式。\n\n# 教程\n\n我在 CSDN 上分享了开发这个项目的教程，有兴趣的小伙伴可以点击下面的链接查看。  \n\n1.[项目简介](https://blog.csdn.net/Neuf_Soleil/article/details/88925013)\n\n2.[使用 CLI 搭建 Vue.js 项目](https://blog.csdn.net/Neuf_Soleil/article/details/88926242)\n\n3.[前后端结合测试（登录页面开发）](https://blog.csdn.net/Neuf_Soleil/article/details/88955387)\n\n4.[数据库的引入](https://blog.csdn.net/Neuf_Soleil/article/details/89294300)\n\n5.[使用 Element 辅助前端开发](https://blog.csdn.net/Neuf_Soleil/article/details/89298717)\n\n6.[前端路由与登录拦截器](https://learner.blog.csdn.net/article/details/89422585)\n\n7.[导航栏与图书页面设计](https://learner.blog.csdn.net/article/details/89853305)\n\n8.[数据库设计与增删改查](https://learner.blog.csdn.net/article/details/92413933)\n\n9.[核心功能的前端实现](https://learner.blog.csdn.net/article/details/95310666)\n\n10.[图片上传与项目的打包部署](https://learner.blog.csdn.net/article/details/97619312)\n\n11.[用户角色权限管理模块设计](https://learner.blog.csdn.net/article/details/100849732)\n\n12.[访问控制及其实现思路](https://learner.blog.csdn.net/article/details/101121899)\n\n13.[使用 Shiro 实现用户信息加密与登录认证](https://learner.blog.csdn.net/article/details/102690035)\n\n14.[用户认证方案与完善的访问拦截](https://learner.blog.csdn.net/article/details/102788866)\n\n15.[动态加载后台菜单](https://learner.blog.csdn.net/article/details/103114893)\n\n16.[功能级访问控制的实现](https://learner.blog.csdn.net/article/details/103250775)\n\n(持续更新中)\n\n# 近期更新\n \n12-01 实现功能级权限控制  \n11-30 利用 vue-elment-admin 项目完善后台界面设计  \n11-17 重构项目，完成搭建后台基础界面，实现按角色加载菜单，取消前台访问限制  \n04-27 使用前端拦截器，数据库迁移至 mysql 8.0.15，后台管理页面初始化  \n04-13 完成图片的上传功能  \n04-11 完成图书分类功能  \n04-08 完成图书分页功能  \n04-06 完成图书查询功能  \n04-05 完成图书修改功能  \n04-04 完成图书删除功能  \n04-03 完成图书新增功能\n', '我爱你金毛：我是癌症患者,病魔给了我难以想象的痛苦,也把我变成了不完整女人,但是,我依然心存生的希望。因为,抗争病痛不仅有亲人、朋友的关爱、呵护,还有一只忠诚、温顺、聪明、乖巧、可爱的金毛犬与我朝夕相伴,他已融入了我的生命,成了我抗争癌魔的力量和信心。如今,一纸禁养令,似晴天霹雳,对我也是死亡的宣判。 ', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3719181367,1696644321&fm=26&gp=0.jpg', '2020-01-19 00:00:00');
INSERT INTO `jotter_article` VALUES (4, '基本的救助流浪猫的方法', '<div class=\"paragraph\">\r\n						<p class=\"content-l-title\">\r\n							基本的救助流浪猫的方法\r\n						</p>\r\n						<p class=\"content-l-time\">\r\n							发布日期：2014-02-18 22:39:00\r\n						</p>\r\n						<p><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></p>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">基本的救助流浪猫的方法</span></div>\r\n<div style=\"\\&quot;text-indent:\" 21pt\\\"=\"\"><span style=\"\\&quot;font-size:\" large\\\"=\"\">本文来自http://www.salove.org/html/showarticle.asp?id=499，如有侵权，请联系csapa@csapa.org。</span></div>\r\n<div style=\"\\&quot;text-indent:\" 21pt\\\"=\"\"><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">针对流浪猫应注意以下情况：</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">1.因为我们的能力有限，我们应该先救助那些受伤了，生命受到危险的猫咪为先，也因为猫咪受伤了多数没有太大的反抗攻击力，救助难度也少。对于没有伤病在街上溜达的猫咪，我们应该先判断是不是居民散养的，因为现在居民散养猫咪情况是非常多的，散养的猫咪有的会带上防蚤颈圈和宠物颈圈，外表干净毛摸上去比较柔软。我们从外表能大概判断，也可以经过询问附近店铺居民了解。如遇到怀疑散养或走失的，我们应先安置好，拍照为它寻找主人。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">2.猫一般是怕人胆小的，我们可以先轻轻的接近，喂点食物减低它们的防备心。确定是流浪猫的话我们可以：</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">（1）亲人性格温和的，能让人摸和抱，不会一直要逃跑的。 可以带到正规的医院做绝育手术，然后拍照片为它寻找领养。因为它们以前应该是有主人的，容易适应家庭生活适合领养。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">（2）有一定戒备心的，但容易亲人性格温和的。可以带到正规的医院做绝育手术，然后拍照片为它寻找领养。因为它们以前应该是有主人的，但流浪一段时间形成戒备心理，但可以通过调理至适合领养。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">（3）戒备心很强的，不亲人但能捉到的，可以带到正规的医院做绝育手术，然后放会原地进行群护喂养。可能是流浪猫生下的小猫，或从小就流浪，部分可以通过调理到适合领养，如果实在不适合领养只能放回原地群护喂养。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">（4）有攻击性，对人非常凶恶的，尽量捕捉带到正规的医院做绝育手术。然后放会原地进行群护喂养。可能被人伤害或性格凶猛，这类型的猫咪适合绝育后放回原地群护喂养。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">中心提供网络平台为大家发布领养或者救助信息，动物医院绝育和治疗优惠，筹集救助资金等等帮助。详细请浏览网站获得帮助。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">流浪猫参考护理方法：</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">其实只要你家里有一定的空间能把自己养的猫和流浪猫隔离，或者你自己没有养动物的话，其实你可以把流浪猫带回家做简单的护理，很多没有病痛的猫咪经过护理之后就可以为它找领养了，参考方法如下。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">1.先将猫咪固定在一个封闭安全的地方，例如笼子，阳台。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">2.检查猫咪身体有没有外伤，跳蚤寄生虫等。就算猫咪邋遢也不要先急于洗澡。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">3.用适当的容器装好猫粮、水在猫咪附近，可以用纸箱铺垫旧衣服毛巾做临时窝，或者直接在地上用毛巾旧衣服垫着也可以。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">4.跳蚤可以买水剂体外驱虫药去除，注意不要用去蚤颈圈，因为效果不好而且可能有毒性。在猫咪颈背就是头和颈的接驳位置滴就可以。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">5.用热毛巾把猫咪的身体搽干净，然后让猫咪休息，大约隔离3-7天就可以为猫咪找领养了。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">6.各类常见问题处理：</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">(1)猫咪眼睛睁不开，留眼水或眼睛很邋遢？</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">先睇1滴普通眼药水，再用纸巾轻轻擦干净猫咪的眼睛直到眼睛干净明亮即可。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">(2)小猫咪不能排便？</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">用湿的棉签轻轻的擦肛门，就是尾巴下面的位置。大约2-3次猫咪就会排便，如果多天不能排便可以用小儿开塞露挤一点进肛门令猫咪排便。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">(3)简单外伤处理</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">如果猫咪有轻微的外伤例如皮肤破损、掉毛掉皮等，可以用双氧水表面消毒，再用碘酒碘伏进行2次消毒。如果伤口比较大或者深一点，可以消毒后外敷云南白药（药房卖大约几元一小瓶的粉剂）。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">如果猫咪有轻微拉肚子，可以给妈咪爱、思密达（药房有售，大约是20-30元一盒），大约给成猫3分1包、小猫4分1包每次的分量混合肉或者妙鲜包给猫咪吃，大约每天1次。</span></div>\r\n<div><span style=\"\\&quot;font-size:\" large\\\"=\"\">&nbsp;</span></div>\r\n					</div>', '针对流浪猫应注意以下情况：\r\n \r\n1.因为我们的能力有限，我们应该先救助那些受伤了，生命受到危险的猫咪为先，也因为猫咪受伤了多数没有太大的反抗攻击力，救助难度也少', '针对流浪猫应注意以下情况：', 'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=523074288,809559107&fm=26&gp=0.jpg', '2020-03-19 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '2698d7d3b026c7ffecb3d7c24885f8bf', 'p4hHg7OGAN5z8VenmP1UKA==', '管理员', '13609213518', '1520246115@qq.com', 1);
INSERT INTO `user` VALUES (2, 'guest', '2698d7d3b026c7ffecb3d7c24885f8bf', 'p4hHg7OGAN5z8VenmP1UKA==', '测试', '12345678912', 'mengxia@qq.com', 1);
INSERT INTO `user` VALUES (3, 'editor', '2698d7d3b026c7ffecb3d7c24885f8bf', 'p4hHg7OGAN5z8VenmP1UKA==', '编辑', '45661124554', 'jiege@qq.com', NULL);
INSERT INTO `user` VALUES (4, 'jiege', '2698d7d3b026c7ffecb3d7c24885f8bf', 'p4hHg7OGAN5z8VenmP1UKA==', NULL, NULL, NULL, 0);
INSERT INTO `user` VALUES (5, 'developer', '5b9ba127c41236653cf4643e78704a51', 'Ry08qYBjQXvJLdn2zSohIg==', 'jiege', '6516564646', '646546546@qq.com', 1);
INSERT INTO `user` VALUES (6, 'servertest1', '0d630de52e5b8ee2b11b92e9dd5b1549', 'x9nVkqCjJFNxNJabRvUwPA==', 'ss', '131431431', '12312312@qq/com', 1);

SET FOREIGN_KEY_CHECKS = 1;
