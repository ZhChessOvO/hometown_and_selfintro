/*
 Navicat Premium Data Transfer

 Source Server         : dsWeb
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : hometown

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 19/01/2021 18:25:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1@qq.com', 'Chess', '123456');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'Chess', '欢迎来到留言板！点击“我要留言”或者“回复”进行交流吧！');
INSERT INTO `comment` VALUES (2, 'guest2', '_(:з」∠)_');
INSERT INTO `comment` VALUES (3, 'Chess', '好耶！');

-- ----------------------------
-- Table structure for currentreply
-- ----------------------------
DROP TABLE IF EXISTS `currentreply`;
CREATE TABLE `currentreply`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of currentreply
-- ----------------------------
INSERT INTO `currentreply` VALUES (0);

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES (1, '元宵灯会', '明清两代，南京元宵灯会，有玩龙灯和挂纱灯之俗。玩龙灯不但老百姓玩，军人也玩，长度也为他处所不及，短的十余丈，长的百余节，玩起来多则上百人。纱灯有楮练纱帛，而且有名人在上面作画，愈是高手价值愈高。商家届时也在店前举办猜灯谜活动，吸引众多游客，猜中者即奖所售物品。有一种由南京人首创的“走马灯”，外罩灯笼，内点蜡烛，利用空气热胀上升的原理，带动灯面转动，灯面上画着各种姿势的骏马疾驰，宛如万马奔腾。英国学者李约瑟称之为中国古代人的一项发明。龙灯气势磅礴，纱灯精美绝伦，五光十色，万象争辉，引得长居逗客倾城出，欢歌笑语动地来，“银烛影中明月下，相逢俱是踏灯人”。近几十年来，夫子庙元宵灯会越办越红火，利用新工艺、新材料，声光电控，五花八门，维妙维肖，斑斓夺目。灯会自春节起，为期一月。期间，每天吸引四方游客达二三十万人之多。', 'static/img/custom1.jpg');
INSERT INTO `custom` VALUES (2, '端午秦淮', '午饭后，全家人去夫子庙观看秦淮河龙舟竞渡。金陵龙舟向有“三帮”，有河帮、江帮、木帮，龙舟之多，规模之大，别处也不多见。各船均饰以彩筝；有少儿扮戏中人物在上作种种游戏。当舟过之时，河岸人家掷银角、铜钱或放鹅鸭，为龙舟竞取之以为乐，谓之“夺标”。岸边男女蚁集，罗绮如云，金鼓齐鸣，欢声雷动。富庶人家还事先订租游船，泛舟览胜。秦淮游船自唐朝兴起，明清直至民国前期为盛。画船箫鼓，桨声灯影是秦淮河上一道斑斓夺目的亮丽风光。这在顾起元《客座赘语》、孔尚任《桃花扇》和余怀《板桥杂记》中均有生动记述。近20多年来，秦淮河又进行了大力整治，定期换水，增添画舫，景色宜人。入夜，秦淮两岸万家灯火，五光十色，流光溢彩。游人置身游船中，船在景中过，人在画中行，自有别样情趣。', 'static/img/custom2.jpg');

-- ----------------------------
-- Table structure for develop
-- ----------------------------
DROP TABLE IF EXISTS `develop`;
CREATE TABLE `develop`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of develop
-- ----------------------------
INSERT INTO `develop` VALUES (1, 'C', '掌握——进行过课设开发');
INSERT INTO `develop` VALUES (2, 'C++', '掌握——进行过项目开发');
INSERT INTO `develop` VALUES (3, 'Java', '理解——进行过课程学习');
INSERT INTO `develop` VALUES (4, 'Java Web及相关知识', '掌握——进行过课设开发');
INSERT INTO `develop` VALUES (5, 'Python', '掌握——进行过课设和项目开发');
INSERT INTO `develop` VALUES (6, 'BootStrap框架', '掌握——进行过课设开发');
INSERT INTO `develop` VALUES (7, 'Django框架', '掌握——进行过课设和项目开发');
INSERT INTO `develop` VALUES (8, 'SQL Server', '理解——进行过课程学习');
INSERT INTO `develop` VALUES (9, 'MySQL', '掌握——进行过课设开发');
INSERT INTO `develop` VALUES (10, 'SQLite', '掌握——进行过课设开发');
INSERT INTO `develop` VALUES (11, 'Neo4j', '掌握——进行过项目开发');
INSERT INTO `develop` VALUES (12, 'R', '了解——用于建模比赛');
INSERT INTO `develop` VALUES (13, 'Matlab', '了解——用于建模比赛');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '鸭血粉丝汤', '鸭血粉丝汤是南京的传统名菜，属金陵菜、金陵小吃，是金陵菜和金陵小吃中重要的代表，也是久负盛名以鸭为特色的美食之一。鸭血粉丝汤由鸭血、鸭肠、鸭肝等加入鸭汤和粉丝制成，以其口味平和，鲜香爽滑的特点与南北皆宜的口味特色，风靡于全国各地。', 'static/img/food1.jpg');
INSERT INTO `food` VALUES (2, '皮肚面', '皮肚面是南京的特色小吃，属金陵菜、金陵小吃，其汤料充盈，物料多样，鲜美爽口。皮肚中含有大量的微量元素，能促进新陈代谢，又能滋颜润肤。', 'static/img/food2.jpg');
INSERT INTO `food` VALUES (3, '活珠子', '活珠子是南京的著名特产，属金陵小吃，是当鸡蛋即将孵成一个生命但是又没有完全成形，蛋里面已经有了头、翅膀、脚的痕迹，这种亦鸡亦蛋的鸡蛋孵化物叫做“活珠子”。“活珠子”是经传统孵化发育而成的鸡胚胎，因其发育中囊胚在透视状态下形如活动的珍珠，故称“活珠子”。', 'static/img/food3.png');

-- ----------------------------
-- Table structure for logstatus
-- ----------------------------
DROP TABLE IF EXISTS `logstatus`;
CREATE TABLE `logstatus`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logstatus
-- ----------------------------
INSERT INTO `logstatus` VALUES ('Chess');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(11) NOT NULL,
  `re` int(255) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 1, 'guest1', '你好');
INSERT INTO `reply` VALUES (2, 1, 'Chess', '测试一下回复');
INSERT INTO `reply` VALUES (3, 1, 'Chess', '再测试一下回复');
INSERT INTO `reply` VALUES (4, 2, 'guest1', '我来回复！');
INSERT INTO `reply` VALUES (5, 2, 'guest1', '测试');
INSERT INTO `reply` VALUES (6, 3, 'guest1', '禁止好耶');
INSERT INTO `reply` VALUES (7, 3, 'test', '禁止禁止好耶');

-- ----------------------------
-- Table structure for reward
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward
-- ----------------------------
INSERT INTO `reward` VALUES (1, '2018年宿舍风采大赛', '院二');
INSERT INTO `reward` VALUES (2, '2018年新生风采大赛', '院三');
INSERT INTO `reward` VALUES (3, '2018年秋季运动会8*400m第八', '校');
INSERT INTO `reward` VALUES (4, '2018党建主题活动优秀组织奖', '院');
INSERT INTO `reward` VALUES (5, '61期党校初级班结业', '校');
INSERT INTO `reward` VALUES (6, '2019模拟党支部成果汇报', '院三');
INSERT INTO `reward` VALUES (7, '暑期社会实践优秀证书', '院一');
INSERT INTO `reward` VALUES (8, '2019社会实践优秀团队', '校一');
INSERT INTO `reward` VALUES (9, '2019全国大学生数学建模竞赛', '省二');
INSERT INTO `reward` VALUES (10, '2019“Conflux”杯程序设计竞赛', '校二');
INSERT INTO `reward` VALUES (11, '2018-2019学年优秀学生奖学金', '校二');
INSERT INTO `reward` VALUES (12, '2018-2019学年优秀学生干部', '校');
INSERT INTO `reward` VALUES (13, '2018-2019学年三好学生', '校');
INSERT INTO `reward` VALUES (14, '62期党校提高班结业', '校');
INSERT INTO `reward` VALUES (15, '29期党校预备党员培训班结业', '校');
INSERT INTO `reward` VALUES (16, '2020美国数学建模比赛', '世三');
INSERT INTO `reward` VALUES (17, '2020蓝桥杯程序设计竞赛', '省二');
INSERT INTO `reward` VALUES (18, '2019-2020学年优秀学生奖学金', '校三');
INSERT INTO `reward` VALUES (19, '2019-2020学年优秀学生干部', '校');
INSERT INTO `reward` VALUES (20, '2019-2020学年优秀学生干部（团委）', '校');
INSERT INTO `reward` VALUES (21, '2019-2020学年三好学生', '校');
INSERT INTO `reward` VALUES (22, '2019-2020学年学术优秀奖学金', '校');
INSERT INTO `reward` VALUES (23, '2020百度前端技术训练营结业', '校');

-- ----------------------------
-- Table structure for scene
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES (1, '明孝陵', '明孝陵位于南京市玄武区紫金山南麓独龙阜玩珠峰下，东毗中山陵，南临梅花山，位于钟山风景名胜区内，是明太祖朱元璋与其皇后的合葬陵寝。因皇后马氏谥号“孝慈高皇后”，又因奉行孝治天下，故名“孝陵”。其占地面积达170余万平方米，是中国规模最大的帝王陵寝之一。', 'static/img/scene1.png');
INSERT INTO `scene` VALUES (2, '玄武湖', '玄武湖位于南京市玄武区，东枕紫金山、西靠明城墙、北邻南京站、南倚覆舟山，是江南地区最大的城内公园，也是中国最大的皇家园林湖泊、仅存的江南皇家园林，被誉为“金陵明珠”，又称后湖、北湖。', 'static/img/scene2.jpg');
INSERT INTO `scene` VALUES (3, '中山陵', '中山陵位于南京市玄武区紫金山南麓钟山风景名胜区内，是中国近代伟大的民主革命先行者孙中山先生的陵寝及其附属纪念建筑群，陵寝面积8万余平方米，于1926年春动工，至1929年夏建成。', 'static/img/scene3.jpg');
INSERT INTO `scene` VALUES (4, '南京总统府', '南京总统府位于南京市玄武区长江路292号，是中国近代建筑遗存中规模最大、保存最完整的建筑群，也是南京民国建筑的主要代表之一，中国近代历史的重要遗址。南京总统府自近代以来，多次成为中国政治军事的中枢、重大事件的策源地，中国一系列重大事件或在这里发生，或与这里密切相关，许多重要人物都在此活动过。', 'static/img/scene4.jpg');

-- ----------------------------
-- Table structure for science
-- ----------------------------
DROP TABLE IF EXISTS `science`;
CREATE TABLE `science`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES (1, '北林信息化平台建设——林次元口袋', '已完成');
INSERT INTO `science` VALUES (2, '基于知识图谱的中医药问答系统', '进行中');

-- ----------------------------
-- Table structure for study
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study`  (
  `id` int(11) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `credit` float(10, 1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study
-- ----------------------------
INSERT INTO `study` VALUES (1, '2018-2019-1', '思想道德修养与法律基础', 84, 3.0);
INSERT INTO `study` VALUES (2, '2018-2019-1', '大学英语', 92, 3.0);
INSERT INTO `study` VALUES (3, '2018-2019-1', '中国饮食文化', 85, 1.5);
INSERT INTO `study` VALUES (4, '2018-2019-1', '计算机导论', 92, 2.5);
INSERT INTO `study` VALUES (5, '2018-2019-1', '形势与政策', 88, 0.5);
INSERT INTO `study` VALUES (6, '2018-2019-1', '创新能力学', 95, 1.5);
INSERT INTO `study` VALUES (7, '2018-2019-1', '体育', 80, 2.3);
INSERT INTO `study` VALUES (8, '2018-2019-1', '高等数学A', 94, 5.5);
INSERT INTO `study` VALUES (9, '2018-2019-1', '化学与社会', 96, 1.5);
INSERT INTO `study` VALUES (10, '2018-2019-1', '程序设计基础实验', 88, 1.5);
INSERT INTO `study` VALUES (11, '2018-2019-1', '程序设计基础', 93, 2.5);
INSERT INTO `study` VALUES (12, '2018-2019-1', '离散结构', 87, 3.5);
INSERT INTO `study` VALUES (14, '2018-2019-2', '大学英语', 93, 3.0);
INSERT INTO `study` VALUES (15, '2018-2019-2', '问题求解与编程', 97, 2.0);
INSERT INTO `study` VALUES (16, '2018-2019-2', 'C++程序设计', 100, 3.0);
INSERT INTO `study` VALUES (17, '2018-2019-2', '电路与电子学基础', 81, 3.0);
INSERT INTO `study` VALUES (18, '2018-2019-2', '青春健康教育', 96, 1.5);
INSERT INTO `study` VALUES (19, '2018-2019-2', '体育', 88, 2.3);
INSERT INTO `study` VALUES (20, '2018-2019-2', '林学概论', 82, 2.0);
INSERT INTO `study` VALUES (22, '2018-2019-2', '高等数学A', 95, 5.5);
INSERT INTO `study` VALUES (23, '2018-2019-2', '线性代数A', 95, 3.0);
INSERT INTO `study` VALUES (24, '2018-2019-2', '林学概论(实习)', 80, 1.0);
INSERT INTO `study` VALUES (25, '2018-2019-2', '中国近现代史纲要', 85, 3.0);
INSERT INTO `study` VALUES (26, '2018-2019-2', '交响乐鉴赏', 91, 1.5);
INSERT INTO `study` VALUES (27, '2018-2019-2', '形势与政策', 78, 0.5);
INSERT INTO `study` VALUES (29, '2018-2019-3', 'Invasion Biology', 84, 2.0);
INSERT INTO `study` VALUES (30, '2019-2020-1', '体育', 81, 2.3);
INSERT INTO `study` VALUES (31, '2019-2020-1', '毛泽东思想和中国特色社会主义理论体系概论', 95, 5.0);
INSERT INTO `study` VALUES (32, '2019-2020-1', '数据结构A', 94, 4.0);
INSERT INTO `study` VALUES (33, '2019-2020-1', '就业指导课程体系', 96, 0.5);
INSERT INTO `study` VALUES (34, '2019-2020-1', '形势与政策', 95, 0.5);
INSERT INTO `study` VALUES (35, '2019-2020-1', '大学英语（西方文化）', 93, 2.0);
INSERT INTO `study` VALUES (37, '2019-2020-1', '概率论与数理统计B', 98, 3.5);
INSERT INTO `study` VALUES (38, '2019-2020-1', '数字电子技术A', 93, 4.0);
INSERT INTO `study` VALUES (40, '2019-2020-1', '计算机组成原理A', 91, 3.0);
INSERT INTO `study` VALUES (41, '2019-2020-1', '数据结构A(课程设计)', 94, 1.0);
INSERT INTO `study` VALUES (42, '2019-2020-2', '计算机体系结构', 92, 2.5);
INSERT INTO `study` VALUES (43, '2019-2020-2', '马克思主义基本原理概论', 90, 3.0);
INSERT INTO `study` VALUES (44, '2019-2020-2', '管理学基础', 83, 2.0);
INSERT INTO `study` VALUES (45, '2019-2020-2', '体育', 70, 2.3);
INSERT INTO `study` VALUES (46, '2019-2020-2', '计算机算法设计与实践（课程设计）', 99, 1.0);
INSERT INTO `study` VALUES (48, '2019-2020-2', '操作系统A(课程设计)', 89, 1.0);
INSERT INTO `study` VALUES (49, '2019-2020-2', '计算机算法设计与实践', 94, 3.0);
INSERT INTO `study` VALUES (50, '2019-2020-2', '操作系统A', 83, 3.5);
INSERT INTO `study` VALUES (51, '2019-2020-2', '形势与政策', 92, 0.5);
INSERT INTO `study` VALUES (52, '2019-2020-2', '中华人民共和国外交风云', 86, 1.5);
INSERT INTO `study` VALUES (53, '2019-2020-2', '日本影视艺术欣赏', 92, 1.5);
INSERT INTO `study` VALUES (54, '2019-2020-2', '大学英语（中国文化）', 83, 2.0);
INSERT INTO `study` VALUES (55, '2019-2020-2', '科技论文写作', 90, 1.5);
INSERT INTO `study` VALUES (56, '2020-2021-1', '计算机网络A', 96, 4.0);
INSERT INTO `study` VALUES (57, '2020-2021-1', '大学英语（实用英语）', 94, 2.0);
INSERT INTO `study` VALUES (58, '2020-2021-1', '概率论', 99, 2.0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1@qq.com', 'guest1', '1');
INSERT INTO `user` VALUES ('test@qq.com', 'test', 'test');

SET FOREIGN_KEY_CHECKS = 1;
