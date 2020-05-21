/*
 Navicat Premium Data Transfer

 Source Server         : MySql_120.25.154.76
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 120.25.154.76:3306
 Source Schema         : SmallProfitMall

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/05/2020 19:28:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ProductBasis
-- ----------------------------
DROP TABLE IF EXISTS `ProductBasis`;
CREATE TABLE `ProductBasis`  (
  `id` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductVideo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProductWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prodcutPrimaryCategory` int(11) NULL DEFAULT NULL,
  `productSecondaryCategory` int(11) NULL DEFAULT NULL,
  `productFinalCategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productPageviews` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductBasis
-- ----------------------------
INSERT INTO `ProductBasis` VALUES (1, 10001, 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.isdfmk.xyz/v.f30.mp4', '0.74kg', 104, 1009, '10062', 12);
INSERT INTO `ProductBasis` VALUES (3, 10002, 'Apple AirPods Pro 主动降噪无线蓝牙耳机', '\r\nhttp://productdata.isdfmk.xyz/v.f30.mp4', '0.24kg', NULL, 1010, '10075', 3);
INSERT INTO `ProductBasis` VALUES (4, 10010, '阿玛尼（ Emporio Armani）满天星手表 女新款玫瑰金钢制表带镶钻石英轻奢女士腕表礼物 AR11244 ', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%281%29.mp4', '\r\n0.485kg', 106, 1015, NULL, 12);
INSERT INTO `ProductBasis` VALUES (5, 10011, 'Apple iPhone 11 Pro Max (A2220) 64GB 金色 移动联通电信4G手机 双卡双待 ', '\r\nhttp://productdata.isdfmk.xyz/v.f10011.mp4', '0.56kg', 104, 1009, '10062', 3);
INSERT INTO `ProductBasis` VALUES (6, 10012, '联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑(标压锐龙R5-3550H 16G 512G 2.5K QHD 100%sRGB)银 ', '\r\nhttp://productdata.isdfmk.xyz/10012%5B1%5D.mp4', '2.08kg', 107, 1017, '10126', 8);
INSERT INTO `ProductBasis` VALUES (7, 10013, '华硕（ASUS）猛禽ROG-STRIX-GeForce RTX 2080 ', 'https://jdvod.300hu.com/4c1f7a6atransbjngwcloud1oss/7d07cd26107144746580840449/v.f30.mp4?dockingId=88290b33-b297-4d55-aa10-3996cc45a4b6&storageSource=3', '2.08kg', 107, 1018, NULL, 2);
INSERT INTO `ProductBasis` VALUES (8, 10014, '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/sdfjsdfjmrthnndvisdgsdg.mp4', '2.8kg', 107, 1018, NULL, 7);
INSERT INTO `ProductBasis` VALUES (9, 10015, '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/sdkjj.mp4', '0.15kg', NULL, NULL, NULL, 2);
INSERT INTO `ProductBasis` VALUES (10, 10016, '华为 HUAWEI Mate 30 Pro 麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄手机', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%282%29.mp4', '0.54kg', 104, 1009, '10062', 2);
INSERT INTO `ProductBasis` VALUES (11, 10017, 'Apple Watch Series 5智能手表（GPS款 40毫米深空灰色铝金属表壳 黑色运动型表带 MWV82CH/A)\r\n', 'http://productdata.isdfmk.xyz/asuashfoeryubvxcmivmdsfomaosaergl.mp4', '0.23kg', 106, 1015, NULL, 1);
INSERT INTO `ProductBasis` VALUES (12, 10003, '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', NULL, '不计重', NULL, NULL, NULL, 3);
INSERT INTO `ProductBasis` VALUES (13, 10004, '新款Huawei/华为折叠手机mates xs 5g版大屏双屏全面屏双面屏官方旗舰店对折手机可折叠屏 Mate XS折叠\r\n', 'http://productdata.isdfmk.xyz/sdfjsdomytupj,nkc.mp4', '0.24kg', 104, 1009, '10066', 1);
INSERT INTO `ProductBasis` VALUES (14, 10005, 'Apple iPad Pro 12.9英寸平板电脑 2018款(64G WLAN版/全面屏/A12X/FaceID MTEL2CH/A)深空灰\r\n', 'http://productdata.isdfmk.xyz/diferwngmopsvm,jaks.mp4', '2.8kg', 106, 1016, '10119', 1);
INSERT INTO `ProductBasis` VALUES (15, 10006, ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/iorhmm,wcvihj.mp4', '0.6kg', NULL, 1010, '10075', 1);
INSERT INTO `ProductBasis` VALUES (16, 10007, 'Hot Toys 复仇者联盟3 无限战争 HOTTOYS 钢铁侠 模型玩具礼物 MK7 普通版\r\n\r\n', NULL, '5kg', NULL, NULL, NULL, 1);
INSERT INTO `ProductBasis` VALUES (17, 10008, '万代（BANDAI） Megahouse POP 海贼王 路飞9人 模型玩具（无售后！！！） 四档路飞\r\n', NULL, '100kg', NULL, NULL, NULL, 1);
INSERT INTO `ProductBasis` VALUES (18, 10009, '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', NULL, '5.6kg', 107, 1017, '10126', 1);
INSERT INTO `ProductBasis` VALUES (19, 10018, '【专柜正品】Dior迪奥口红烈艳蓝金女士唇膏999口红套装送女友生日礼物 送老婆情人节礼物 【情人节星星限量版五只装套盒】', '\r\nhttp://productdata.isdfmk.xyz/v.f30%20%284%29.mp4\r\n\r\n', '0.4kg', 113, NULL, NULL, 2);
INSERT INTO `ProductBasis` VALUES (10018, 10019, '【二手95新】劳力士 系列:迪通拿系列 型号:116505 材质:18k玫瑰金 镜面:蓝宝石玻璃 未使用', NULL, '220克', 118, 1042, NULL, 1);
INSERT INTO `ProductBasis` VALUES (10019, 10020, '华硕（ASUS）ROG Strix XG27VQ 27英寸144HZ 1800R Free-Sync旋转升降AURA-RGB电竞显示器（HDMI/DP/DVI）', 'http://productdata.isdfmk.xyz/0a2dn6qco6afmqiL4K2doafhoaGdmaydo6M.mp4', '16.84kg', 101, 1001, NULL, 2);
INSERT INTO `ProductBasis` VALUES (10020, 10021, '长虹（CHANGHONG）D6U 长虹 激光电视 影院 投影仪 激光电视 私人电影院 投影机 长虹 4K画质 3500流明 115%广色域 AI人工智能 语音控制\r\n4K画质，3500流明，115%广色域，AI人工智能，语音控制  ', '', '5.84kg', 101, 1001, '10002', 1);
INSERT INTO `ProductBasis` VALUES (10021, 10023, '\r\nCOACH PARKER 16 女士山茶花装饰可斜挎双肩包', NULL, NULL, 117, 1039, '10295', 1);
INSERT INTO `ProductBasis` VALUES (10022, 10024, 'HHKB Professional BT 蓝牙版黑无刻静电容键盘 程序员码农专用便携迷你键盘 编程适用', 'http://productdata.isdfmk.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', NULL, 107, 1019, '10141', 2);
INSERT INTO `ProductBasis` VALUES (10023, 10025, '【良品铺子】综合果仁525g 每日坚果组合混合干果礼盒零食大礼包健康零食', NULL, '575.5g', NULL, NULL, NULL, 2);
INSERT INTO `ProductBasis` VALUES (10024, 10022, 'Classic | 40mm Canterbury', NULL, NULL, 118, 1026, '10189', 2);
INSERT INTO `ProductBasis` VALUES (10025, 10026, '2019新款翻领磨破短款女士休闲牛仔外套', NULL, NULL, 111, 1026, '1026', 1);
INSERT INTO `ProductBasis` VALUES (10026, 10027, '【假一赔十】beats solo3wireless 蓝牙耳机头戴式 米奇 游戏手机耳机 折叠式重低音 运动 玫瑰金', NULL, NULL, NULL, 1010, '10075', 1);
INSERT INTO `ProductBasis` VALUES (10027, 10028, '小米（MI）小爱智能音箱Pro 无线蓝牙音响 语音控制智能家居 APP远程操控 专业DTS 音效 黑色', NULL, '\r\n1.56kg', 106, 1014, '10106', 1);
INSERT INTO `ProductBasis` VALUES (10028, 10029, '美国正品代购阿迪达斯adidas YEEZY BOOST 350 V2 侃爷冰蓝椰子鞋新款男跑步鞋', NULL, '2.5kg', 119, 1043, '10320', 1);
INSERT INTO `ProductBasis` VALUES (10029, 10030, '夹克男工装外套男士韩版宽松潮流上衣服2019秋季新款男装潮牌连帽夹克衫男学生', 'http://productdata.isdfmk.xyz/0a2dn62WqaCdmqiL4K2doafhoaOhnqeZpKc.mp4', '0.1', 110, 1025, '10182', 1);

-- ----------------------------
-- Table structure for ProductColour
-- ----------------------------
DROP TABLE IF EXISTS `ProductColour`;
CREATE TABLE `ProductColour`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductColour` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductColour
-- ----------------------------
INSERT INTO `ProductColour` VALUES (1, 10001, '黑色');
INSERT INTO `ProductColour` VALUES (2, 10001, '绿色');
INSERT INTO `ProductColour` VALUES (3, 10001, '紫色');
INSERT INTO `ProductColour` VALUES (4, 10002, '白色');
INSERT INTO `ProductColour` VALUES (5, 10010, '圣颜色');
INSERT INTO `ProductColour` VALUES (6, 10010, '钢质表带AR1957');
INSERT INTO `ProductColour` VALUES (7, 10010, '璀璨满天星AR1926');
INSERT INTO `ProductColour` VALUES (8, 10010, '闪耀满天星AR1925');
INSERT INTO `ProductColour` VALUES (9, 10010, '钢质表带AR11129');
INSERT INTO `ProductColour` VALUES (10, 10010, '玫瑰金满天星AR11244');
INSERT INTO `ProductColour` VALUES (11, 10011, '银色');
INSERT INTO `ProductColour` VALUES (12, 10011, '暗夜绿色');
INSERT INTO `ProductColour` VALUES (13, 10011, '深空灰色');
INSERT INTO `ProductColour` VALUES (14, 10012, '小清新蓝');
INSERT INTO `ProductColour` VALUES (18, 10014, '黑色');
INSERT INTO `ProductColour` VALUES (19, 10014, '黑色+骨伽LLC750全模组电源');
INSERT INTO `ProductColour` VALUES (20, 10016, '星河银');
INSERT INTO `ProductColour` VALUES (21, 10016, '亮黑色');
INSERT INTO `ProductColour` VALUES (22, 10016, '翡冷翠');
INSERT INTO `ProductColour` VALUES (23, 10016, '罗兰紫');
INSERT INTO `ProductColour` VALUES (24, 10017, '黑色');
INSERT INTO `ProductColour` VALUES (25, 10017, '白色');
INSERT INTO `ProductColour` VALUES (26, 10017, '粉砂色');
INSERT INTO `ProductColour` VALUES (27, 10004, '星际蓝');
INSERT INTO `ProductColour` VALUES (28, 10004, '华为mate Xs星际蓝(新款)');
INSERT INTO `ProductColour` VALUES (29, 10006, '黑色');
INSERT INTO `ProductColour` VALUES (30, 10006, '铂金银');
INSERT INTO `ProductColour` VALUES (31, 10009, '[A51M]9代i9 2080 低蓝光屏 黑 ');
INSERT INTO `ProductColour` VALUES (32, 10009, '[A51M]9代i9 512GX2+1T 2080 144');
INSERT INTO `ProductColour` VALUES (33, 10009, '[A51M]9代i7 512GX2 2070 144 白');
INSERT INTO `ProductColour` VALUES (34, 10009, ' [A51M]9代i7 1TSSD 2060OC 144黑');
INSERT INTO `ProductColour` VALUES (35, 10009, '[A51M]9代i7 512GX2 2070 144 黑');
INSERT INTO `ProductColour` VALUES (36, 10009, ' [鼠标耳机]+i7 512GX2 20700C 白');
INSERT INTO `ProductColour` VALUES (37, 10009, '[鼠标耳机]+i7 512GX2 20700C 黑 ');
INSERT INTO `ProductColour` VALUES (38, 10009, '[耳机]+9代i7 512GX2 20700C 白');
INSERT INTO `ProductColour` VALUES (39, 10009, '[耳机]+9代i7 512GX2 20700C 黑');
INSERT INTO `ProductColour` VALUES (40, 10018, '028#滋润珊瑚红');
INSERT INTO `ProductColour` VALUES (41, 10018, '999#滋润传奇正红');
INSERT INTO `ProductColour` VALUES (42, 10018, '080#滋润微笑红');
INSERT INTO `ProductColour` VALUES (43, 10018, '888#哑光开运红');
INSERT INTO `ProductColour` VALUES (44, 10018, '772#哑光豆沙红');
INSERT INTO `ProductColour` VALUES (45, 10018, '771#哑光树玫红');
INSERT INTO `ProductColour` VALUES (46, 10018, '[限量版星星5支套装礼盒]');
INSERT INTO `ProductColour` VALUES (47, 10018, '[情人节星星限量版五只装套盒]');
INSERT INTO `ProductColour` VALUES (48, 10018, '挚爱红管999#传奇正红[赠专柜礼盒]');
INSERT INTO `ProductColour` VALUES (49, 10018, '[红弯心动6支套装] [赠视频玫瑰礼盒 ]');
INSERT INTO `ProductColour` VALUES (50, 10018, '[限量版挚爱红管烟花5支装套盒]');
INSERT INTO `ProductColour` VALUES (51, 10018, '999+ 520+花漾甜心100ML [口红香水套装]');
INSERT INTO `ProductColour` VALUES (56, 10019, '玫瑰金');
INSERT INTO `ProductColour` VALUES (57, 10022, '多彩尼龙白盘');
INSERT INTO `ProductColour` VALUES (58, 10022, '粉色尼龙白盘');
INSERT INTO `ProductColour` VALUES (59, 10022, '黑色尼龙黑盘');
INSERT INTO `ProductColour` VALUES (60, 10022, '黑色尼龙白盘');
INSERT INTO `ProductColour` VALUES (61, 10022, '蓝红尼龙白盘');
INSERT INTO `ProductColour` VALUES (62, 10022, '蓝粉尼龙白盘');
INSERT INTO `ProductColour` VALUES (63, 10023, '棕黄色锈色');
INSERT INTO `ProductColour` VALUES (64, 10023, '粉色');
INSERT INTO `ProductColour` VALUES (65, 10023, '黄褐色');
INSERT INTO `ProductColour` VALUES (66, 10027, '磨砂黑');
INSERT INTO `ProductColour` VALUES (67, 10027, ' POP水蓝色');
INSERT INTO `ProductColour` VALUES (68, 10027, ' POP赘蓝色');
INSERT INTO `ProductColour` VALUES (69, 10027, 'POP红色');
INSERT INTO `ProductColour` VALUES (70, 10027, ' POP紫色');
INSERT INTO `ProductColour` VALUES (71, 10027, ' 丝锻金');
INSERT INTO `ProductColour` VALUES (72, 10027, '丝锻银 ');
INSERT INTO `ProductColour` VALUES (73, 10027, '炫黑色');
INSERT INTO `ProductColour` VALUES (74, 10027, '炫白色 ');
INSERT INTO `ProductColour` VALUES (75, 10027, '金色 ');
INSERT INTO `ProductColour` VALUES (76, 10027, '玫瑰金 ');
INSERT INTO `ProductColour` VALUES (77, 10027, '银色 ');
INSERT INTO `ProductColour` VALUES (78, 10027, '红色');
INSERT INTO `ProductColour` VALUES (80, 10027, '黑红十周年纪念版 ');
INSERT INTO `ProductColour` VALUES (81, 10027, '猪年限量版 90周年');
INSERT INTO `ProductColour` VALUES (82, 10027, '米奇老鼠版 ');
INSERT INTO `ProductColour` VALUES (83, 10027, '学院白 ');
INSERT INTO `ProductColour` VALUES (84, 10027, '学院蓝');
INSERT INTO `ProductColour` VALUES (85, 10027, '学院红');
INSERT INTO `ProductColour` VALUES (86, 10027, ' 学院黄');
INSERT INTO `ProductColour` VALUES (87, 10027, ' 紫色');
INSERT INTO `ProductColour` VALUES (88, 10028, 'Redmi 小爱音箱Play ');
INSERT INTO `ProductColour` VALUES (89, 10028, '【小爱触屏音箱-白色】');
INSERT INTO `ProductColour` VALUES (90, 10028, '【小爱触屏音箱-红色】 ');
INSERT INTO `ProductColour` VALUES (91, 10028, '【新品】小爱触屏音箱Pro ');
INSERT INTO `ProductColour` VALUES (92, 10028, '【新品】小爱音箱 ');
INSERT INTO `ProductColour` VALUES (93, 10028, '【新品】小爱音箱Pro ');
INSERT INTO `ProductColour` VALUES (94, 10029, 'BB1826灰橙色 ');
INSERT INTO `ProductColour` VALUES (95, 10029, 'BY9611黑灰色');
INSERT INTO `ProductColour` VALUES (96, 10029, 'BY9612黑橙色 ');
INSERT INTO `ProductColour` VALUES (97, 10029, 'CP9654白斑马');
INSERT INTO `ProductColour` VALUES (98, 10029, 'B37572黄斑马');
INSERT INTO `ProductColour` VALUES (99, 10029, 'AH2203新灰橙 ');
INSERT INTO `ProductColour` VALUES (100, 10029, 'B37571冰蓝色 ');
INSERT INTO `ProductColour` VALUES (101, 10029, 'CP9652黑红色 ');
INSERT INTO `ProductColour` VALUES (102, 10029, 'BY1604黑灰色 ');
INSERT INTO `ProductColour` VALUES (103, 10029, 'BY1605黑铜色');
INSERT INTO `ProductColour` VALUES (104, 10030, '米白色');
INSERT INTO `ProductColour` VALUES (105, 10030, ' 黄色');
INSERT INTO `ProductColour` VALUES (106, 10030, '黑色');

-- ----------------------------
-- Table structure for ProductCombo
-- ----------------------------
DROP TABLE IF EXISTS `ProductCombo`;
CREATE TABLE `ProductCombo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductCombo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductCombo
-- ----------------------------
INSERT INTO `ProductCombo` VALUES (4, 10002, '优惠套餐一');
INSERT INTO `ProductCombo` VALUES (5, 10002, '优惠套餐二');
INSERT INTO `ProductCombo` VALUES (6, 10002, '优惠套餐三');
INSERT INTO `ProductCombo` VALUES (13, 10021, '官方标配');
INSERT INTO `ProductCombo` VALUES (14, 10021, '100寸黑栅硬屏套餐');
INSERT INTO `ProductCombo` VALUES (15, 10021, '100菲涅尔硬屏套餐');
INSERT INTO `ProductCombo` VALUES (16, 10025, '750g(30天装)');
INSERT INTO `ProductCombo` VALUES (17, 10025, '525g(21天装)');
INSERT INTO `ProductCombo` VALUES (18, 10030, '套餐');

-- ----------------------------
-- Table structure for ProductImage
-- ----------------------------
DROP TABLE IF EXISTS `ProductImage`;
CREATE TABLE `ProductImage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ImageSite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductImage
-- ----------------------------
INSERT INTO `ProductImage` VALUES (1, 10001, 'http://productdata.isdfmk.xyz/68836f52ffaaad96.jpg', 1);
INSERT INTO `ProductImage` VALUES (2, 10001, 'http://productdata.isdfmk.xyz/43a1962b41270d97.jpg', NULL);
INSERT INTO `ProductImage` VALUES (3, 10001, 'http://productdata.isdfmk.xyz/ee567a1dea515d38.jpg', NULL);
INSERT INTO `ProductImage` VALUES (4, 10001, 'http://productdata.isdfmk.xyz/08fed8837c92433a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (5, 10001, 'http://productdata.isdfmk.xyz/001e63e04f967e90.jpg', NULL);
INSERT INTO `ProductImage` VALUES (6, 10002, '\r\nhttp://productdata.isdfmk.xyz/2b6fc898ee704a36.jpg\r\n', 1);
INSERT INTO `ProductImage` VALUES (7, 10002, '\r\nhttp://productdata.isdfmk.xyz/6a155195eb3285c9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (8, 10002, 'http://productdata.isdfmk.xyz/7193b42ba13929fd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (9, 10002, '\r\nhttp://productdata.isdfmk.xyz/8786efc04f001e50.jpg', NULL);
INSERT INTO `ProductImage` VALUES (11, 10002, 'http://productdata.isdfmk.xyz/8786efc04f001e50.jpg', NULL);
INSERT INTO `ProductImage` VALUES (13, 10010, '\r\nhttp://productdata.isdfmk.xyz/8c0b0a13e48adce3.jpg', 1);
INSERT INTO `ProductImage` VALUES (14, 10010, '\r\nhttp://productdata.isdfmk.xyz/19f5df0ae27b218a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (15, 10010, '\r\nhttp://productdata.isdfmk.xyz/48f8745314110ddd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (16, 10010, '\r\nhttp://productdata.isdfmk.xyz/220f4a39216bc62b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (17, 10011, '\r\nhttp://productdata.isdfmk.xyz/04e04ec4954e07bd.jpg', 1);
INSERT INTO `ProductImage` VALUES (18, 10011, '\r\nhttp://productdata.isdfmk.xyz/3957b8e1cce2b048.jpg', NULL);
INSERT INTO `ProductImage` VALUES (19, 10011, '\r\nhttp://productdata.isdfmk.xyz/394596a8af6149cf.jpg', NULL);
INSERT INTO `ProductImage` VALUES (20, 10011, '\r\nhttp://productdata.isdfmk.xyz/da0eb4c6670eab20.jpg', NULL);
INSERT INTO `ProductImage` VALUES (21, 10011, '\r\nhttp://productdata.isdfmk.xyz/e54ca7b1b222a83b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (22, 10012, '\r\nhttp://productdata.isdfmk.xyz/2b0744939bd398f0.jpg', 1);
INSERT INTO `ProductImage` VALUES (23, 10012, '\r\nhttp://productdata.isdfmk.xyz/5ce4b1fcNc14ca9c7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (24, 10012, '\r\nhttp://productdata.isdfmk.xyz/6522a53a673ee61d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (25, 10012, '\r\nhttp://productdata.isdfmk.xyz/c15786ad5136e74f.jpg', NULL);
INSERT INTO `ProductImage` VALUES (26, 10012, '\r\nhttp://productdata.isdfmk.xyz/caa1b677b914cb5f.jpg', NULL);
INSERT INTO `ProductImage` VALUES (27, 10013, 'http://productdata.isdfmk.xyz/1f3f9fd0e759383f.jpg', 1);
INSERT INTO `ProductImage` VALUES (28, 10013, 'http://productdata.isdfmk.xyz/4fc927901b1aae32.jpg', NULL);
INSERT INTO `ProductImage` VALUES (29, 10013, 'http://productdata.isdfmk.xyz/5bc47ce4Ne79570db.jpg', NULL);
INSERT INTO `ProductImage` VALUES (30, 10013, 'http://productdata.isdfmk.xyz/3480e2930d6e9a25.jpg', NULL);
INSERT INTO `ProductImage` VALUES (31, 10013, 'http://productdata.isdfmk.xyz/562d20d464bb56ac.jpg', NULL);
INSERT INTO `ProductImage` VALUES (32, 10014, 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', 1);
INSERT INTO `ProductImage` VALUES (33, 10014, 'http://productdata.isdfmk.xyz/5b2473c4Nea457f92.png', NULL);
INSERT INTO `ProductImage` VALUES (34, 10014, 'http://productdata.isdfmk.xyz/5b2473e0Ne5d2fed8.jpg', NULL);
INSERT INTO `ProductImage` VALUES (35, 10014, 'http://productdata.isdfmk.xyz/5b2473e3Nc422faf9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (36, 10014, 'http://productdata.isdfmk.xyz/e8a8c0ac848fd663.jpg', NULL);
INSERT INTO `ProductImage` VALUES (37, 10015, 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', 1);
INSERT INTO `ProductImage` VALUES (38, 10015, 'http://productdata.isdfmk.xyz/65d595ccc0df91701a30c5b9af96662c_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (39, 10015, 'http://productdata.isdfmk.xyz/6ad6e5468f3c79afd9e2aaac6235b643_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (40, 10015, 'http://productdata.isdfmk.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (41, 10015, 'http://productdata.isdfmk.xyz/a6bd598ec1911c7cd8f850f3e88e7ba5_2_3_photo.jpg', NULL);
INSERT INTO `ProductImage` VALUES (42, 10016, '\r\nhttp://productdata.isdfmk.xyz/971ec333c8ef1de2.jpg', 1);
INSERT INTO `ProductImage` VALUES (43, 10016, '\r\nhttp://productdata.isdfmk.xyz/8053c011fc5f3f37.jpg', NULL);
INSERT INTO `ProductImage` VALUES (44, 10016, '\r\nhttp://productdata.isdfmk.xyz/66447aca06daf84d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (45, 10016, '\r\nhttp://productdata.isdfmk.xyz/b13aea126799a8f7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (46, 10016, '\r\nhttp://productdata.isdfmk.xyz/fb8e44067242df88.jpg', NULL);
INSERT INTO `ProductImage` VALUES (47, 10017, 'http://productdata.isdfmk.xyz/44c3c5495c1b5145.jpg', 1);
INSERT INTO `ProductImage` VALUES (48, 10017, 'http://productdata.isdfmk.xyz/2501bf3e7f96c1fb.jpg', NULL);
INSERT INTO `ProductImage` VALUES (49, 10017, 'http://productdata.isdfmk.xyz/38043e785531d4f5.jpg', NULL);
INSERT INTO `ProductImage` VALUES (50, 10017, 'http://productdata.isdfmk.xyz/bb905838dcde3ccd.jpg', NULL);
INSERT INTO `ProductImage` VALUES (51, 10017, 'http://productdata.isdfmk.xyz/cc8e307f5aeccb49.jpg', NULL);
INSERT INTO `ProductImage` VALUES (52, 10003, 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', 1);
INSERT INTO `ProductImage` VALUES (53, 10003, 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', NULL);
INSERT INTO `ProductImage` VALUES (54, 10003, 'http://productdata.isdfmk.xyz/7e885a6364ff7b21.jpg', NULL);
INSERT INTO `ProductImage` VALUES (55, 10003, 'http://productdata.isdfmk.xyz/ad914e4c1ac2e465.jpg', NULL);
INSERT INTO `ProductImage` VALUES (56, 10003, 'http://productdata.isdfmk.xyz/d094f60a2c15d012.jpg', NULL);
INSERT INTO `ProductImage` VALUES (57, 10004, 'http://productdata.isdfmk.xyz/7a3a192a7fca3c35.png', 1);
INSERT INTO `ProductImage` VALUES (58, 10004, 'http://productdata.isdfmk.xyz/9c03f65ed857d88a.png', NULL);
INSERT INTO `ProductImage` VALUES (59, 10004, 'http://productdata.isdfmk.xyz/4686681b97deebb2.png', NULL);
INSERT INTO `ProductImage` VALUES (60, 10004, 'http://productdata.isdfmk.xyz/b0d64ec97f4d8f0d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (61, 10004, 'http://productdata.isdfmk.xyz/f88f82bdd98d9a68.png', NULL);
INSERT INTO `ProductImage` VALUES (62, 10006, 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', 1);
INSERT INTO `ProductImage` VALUES (63, 10006, 'http://productdata.isdfmk.xyz/223e72e6bb404498.jpg', NULL);
INSERT INTO `ProductImage` VALUES (64, 10006, 'http://productdata.isdfmk.xyz/a2ba77e3e7b4a561.jpg', NULL);
INSERT INTO `ProductImage` VALUES (65, 10006, 'http://productdata.isdfmk.xyz/a673d6639eecfb31.jpg', NULL);
INSERT INTO `ProductImage` VALUES (66, 10006, 'http://productdata.isdfmk.xyz/b452b971225f3837.jpg', NULL);
INSERT INTO `ProductImage` VALUES (67, 10007, 'http://productdata.isdfmk.xyz/9bf639975363fbb0.jpg', 1);
INSERT INTO `ProductImage` VALUES (68, 10007, 'http://productdata.isdfmk.xyz/15ae759577a35aa9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (69, 10007, 'http://productdata.isdfmk.xyz/9153db93fc57f0c4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (70, 10007, 'http://productdata.isdfmk.xyz/9153db93fc57f0c4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (71, 10007, 'http://productdata.isdfmk.xyz/e7dacfdfe765ab9c.jpg', NULL);
INSERT INTO `ProductImage` VALUES (72, 10008, '\r\nhttp://productdata.isdfmk.xyz/5b90958cN736d78c4.jpg', 1);
INSERT INTO `ProductImage` VALUES (73, 10008, 'http://productdata.isdfmk.xyz/5b90958dN5fb23f95.jpg', NULL);
INSERT INTO `ProductImage` VALUES (74, 10008, 'http://productdata.isdfmk.xyz/6c7fafb8a6841a8c.jpg', NULL);
INSERT INTO `ProductImage` VALUES (75, 10008, 'http://productdata.isdfmk.xyz/9a92c2762bb5c57b.jpg', NULL);
INSERT INTO `ProductImage` VALUES (76, 10008, 'http://productdata.isdfmk.xyz/59fed11aN25bcc727.jpg', NULL);
INSERT INTO `ProductImage` VALUES (77, 10009, 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', 1);
INSERT INTO `ProductImage` VALUES (78, 10009, 'http://productdata.isdfmk.xyz/4cc5b3d55b1d5695.jpg', NULL);
INSERT INTO `ProductImage` VALUES (79, 10009, 'http://productdata.isdfmk.xyz/82805185280bf7fe.jpg', NULL);
INSERT INTO `ProductImage` VALUES (80, 10009, 'http://productdata.isdfmk.xyz/a83b14d7249e7b35.jpg', NULL);
INSERT INTO `ProductImage` VALUES (81, 10009, 'http://productdata.isdfmk.xyz/b081f2d2c95ed76d.jpg', NULL);
INSERT INTO `ProductImage` VALUES (82, 10005, 'http://productdata.isdfmk.xyz/7a77ad4e3100e885.jpg', 1);
INSERT INTO `ProductImage` VALUES (83, 10005, 'http://productdata.isdfmk.xyz/7112412352ada3c6.jpg', NULL);
INSERT INTO `ProductImage` VALUES (84, 10005, 'http://productdata.isdfmk.xyz/a2e58b389d88d1d9.jpg', NULL);
INSERT INTO `ProductImage` VALUES (85, 10005, 'http://productdata.isdfmk.xyz/b4c0df48e4bbcc4a.jpg', NULL);
INSERT INTO `ProductImage` VALUES (86, 10005, 'http://productdata.isdfmk.xyz/d695e3db95cf66cb.jpg', NULL);
INSERT INTO `ProductImage` VALUES (87, 10018, '\r\nhttp://productdata.isdfmk.xyz/5cd5acfbN24c0ee18.jpg', 1);
INSERT INTO `ProductImage` VALUES (88, 10018, '\r\nhttp://productdata.isdfmk.xyz/5ce44b68N134a0ce4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (89, 10018, '\r\nhttp://productdata.isdfmk.xyz/5ce44b70N7a533656.jpg', NULL);
INSERT INTO `ProductImage` VALUES (90, 10018, '\r\nhttp://productdata.isdfmk.xyz/12d9fdefc091d9e7.jpg', NULL);
INSERT INTO `ProductImage` VALUES (91, 10018, '\r\nhttp://productdata.isdfmk.xyz/0938b8c9db25d916.jpg', NULL);
INSERT INTO `ProductImage` VALUES (92, 10019, '\r\nhttp://productdata.isdfmk.xyz/2-SXJILMjHoQXj66aurkzg.jpg', 1);
INSERT INTO `ProductImage` VALUES (93, 10019, '\r\nhttp://productdata.isdfmk.xyz/bHr9HgsqtllBbPtMov6jww.jpg', NULL);
INSERT INTO `ProductImage` VALUES (94, 10019, '\r\nhttp://productdata.isdfmk.xyz/ca9NrNg1kMP-VoP8tOYNxg.jpg', NULL);
INSERT INTO `ProductImage` VALUES (95, 10019, '\r\nhttp://productdata.isdfmk.xyz/jg1eWej2dz72FeRkl0C_8w.jpg', NULL);
INSERT INTO `ProductImage` VALUES (96, 10019, '\r\nhttp://productdata.isdfmk.xyz/xranhinAPpnEuaarT7JhRw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (97, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_3.jpg', 1);
INSERT INTO `ProductImage` VALUES (98, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_4.jpg', NULL);
INSERT INTO `ProductImage` VALUES (99, 10020, 'http://productdata.isdfmk.xyz/0070137366-000000010059586574_5.jpg', NULL);
INSERT INTO `ProductImage` VALUES (100, 10020, 'http://productdata.isdfmk.xyz/225731782139609909464061_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (101, 10020, 'http://productdata.isdfmk.xyz/367000235486258003552709_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (102, 10021, 'http://productdata.isdfmk.xyz/dbBltniJF2LoPk9QQ3YWaw.jpg', 1);
INSERT INTO `ProductImage` VALUES (103, 10021, 'http://productdata.isdfmk.xyz/DjtdSBwAWuSxHs6yAAc3Yw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (104, 10021, 'http://productdata.isdfmk.xyz/iLSvW0r_-YDo4L7iUT7xkw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (105, 10021, 'http://productdata.isdfmk.xyz/N_lvVexzFxRREgxewSkOxA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (106, 10021, 'http://productdata.isdfmk.xyz/vqMAvTS5sJGYjfaD_qEVWA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (107, 10022, '\r\nhttp://productdata.isdfmk.xyz/adadas3e.jpg', 1);
INSERT INTO `ProductImage` VALUES (108, 10022, '\r\nhttp://productdata.isdfmk.xyz/Bjxu9RqIzP3Ee5QkFP6d1A.jpg', NULL);
INSERT INTO `ProductImage` VALUES (109, 10022, '\r\nhttp://productdata.isdfmk.xyz/aIcBs8oaW7BK7O_XjKnyDw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (110, 10022, '\r\nhttp://productdata.isdfmk.xyz/RUbeN8NHFbwRkkH4-AuKbQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (111, 10022, '\r\nhttp://productdata.isdfmk.xyz/x-0NQEGxSXEpg4GUBE7gkQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (112, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977278.jpg', 1);
INSERT INTO `ProductImage` VALUES (113, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977330.jpg', NULL);
INSERT INTO `ProductImage` VALUES (114, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977307.jpg', NULL);
INSERT INTO `ProductImage` VALUES (115, 10023, '\r\nhttp://productdata.isdfmk.xyz/tuhaokuai_1583977378.jpg', NULL);
INSERT INTO `ProductImage` VALUES (116, 10023, 'http://productdata.isdfmk.xyz/tuhaokuai_1583977378.jpg', NULL);
INSERT INTO `ProductImage` VALUES (117, 10024, 'http://productdata.isdfmk.xyz/AD8JQ6Q0jfeySzdxAVglqw.jpg', 1);
INSERT INTO `ProductImage` VALUES (118, 10024, 'http://productdata.isdfmk.xyz/1k7IJMBhmkX97QGmsBnJmA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (119, 10024, 'http://productdata.isdfmk.xyz/QlCRL5Qc2PQ1Ds9msLQ0aw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (120, 10024, 'http://productdata.isdfmk.xyz/vGYPFoIyeYmz5oRZzvZdgQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (121, 10024, 'http://productdata.isdfmk.xyz/YZNbG7O6_BbGM7S33OAZxQ.jpg\r\n', NULL);
INSERT INTO `ProductImage` VALUES (122, 10025, 'http://productdata.isdfmk.xyz/FlnxmuE-gh4YKIj4txsLfg.jpg', 1);
INSERT INTO `ProductImage` VALUES (123, 10025, 'http://productdata.isdfmk.xyz/NL-OSHZUQGs6vGjGsmI__w.jpg', NULL);
INSERT INTO `ProductImage` VALUES (124, 10025, 'http://productdata.isdfmk.xyz/CZ5siXML-q9UXRnuqpww0g.jpg', NULL);
INSERT INTO `ProductImage` VALUES (125, 10025, 'http://productdata.isdfmk.xyz/GVEWb_biyayx8a3dNgKA2g.jpg', NULL);
INSERT INTO `ProductImage` VALUES (126, 10025, 'http://productdata.isdfmk.xyz/i7kQ4Pf_DtOVDPRC-HazMg.jpg', NULL);
INSERT INTO `ProductImage` VALUES (127, 10026, 'http://productdata.isdfmk.xyz/a1.jpg', 1);
INSERT INTO `ProductImage` VALUES (128, 10026, 'http://productdata.isdfmk.xyz/a2.jpg', NULL);
INSERT INTO `ProductImage` VALUES (129, 10026, 'http://productdata.isdfmk.xyz/b1.jpg', NULL);
INSERT INTO `ProductImage` VALUES (130, 10026, 'http://productdata.isdfmk.xyz/b2.jpg', NULL);
INSERT INTO `ProductImage` VALUES (131, 10026, 'http://productdata.isdfmk.xyz/b3.jpg', NULL);
INSERT INTO `ProductImage` VALUES (132, 10027, 'http://productdata.isdfmk.xyz/135638619666091357760161_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (133, 10027, 'http://productdata.isdfmk.xyz/147494239513439282291194_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (134, 10027, 'http://productdata.isdfmk.xyz/194496895094406041420196_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (135, 10027, 'http://productdata.isdfmk.xyz/216693731079825961722732_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (136, 10027, 'http://productdata.isdfmk.xyz/HtNyjfPMAhzQjw1RPlMUoA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (137, 10028, 'http://productdata.isdfmk.xyz/5JR1uDh09y-dhv8RSstl9g.jpg', 1);
INSERT INTO `ProductImage` VALUES (138, 10028, 'http://productdata.isdfmk.xyz/jU8rPyTxL3Siw6dLEUHhDQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (139, 10028, 'http://productdata.isdfmk.xyz/MUak68zcW1wihVXkpQ3rIQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (140, 10028, 'http://productdata.isdfmk.xyz/nV358PZUk4icX1T7fBcc_Q.jpg', NULL);
INSERT INTO `ProductImage` VALUES (141, 10028, 'http://productdata.isdfmk.xyz/XJSBumEOLmp8H7P3GX2ASw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (142, 10029, '\r\nhttp://productdata.isdfmk.xyz/317865394161552203721050_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (143, 10029, 'http://productdata.isdfmk.xyz/334355456168161240400082_x.jpg', 1);
INSERT INTO `ProductImage` VALUES (144, 10029, 'http://productdata.isdfmk.xyz/619597484920156642971000_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (145, 10029, 'http://productdata.isdfmk.xyz/907405909774268174160400_x.jpg', NULL);
INSERT INTO `ProductImage` VALUES (146, 10029, 'http://productdata.isdfmk.xyz/hfQeM5SNL7aIQsnz4m2MwA.jpg', NULL);
INSERT INTO `ProductImage` VALUES (147, 10030, 'http://productdata.isdfmk.xyz/5Bl2awngovDrpx-B7yhitw.jpg', 1);
INSERT INTO `ProductImage` VALUES (148, 10030, 'http://productdata.isdfmk.xyz/EPgdZq3WD1ibfSP8znHfFQ.jpg', NULL);
INSERT INTO `ProductImage` VALUES (149, 10030, 'http://productdata.isdfmk.xyz/hlkkdGdo-SSYb77-pYqpmw.jpg', NULL);
INSERT INTO `ProductImage` VALUES (150, 10030, 'http://productdata.isdfmk.xyz/mvkEwjIBeMqinZ51RBJt6A.jpg', NULL);
INSERT INTO `ProductImage` VALUES (151, 10030, 'http://productdata.isdfmk.xyz/o3M12fplwwBGg6zbJm69hA.jpg', NULL);

-- ----------------------------
-- Table structure for ProductKind
-- ----------------------------
DROP TABLE IF EXISTS `ProductKind`;
CREATE TABLE `ProductKind`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductKind` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductKind
-- ----------------------------
INSERT INTO `ProductKind` VALUES (9, 10003, '【超大款】帝王蟹礼盒4.5-4.0斤 ');
INSERT INTO `ProductKind` VALUES (10, 10003, '【大蟹款】帝王蟹礼盒4.0-3.6斤 ');
INSERT INTO `ProductKind` VALUES (11, 10003, '【尊享款】帝王蟹礼盒5.5-5.0斤\r\n');
INSERT INTO `ProductKind` VALUES (12, 10003, '【尝鲜款】帝王蟹礼盒2.8-2.4斤');
INSERT INTO `ProductKind` VALUES (13, 10003, '黄金蟹礼盒1000-800g');
INSERT INTO `ProductKind` VALUES (14, 10003, '黄金蟹礼盒800-600g');
INSERT INTO `ProductKind` VALUES (15, 10030, '种类');

-- ----------------------------
-- Table structure for ProductLowPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductLowPrice`;
CREATE TABLE `ProductLowPrice`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductLowPrice
-- ----------------------------
INSERT INTO `ProductLowPrice` VALUES (10006, 1);
INSERT INTO `ProductLowPrice` VALUES (10007, 2);
INSERT INTO `ProductLowPrice` VALUES (10008, 3);
INSERT INTO `ProductLowPrice` VALUES (10009, 23);
INSERT INTO `ProductLowPrice` VALUES (10010, 24);
INSERT INTO `ProductLowPrice` VALUES (10011, 25);
INSERT INTO `ProductLowPrice` VALUES (10012, 26);
INSERT INTO `ProductLowPrice` VALUES (10013, 27);
INSERT INTO `ProductLowPrice` VALUES (10014, 28);
INSERT INTO `ProductLowPrice` VALUES (10015, 29);
INSERT INTO `ProductLowPrice` VALUES (10016, 30);
INSERT INTO `ProductLowPrice` VALUES (10017, 31);

-- ----------------------------
-- Table structure for ProductPrice
-- ----------------------------
DROP TABLE IF EXISTS `ProductPrice`;
CREATE TABLE `ProductPrice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductPrice` decimal(10, 2) NULL DEFAULT NULL,
  `SalesPrice` decimal(10, 0) NULL DEFAULT NULL,
  `SpikePrice` decimal(10, 2) NULL DEFAULT NULL,
  `ProductSales` decimal(10, 2) NULL DEFAULT NULL,
  `ProductInventory` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductPrice
-- ----------------------------
INSERT INTO `ProductPrice` VALUES (1, 10001, 5999.00, 4844, 4549.00, 100017.00, 99979.00);
INSERT INTO `ProductPrice` VALUES (2, 10002, 1999.00, 1899, 15886.00, 12.00, 0.00);
INSERT INTO `ProductPrice` VALUES (3, 10010, 3596.00, 2563, 2523.00, 1517.00, 1854.00);
INSERT INTO `ProductPrice` VALUES (4, 10011, 10398.00, 19888, 9999.00, 18917.00, 15547.00);
INSERT INTO `ProductPrice` VALUES (5, 10012, 4999.00, 4888, 4760.00, 17683.00, 58658.00);
INSERT INTO `ProductPrice` VALUES (6, 10013, 11999.00, 18999, 10888.00, 1122239.00, 144444.00);
INSERT INTO `ProductPrice` VALUES (7, 10014, 2898.00, 2584, 2541.00, 14461.00, 18860.00);
INSERT INTO `ProductPrice` VALUES (8, 10015, 20.00, 10, 8.80, 88905.00, 74536.00);
INSERT INTO `ProductPrice` VALUES (9, 10016, 5399.00, 4999, 4988.00, 158572.00, 786317.00);
INSERT INTO `ProductPrice` VALUES (10, 10017, 3199.00, 2999, 3012.00, 4473.00, 78580.00);
INSERT INTO `ProductPrice` VALUES (11, 10003, 758.00, 666, 589.00, 18902.00, 5665531.00);
INSERT INTO `ProductPrice` VALUES (12, 10006, 1499.00, 1399, 1360.00, 156383.00, 4855432.00);
INSERT INTO `ProductPrice` VALUES (13, 10007, 3350.00, 2899, 1569.00, 157016.00, 145544.00);
INSERT INTO `ProductPrice` VALUES (14, 10008, 3500.00, 15588, 1585.00, 10019.00, 15247.00);
INSERT INTO `ProductPrice` VALUES (15, 10009, 47699.00, 4688, 45666.00, 666683.00, 48586.00);
INSERT INTO `ProductPrice` VALUES (16, 10004, 30576.00, 29999, 28999.00, 10017.00, 158547.00);
INSERT INTO `ProductPrice` VALUES (17, 10005, 7890.00, 5888, 4585.00, 155572.00, 14556.00);
INSERT INTO `ProductPrice` VALUES (18, 10018, 1140.00, 1111, 999.00, 1873.00, 15546.00);
INSERT INTO `ProductPrice` VALUES (19, 10019, 260000.00, 259999, 259999.00, 18.00, -7.00);
INSERT INTO `ProductPrice` VALUES (20, 10020, 5199.00, 4999, 4855.00, 117.00, 11103.00);
INSERT INTO `ProductPrice` VALUES (21, 10021, 18599.00, 1855, 1599.00, 1017.00, 5547.00);
INSERT INTO `ProductPrice` VALUES (22, 10023, 1299.00, 1152, 1258.00, 1017.00, 244.00);
INSERT INTO `ProductPrice` VALUES (23, 10024, 2188.00, 2088, 1999.00, 1533.00, 4894641.00);
INSERT INTO `ProductPrice` VALUES (24, 10025, 71.00, 66, 59.90, 161473.00, 156155.00);
INSERT INTO `ProductPrice` VALUES (25, 10022, 1289.00, 1206, 1126.00, 54615182.00, 465148.00);
INSERT INTO `ProductPrice` VALUES (26, 10026, 100000.00, 620, 599.00, 15661173.00, -12.00);
INSERT INTO `ProductPrice` VALUES (27, 10027, 773.00, 666, 689.00, 154871.00, 1658.00);
INSERT INTO `ProductPrice` VALUES (28, 10028, 265.09, 222, 218.00, 151532.00, 154565.00);
INSERT INTO `ProductPrice` VALUES (29, 10029, 2920.01, 288, 2999.00, 21278.00, 165138.00);
INSERT INTO `ProductPrice` VALUES (30, 10030, 128.00, 128, 128.00, 10017.00, 992.00);

-- ----------------------------
-- Table structure for ProductSize
-- ----------------------------
DROP TABLE IF EXISTS `ProductSize`;
CREATE TABLE `ProductSize`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductSize
-- ----------------------------
INSERT INTO `ProductSize` VALUES (4, 10023, '均码');
INSERT INTO `ProductSize` VALUES (5, 10026, 'XS');
INSERT INTO `ProductSize` VALUES (6, 10026, 'S');
INSERT INTO `ProductSize` VALUES (7, 10026, 'M');
INSERT INTO `ProductSize` VALUES (8, 10026, 'L');
INSERT INTO `ProductSize` VALUES (9, 10029, '标准46.5/US12 ');
INSERT INTO `ProductSize` VALUES (10, 10029, '标准40/US7 ');
INSERT INTO `ProductSize` VALUES (11, 10029, '标准40.5/US7.5 ');
INSERT INTO `ProductSize` VALUES (12, 10029, '标准41/US8 ');
INSERT INTO `ProductSize` VALUES (13, 10029, '标准42/US8.5');
INSERT INTO `ProductSize` VALUES (14, 10029, '标准42.5/US9 ');
INSERT INTO `ProductSize` VALUES (15, 10029, '标准43/US9.5');
INSERT INTO `ProductSize` VALUES (16, 10029, '标准44/US10 ');
INSERT INTO `ProductSize` VALUES (17, 10029, '标准44.5/US10.5 ');
INSERT INTO `ProductSize` VALUES (18, 10029, '标准45/US11 ');
INSERT INTO `ProductSize` VALUES (19, 10029, '标准46/US11.5 ');
INSERT INTO `ProductSize` VALUES (20, 10029, '其他大码请咨询客服');
INSERT INTO `ProductSize` VALUES (21, 10030, 'M');
INSERT INTO `ProductSize` VALUES (22, 10030, ' L ');
INSERT INTO `ProductSize` VALUES (23, 10030, 'XL');
INSERT INTO `ProductSize` VALUES (24, 10030, 'XXL ');
INSERT INTO `ProductSize` VALUES (25, 10030, 'XXXL');

-- ----------------------------
-- Table structure for ProductSpecification
-- ----------------------------
DROP TABLE IF EXISTS `ProductSpecification`;
CREATE TABLE `ProductSpecification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `Specification` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductSpecification
-- ----------------------------
INSERT INTO `ProductSpecification` VALUES (1, 10001, '256G+8G\r\n');
INSERT INTO `ProductSpecification` VALUES (2, 10001, '128G+2G');
INSERT INTO `ProductSpecification` VALUES (3, 10001, '64G+3G');
INSERT INTO `ProductSpecification` VALUES (4, 10011, '128G+2G');
INSERT INTO `ProductSpecification` VALUES (5, 10011, '128G+3G');
INSERT INTO `ProductSpecification` VALUES (6, 10011, '64G+2G');
INSERT INTO `ProductSpecification` VALUES (7, 10017, '40毫米');
INSERT INTO `ProductSpecification` VALUES (8, 10017, '44毫米');
INSERT INTO `ProductSpecification` VALUES (9, 10011, '256G+3G');
INSERT INTO `ProductSpecification` VALUES (10, 10012, 'Pro13|标压R5 16G 512G QHD');
INSERT INTO `ProductSpecification` VALUES (11, 10012, '小新Air14|R5 12G 512G');
INSERT INTO `ProductSpecification` VALUES (12, 10012, '小新14大固态|R5 8G 1T 128G');
INSERT INTO `ProductSpecification` VALUES (13, 10013, '华硕PRIME X299-A主板+ ');
INSERT INTO `ProductSpecification` VALUES (14, 10013, 'PRIME X299-DELUXE II 主板+');
INSERT INTO `ProductSpecification` VALUES (15, 10013, 'RAMPAGE VI EXTREME OMEGA+ ');
INSERT INTO `ProductSpecification` VALUES (16, 10013, 'TUF X299 MARK 2电竞主板+');
INSERT INTO `ProductSpecification` VALUES (17, 10013, 'ROG STRIX X299-E GAMING+');
INSERT INTO `ProductSpecification` VALUES (18, 10030, '规格');

-- ----------------------------
-- Table structure for ProductTaste
-- ----------------------------
DROP TABLE IF EXISTS `ProductTaste`;
CREATE TABLE `ProductTaste`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `ProductTaste` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductTaste
-- ----------------------------
INSERT INTO `ProductTaste` VALUES (1, 10015, '奶茶味');
INSERT INTO `ProductTaste` VALUES (2, 10015, '茉莉味');
INSERT INTO `ProductTaste` VALUES (3, 10015, '香蕉味');
INSERT INTO `ProductTaste` VALUES (4, 10015, '苹果味');
INSERT INTO `ProductTaste` VALUES (5, 10015, '奶油味');
INSERT INTO `ProductTaste` VALUES (6, 10030, '口味');

-- ----------------------------
-- Table structure for ProductVersion
-- ----------------------------
DROP TABLE IF EXISTS `ProductVersion`;
CREATE TABLE `ProductVersion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ProductVersion
-- ----------------------------
INSERT INTO `ProductVersion` VALUES (1, 10005, 'WLAN版64G');
INSERT INTO `ProductVersion` VALUES (2, 10005, ' WLAN版256G ');
INSERT INTO `ProductVersion` VALUES (3, 10005, 'WLAN版512G');
INSERT INTO `ProductVersion` VALUES (4, 10005, ' WLAN版1TB');
INSERT INTO `ProductVersion` VALUES (5, 10005, 'Cellular版64G ');
INSERT INTO `ProductVersion` VALUES (6, 10005, 'Cellular版256G');
INSERT INTO `ProductVersion` VALUES (7, 10005, 'Cellular版512G ');
INSERT INTO `ProductVersion` VALUES (8, 10005, 'Cellular版1TB');
INSERT INTO `ProductVersion` VALUES (9, 10001, '豪华版');
INSERT INTO `ProductVersion` VALUES (10, 10001, '标志版');
INSERT INTO `ProductVersion` VALUES (11, 10017, 'GPS版');
INSERT INTO `ProductVersion` VALUES (12, 10017, ' 蜂窝版');
INSERT INTO `ProductVersion` VALUES (13, 10017, 'GPS版AC+');
INSERT INTO `ProductVersion` VALUES (14, 10017, '蜂窝版AC+');
INSERT INTO `ProductVersion` VALUES (15, 10024, '标准白有刻 ');
INSERT INTO `ProductVersion` VALUES (16, 10024, '标准白无刻');
INSERT INTO `ProductVersion` VALUES (17, 10024, '标准黑有刻 ');
INSERT INTO `ProductVersion` VALUES (18, 10024, '标准黑无刻');
INSERT INTO `ProductVersion` VALUES (19, 10024, '蓝牙白有刻 ');
INSERT INTO `ProductVersion` VALUES (20, 10024, '蓝牙白无刻 ');
INSERT INTO `ProductVersion` VALUES (21, 10024, '蓝牙黑有刻 ');
INSERT INTO `ProductVersion` VALUES (22, 10024, '蓝牙黑无刻');
INSERT INTO `ProductVersion` VALUES (23, 10024, '静音白有刻 ');
INSERT INTO `ProductVersion` VALUES (24, 10024, '静音白无刻');
INSERT INTO `ProductVersion` VALUES (25, 10028, '小爱音箱万能遥控版 ');
INSERT INTO `ProductVersion` VALUES (26, 10028, '小爱音箱play版');
INSERT INTO `ProductVersion` VALUES (27, 10028, '小米小爱音箱【HD版 深灰色】');
INSERT INTO `ProductVersion` VALUES (28, 10028, '小米小爱音箱【HD版 浅灰色】');
INSERT INTO `ProductVersion` VALUES (29, 10028, ' Redmi 小爱音箱Play 蓝色');
INSERT INTO `ProductVersion` VALUES (30, 10028, 'Redmi 小爱音箱Play 绿色');

-- ----------------------------
-- Table structure for RotationChart
-- ----------------------------
DROP TABLE IF EXISTS `RotationChart`;
CREATE TABLE `RotationChart`  (
  `Rid` int(11) NOT NULL,
  `RotationChartOne` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartOneSite` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwo_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RotationChartTwoSite_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of RotationChart
-- ----------------------------
INSERT INTO `RotationChart` VALUES (1, 'http://carousel.isdfmk.xyz/5690b6dcNd5aaa0f0.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc416Ne54f9cd9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc486N8446aa1b.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc802Ne2d2904c.jpg', '/');
INSERT INTO `RotationChart` VALUES (2, 'http://carousel.isdfmk.xyz/56960e10N27e2d29f.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc812N28b5f894.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc822N62394473.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc906Na4b1ff7c.jpg', '/');
INSERT INTO `RotationChart` VALUES (3, 'http://carousel.isdfmk.xyz/5698a5aaN08e09475.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc944N4f9497d4.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc956Na8d6ef06.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc966N3b48164b.jpg', '/');
INSERT INTO `RotationChart` VALUES (4, 'http://carousel.isdfmk.xyz/56a05078N6add136b.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc97aN3e1b0fe9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdc99cN4291a808.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca25N8aa1cbb6.jpg', '/');
INSERT INTO `RotationChart` VALUES (5, 'http://carousel.isdfmk.xyz/56a09e6aN373313d9.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca36N6e25e29a.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca8dNc0da3888.jpg', '/', 'http://carousel.isdfmk.xyz/56cdca9eN5a1c2c29.jpg', '/');

-- ----------------------------
-- Table structure for Seckill
-- ----------------------------
DROP TABLE IF EXISTS `Seckill`;
CREATE TABLE `Seckill`  (
  `ProductId` int(11) NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `SeckillId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`SeckillId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Seckill
-- ----------------------------
INSERT INTO `Seckill` VALUES (10010, '2020-03-10 03:51:53', 1);
INSERT INTO `Seckill` VALUES (10011, '2020-03-10 04:26:31', 2);
INSERT INTO `Seckill` VALUES (10012, '2020-03-10 04:30:25', 3);
INSERT INTO `Seckill` VALUES (10013, '2020-03-10 04:30:29', 4);
INSERT INTO `Seckill` VALUES (10014, '2020-03-10 13:32:42', 5);
INSERT INTO `Seckill` VALUES (10015, '2020-03-10 13:32:45', 6);
INSERT INTO `Seckill` VALUES (10016, '2020-03-10 13:32:48', 7);
INSERT INTO `Seckill` VALUES (10017, '2020-03-10 13:32:50', 8);

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES (1, 'http://img.isdfmk.xyz/9U5D%29GS~X6~KA8L23YD%29RSR.png', '/');
INSERT INTO `ad` VALUES (2, 'http://img.isdfmk.xyz/7XJAXW7H%5B%24%299J%40%406L%5DL%5B7%40O.png', '/');
INSERT INTO `ad` VALUES (3, 'http://img.isdfmk.xyz/CM5%7D~T3XEPPZ934W%40MCPP64.png', '/');

-- ----------------------------
-- Table structure for arrivalNotice
-- ----------------------------
DROP TABLE IF EXISTS `arrivalNotice`;
CREATE TABLE `arrivalNotice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arrivalNotice
-- ----------------------------
INSERT INTO `arrivalNotice` VALUES (13, '7c9fdfa3177042a08766aed29e7de6cd', 10001);
INSERT INTO `arrivalNotice` VALUES (14, '7c9fdfa3177042a08766aed29e7de6cd', 10002);
INSERT INTO `arrivalNotice` VALUES (15, '7c9fdfa3177042a08766aed29e7de6cd', 10026);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(5) NULL DEFAULT NULL,
  `goodsName_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsId_1_c` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '秒杀', '/');
INSERT INTO `category` VALUES (2, '优惠券', '/');
INSERT INTO `category` VALUES (3, '微利会员', '/');
INSERT INTO `category` VALUES (4, '品牌闪购', '/');
INSERT INTO `category` VALUES (5, '拍卖', '/');
INSERT INTO `category` VALUES (6, '微利家电', '/');
INSERT INTO `category` VALUES (7, '微利超市', '/');
INSERT INTO `category` VALUES (8, '品牌馆', '/');
INSERT INTO `category` VALUES (9, '网红必备', '/');

-- ----------------------------
-- Table structure for commentImage
-- ----------------------------
DROP TABLE IF EXISTS `commentImage`;
CREATE TABLE `commentImage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(11) NULL DEFAULT NULL,
  `commentPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fign` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentImage
-- ----------------------------
INSERT INTO `commentImage` VALUES (98, 175, ' http://img.isdfmk.xyz/f7beb49c75774b1f8fafb8cb03ac2123?t=1589884732', 1);
INSERT INTO `commentImage` VALUES (99, 175, ' http://img.isdfmk.xyz/76088a31f50741d9ad882183bbdfb9d2?t=1589884733', 1);
INSERT INTO `commentImage` VALUES (100, 175, ' http://img.isdfmk.xyz/7058538fbddc46f08247440737a19b0d?t=1589884734', 1);
INSERT INTO `commentImage` VALUES (101, 175, ' http://img.isdfmk.xyz/22e8291452d14003b8ed65ae71ea1897?t=1589884736', 1);
INSERT INTO `commentImage` VALUES (102, 175, ' http://img.isdfmk.xyz/7d0786825f4a45eea0b1870fee365e1b?t=1589884736', 1);
INSERT INTO `commentImage` VALUES (103, 175, NULL, 1);
INSERT INTO `commentImage` VALUES (104, 176, ' http://img.isdfmk.xyz/d5cd009c90a347a0a8ee1f62cf26ecdf?t=1589888247', 1);
INSERT INTO `commentImage` VALUES (105, 176, NULL, 1);
INSERT INTO `commentImage` VALUES (106, 177, ' http://img.isdfmk.xyz/72312c360f9d4790ad9a93c0c55ba60e?t=1589892685', 1);
INSERT INTO `commentImage` VALUES (107, 177, ' http://img.isdfmk.xyz/13b520de8eea408285a9bb3ffd0ce591?t=1589892687', 1);
INSERT INTO `commentImage` VALUES (108, 177, ' http://img.isdfmk.xyz/18cc28d764964825b6b83f3f8d51250d?t=1589892688', 1);
INSERT INTO `commentImage` VALUES (109, 177, ' http://img.isdfmk.xyz/6a35598e8465446183fff33bb1cc1e95?t=1589892688', 1);
INSERT INTO `commentImage` VALUES (110, 177, ' http://img.isdfmk.xyz/cd1f4687a9e64efdbe81064bc7bfef9c?t=1589892689', 1);
INSERT INTO `commentImage` VALUES (111, 177, ' http://img.isdfmk.xyz/bb81c84add2d4ec0be99d564c8d74f36?t=1589892689', 1);
INSERT INTO `commentImage` VALUES (112, 177, ' http://img.isdfmk.xyz/bdd2499a46f340dd8c0c27010ca5298d?t=1589892690', 1);
INSERT INTO `commentImage` VALUES (113, 177, ' http://img.isdfmk.xyz/e88824410d6b479a90c718c21937131b?t=1589892690', 1);
INSERT INTO `commentImage` VALUES (114, 177, ' http://img.isdfmk.xyz/8d1de32664274f218bed09abf2733d56?t=1589892691', 1);
INSERT INTO `commentImage` VALUES (115, 177, ' http://img.isdfmk.xyz/7f987d8063c4490aa102087e380fa4da?t=1589892691', 1);
INSERT INTO `commentImage` VALUES (116, 177, NULL, 1);
INSERT INTO `commentImage` VALUES (117, 178, ' http://img.isdfmk.xyz/bad3e625f3144ec7ba746631dfba9bb8?t=1589892702', 1);
INSERT INTO `commentImage` VALUES (118, 178, ' http://img.isdfmk.xyz/4614d2fce538476b8b3d583357ebad7a?t=1589892704', 1);
INSERT INTO `commentImage` VALUES (119, 178, ' http://img.isdfmk.xyz/c6e97a5eea174e70b0ebf7de1833f897?t=1589892705', 1);
INSERT INTO `commentImage` VALUES (120, 178, ' http://img.isdfmk.xyz/e0e71e1d1ea54aedbfd9ee059de7c988?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (121, 178, ' http://img.isdfmk.xyz/2df20875492d4977bdda804ae0733e49?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (122, 178, ' http://img.isdfmk.xyz/d6c7d312a48146ec8c869d797a3ba4b7?t=1589892706', 1);
INSERT INTO `commentImage` VALUES (123, 178, ' http://img.isdfmk.xyz/6ab34c8dc0be43bf94b96b744054c02a?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (124, 178, ' http://img.isdfmk.xyz/5cd72a024cc94302b5733ca5852b374f?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (125, 178, ' http://img.isdfmk.xyz/4deafe9029de4547a73bfe5b775a97e1?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (126, 178, ' http://img.isdfmk.xyz/ab4c5d62dcf14e9ea3b7ebfe231095f8?t=1589892707', 1);
INSERT INTO `commentImage` VALUES (127, 178, NULL, 1);
INSERT INTO `commentImage` VALUES (128, 179, ' http://img.isdfmk.xyz/3bddd0baefa84b189cd4e6cdd44f0418?t=1589936467', 1);
INSERT INTO `commentImage` VALUES (129, 180, ' http://img.isdfmk.xyz/971f759398b54dd48d5eba2d2f5a860b?t=1589962992', 1);
INSERT INTO `commentImage` VALUES (130, 180, ' http://img.isdfmk.xyz/24f340b6ddf942569d5ebf9a8dc09239?t=1589962994', 1);
INSERT INTO `commentImage` VALUES (131, 180, ' http://img.isdfmk.xyz/601906fb212541afb69ff3f67353a66b?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (132, 180, ' http://img.isdfmk.xyz/c31166bc125847259f079244b7bc5c09?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (133, 180, ' http://img.isdfmk.xyz/e7a885f7f82146fda08599a14130d0b0?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (134, 180, ' http://img.isdfmk.xyz/b2f1303ec87b40d9bbf90295e5672de0?t=1589962996', 1);
INSERT INTO `commentImage` VALUES (135, 180, ' http://img.isdfmk.xyz/8abc2647695844018ecf43b3f615ee87?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (136, 180, ' http://img.isdfmk.xyz/8ac8ebd584e649dab2c4e6c48ba5a857?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (137, 180, ' http://img.isdfmk.xyz/d6c19e50ae7442d9b38359aa71385aa7?t=1589962997', 1);
INSERT INTO `commentImage` VALUES (138, 180, ' http://img.isdfmk.xyz/3f9426f137a744e7975a2c59208253d0?t=1589962998', 1);
INSERT INTO `commentImage` VALUES (139, 180, NULL, 1);
INSERT INTO `commentImage` VALUES (140, 181, ' http://img.isdfmk.xyz/dfec66a86dbd4ba28d8f82c4b090c2f8?t=1589963000', 1);
INSERT INTO `commentImage` VALUES (141, 181, ' http://img.isdfmk.xyz/d5f05ed783124cb8b7261d1f3123a407?t=1589963002', 1);
INSERT INTO `commentImage` VALUES (142, 181, ' http://img.isdfmk.xyz/9555440b94124077a47121a48b0b83f8?t=1589963003', 1);
INSERT INTO `commentImage` VALUES (143, 181, ' http://img.isdfmk.xyz/2017a4c8978b4bf19479d95e06328e04?t=1589963004', 1);
INSERT INTO `commentImage` VALUES (144, 181, ' http://img.isdfmk.xyz/0865bd5a77de41aabd42c528f81d802a?t=1589963004', 1);
INSERT INTO `commentImage` VALUES (145, 181, ' http://img.isdfmk.xyz/fa00e57fb2944bd1978d22384b0a233c?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (146, 181, ' http://img.isdfmk.xyz/1795915e7d1a43d1bd0c427bb2cc9dbf?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (147, 181, ' http://img.isdfmk.xyz/89cc8fa54f964e459ce77ae332c2162e?t=1589963005', 1);
INSERT INTO `commentImage` VALUES (148, 181, ' http://img.isdfmk.xyz/bc882f88d77f43d0a83ecff7669204cc?t=1589963006', 1);
INSERT INTO `commentImage` VALUES (149, 181, ' http://img.isdfmk.xyz/284c5788404b4ea18895d1f70f530405?t=1589963006', 1);
INSERT INTO `commentImage` VALUES (150, 181, NULL, 1);

-- ----------------------------
-- Table structure for homepageIcon
-- ----------------------------
DROP TABLE IF EXISTS `homepageIcon`;
CREATE TABLE `homepageIcon`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `icon` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconSite` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homepageIcon
-- ----------------------------
INSERT INTO `homepageIcon` VALUES (1, 'http://img.isdfmk.xyz/e.png', '/', '会员');
INSERT INTO `homepageIcon` VALUES (2, 'http://img.isdfmk.xyz/d.png', '/personalCenter', '我的');
INSERT INTO `homepageIcon` VALUES (3, 'http://img.isdfmk.xyz/a.png', '/', '消息');
INSERT INTO `homepageIcon` VALUES (4, '\r\nhttp://img.isdfmk.xyz/f.png', '/', '收藏');
INSERT INTO `homepageIcon` VALUES (5, '\r\nhttp://img.isdfmk.xyz/h.png', '/', '购物车');
INSERT INTO `homepageIcon` VALUES (6, '\r\nhttp://img.isdfmk.xyz/g.png', '/', '订单');
INSERT INTO `homepageIcon` VALUES (7, '\r\nhttp://img.isdfmk.xyz/c.png', '/', '客服');
INSERT INTO `homepageIcon` VALUES (8, 'http://img.isdfmk.xyz/b.png', '/', '物流');
INSERT INTO `homepageIcon` VALUES (9, '\r\nhttp://img.isdfmk.xyz/l.png', '/', '设置');

-- ----------------------------
-- Table structure for newsContent
-- ----------------------------
DROP TABLE IF EXISTS `newsContent`;
CREATE TABLE `newsContent`  (
  `contentId` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NULL DEFAULT NULL,
  `userId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `newsType` int(11) NULL DEFAULT NULL,
  `newsTypeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `newsTime` datetime(0) NULL DEFAULT NULL,
  `newsStatus` int(11) NULL DEFAULT NULL,
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4687 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsContent
-- ----------------------------
INSERT INTO `newsContent` VALUES (4659, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1589948114618100001', '0', '确认订单消息', '2020-05-20 12:15:29', 0, '消息简介');
INSERT INTO `newsContent` VALUES (4660, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1589948114618100001', '0', '支付通知', '2020-05-20 12:15:29', 0, '支付通知');
INSERT INTO `newsContent` VALUES (4661, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1589948265055100002', '0', '确认订单消息', '2020-05-20 12:17:50', 0, '消息简介');
INSERT INTO `newsContent` VALUES (4662, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1589948265055100002', '0', '支付通知', '2020-05-20 12:17:50', 0, '支付通知');
INSERT INTO `newsContent` VALUES (4663, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1589948336801100003', '0', '确认订单消息', '2020-05-20 12:19:05', 0, '消息简介');
INSERT INTO `newsContent` VALUES (4664, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1589948336801100003', '0', '支付通知', '2020-05-20 12:19:05', 0, '支付通知');
INSERT INTO `newsContent` VALUES (4665, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1589948466459100004', '0', '确认订单消息', '2020-05-20 12:21:13', 0, '消息简介');
INSERT INTO `newsContent` VALUES (4666, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1589948466459100004', '0', '支付通知', '2020-05-20 12:21:13', 0, '支付通知');
INSERT INTO `newsContent` VALUES (4667, 4, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 4, '1589948556726100005', '0', '确认订单消息', '2020-05-20 12:22:42', 0, '消息简介');
INSERT INTO `newsContent` VALUES (4668, 3, 'f92b9f8f372e445fb6564cdd57aa3c3e', NULL, 3, '1589948556726100005', '0', '支付通知', '2020-05-20 12:22:42', 0, '支付通知');
INSERT INTO `newsContent` VALUES (4669, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589952921024100006', '0', '确认订单消息', '2020-05-20 13:35:37', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4670, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589952921024100006', '0', '支付通知', '2020-05-20 13:35:37', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4671, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589953018592100007', '0', '确认订单消息', '2020-05-20 13:37:46', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4672, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589953018592100007', '0', '支付通知', '2020-05-20 13:37:47', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4673, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589953018592100007', '0', '确认订单消息', '2020-05-20 13:38:49', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4674, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589953018592100007', '0', '支付通知', '2020-05-20 13:38:49', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4675, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589955922052100007', '0', '确认订单消息', '2020-05-20 14:26:11', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4676, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589955922052100007', '0', '支付通知', '2020-05-20 14:26:11', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4677, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589956158884100007', '0', '确认订单消息', '2020-05-20 06:29:54', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4678, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589956158884100007', '0', '支付通知', '2020-05-20 06:29:54', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4679, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589956331812100008', '0', '确认订单消息', '2020-05-20 06:32:39', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4680, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589956331812100008', '0', '支付通知', '2020-05-20 06:32:39', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4681, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589956494721100008', '0', '确认订单消息', '2020-05-20 06:35:23', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4682, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589956494721100008', '0', '支付通知', '2020-05-20 06:35:24', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4683, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589957131873100009', '0', '确认订单消息', '2020-05-20 14:46:16', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4684, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589957131873100009', '0', '支付通知', '2020-05-20 14:46:16', 1, '支付通知');
INSERT INTO `newsContent` VALUES (4685, 4, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 4, '1589962956539100009', '0', '确认订单消息', '2020-05-20 16:22:42', 1, '消息简介');
INSERT INTO `newsContent` VALUES (4686, 3, '7c9fdfa3177042a08766aed29e7de6cd', NULL, 3, '1589962956539100009', '0', '支付通知', '2020-05-20 16:22:42', 1, '支付通知');

-- ----------------------------
-- Table structure for newsSender
-- ----------------------------
DROP TABLE IF EXISTS `newsSender`;
CREATE TABLE `newsSender`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SenderId` int(11) NULL DEFAULT NULL,
  `senderName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderAvatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newsSender
-- ----------------------------
INSERT INTO `newsSender` VALUES (1, 1, '微利官方', ' http://img.isdfmk.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1585021695781');
INSERT INTO `newsSender` VALUES (2, 2, '微利助手', 'http://img.isdfmk.xyz/undraw_happy_music_g6wc.png');
INSERT INTO `newsSender` VALUES (3, 3, '微利支付', 'http://img.isdfmk.xyz/JE%5B%25FC76MGL0BS787~WXR1O.png');
INSERT INTO `newsSender` VALUES (4, 4, '订单助手', 'http://img.isdfmk.xyz/timg.jpg');

-- ----------------------------
-- Table structure for orderAddress
-- ----------------------------
DROP TABLE IF EXISTS `orderAddress`;
CREATE TABLE `orderAddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailedAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaCodes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 426 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderAddress
-- ----------------------------
INSERT INTO `orderAddress` VALUES (410, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948114618100001', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (411, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948265055100002', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (412, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948336801100003', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (413, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948466459100004', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (414, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948556726100005', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '闺蜜家');
INSERT INTO `orderAddress` VALUES (415, '7c9fdfa3177042a08766aed29e7de6cd', '1589952921024100006', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (416, '7c9fdfa3177042a08766aed29e7de6cd', '1589953018592100007', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (417, '7c9fdfa3177042a08766aed29e7de6cd', '1589955376786100007', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (418, '7c9fdfa3177042a08766aed29e7de6cd', '1589955376786100007', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (419, '7c9fdfa3177042a08766aed29e7de6cd', '1589955922052100007', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (420, '7c9fdfa3177042a08766aed29e7de6cd', '1589956158884100007', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (421, '7c9fdfa3177042a08766aed29e7de6cd', '1589956331812100008', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (422, '7c9fdfa3177042a08766aed29e7de6cd', '1589956494721100008', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (423, '7c9fdfa3177042a08766aed29e7de6cd', '1589957131873100009', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (424, '7c9fdfa3177042a08766aed29e7de6cd', '1589957131873100009', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');
INSERT INTO `orderAddress` VALUES (425, '7c9fdfa3177042a08766aed29e7de6cd', '1589962956539100009', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '学校');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `purchaseId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) NULL DEFAULT NULL,
  `orderId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productName` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productConfiguration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productPrice` double NULL DEFAULT NULL,
  `productWeight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluate` int(11) NULL DEFAULT NULL,
  `productState` int(11) NULL DEFAULT 0,
  `isDelete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`purchaseId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2838 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2804, 10001, '1589948114618100001', 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.isdfmk.xyz/68836f52ffaaad96.jpg', '黑色 豪华版 256G+8G\r\n ', '1', 5999, '0.74kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2805, 10003, '1589948265055100002', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 758, '不计重', 0, 2, 0);
INSERT INTO `orders` VALUES (2806, 10003, '1589948336801100003', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '1', 758, '不计重', 0, 2, 0);
INSERT INTO `orders` VALUES (2807, 10014, '1589948466459100004', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '1', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2808, 10001, '1589948556726100005', 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.isdfmk.xyz/68836f52ffaaad96.jpg', '黑色 豪华版 256G+8G\r\n ', '1', 5999, '0.74kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2809, 10009, '1589952921024100006', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', ' [鼠标耳机]+i7 512GX2 20700C 白 ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2810, 10009, '1589952921024100006', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[鼠标耳机]+i7 512GX2 20700C 黑  ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2811, 10009, '1589952921024100006', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[耳机]+9代i7 512GX2 20700C 白 ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2812, 10009, '1589952921024100006', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[耳机]+9代i7 512GX2 20700C 黑 ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2813, 10009, '1589952921024100006', '外星人Alienware area-51m 17.3英寸游戏笔记本电脑(i9-9900K 32G 512GX2 1T RTX2080 8G 144Hz 低蓝光屏)黑\r\n', 'http://productdata.isdfmk.xyz/0fb1612d25f44013.jpg', '[A51M]9代i9 512GX2+1T 2080 144 ', '1', 47699, '5.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2814, 10003, '1589953018592100007', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【尝鲜款】帝王蟹礼盒2.8-2.4斤 ', '2', 758, '不计重', 0, 3, 0);
INSERT INTO `orders` VALUES (2815, 10003, '1589953018592100007', '星农联合 智利帝王蟹5.5-5.0斤 熟冻大螃蟹 进口海鲜礼盒', 'http://productdata.isdfmk.xyz/212478163d84fcf0.jpg', '【超大款】帝王蟹礼盒4.5-4.0斤  ', '2', 758, '不计重', 0, 3, 0);
INSERT INTO `orders` VALUES (2816, 10015, '1589955376786100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '1', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (2817, 10015, '1589955376786100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '1', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (2818, 10015, '1589955376786100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (2819, 10015, '1589955376786100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (2820, 10015, '1589955376786100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '2', 20, '0.15kg', 0, 0, 0);
INSERT INTO `orders` VALUES (2821, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '1', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2822, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '1', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2823, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2824, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '香蕉味 ', '1', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2825, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '2', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2826, 10015, '1589955922052100007', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '1', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2827, 10014, '1589956158884100007', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色+骨伽LLC750全模组电源 ', '2', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2828, 10014, '1589956158884100007', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '3', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2829, 10014, '1589956331812100008', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色+骨伽LLC750全模组电源 ', '1', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2830, 10014, '1589956331812100008', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色+骨伽LLC750全模组电源 ', '1', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2831, 10014, '1589956331812100008', '骨伽（COUGAR） 电脑主机箱 台式机中塔式侧透征服者游戏定制水冷机箱 黑色\r\n', 'http://productdata.isdfmk.xyz/5b4d4cc8N0bf9c476.jpg', '黑色 ', '2', 2898, '2.8kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2832, 10015, '1589956494721100008', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '苹果味 ', '2', 20, '0.15kg', 0, 3, 0);
INSERT INTO `orders` VALUES (2833, 10015, '1589956494721100008', '三只松鼠芒果干 蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', 'http://productdata.isdfmk.xyz/3531d2420f91d48177112641833bc7aa_2_3_photo.jpg', '奶茶味 ', '3', 20, '0.15kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2834, 10006, '1589957131873100009', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '铂金银 ', '1', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2835, 10006, '1589957131873100009', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '铂金银 ', '2', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2836, 10006, '1589957131873100009', ' 索尼（SONY）WF-1000XM3 真无线蓝牙降噪耳机 智能降噪 触控面板 苹果/安卓手机适用 黑色\r\n', 'http://productdata.isdfmk.xyz/2ca45e2fd9758794.jpg', '黑色 ', '4', 1499, '0.6kg', 0, 2, 0);
INSERT INTO `orders` VALUES (2837, 10001, '1589962956539100009', 'Apple iPhone 11 (A2223) 128GB 黑色 移动联通电信4G手机 双卡双待 ', 'http://productdata.isdfmk.xyz/68836f52ffaaad96.jpg', '黑色 豪华版 256G+8G\r\n ', '1', 5999, '0.74kg', 0, 5, 0);

-- ----------------------------
-- Table structure for productAttributes
-- ----------------------------
DROP TABLE IF EXISTS `productAttributes`;
CREATE TABLE `productAttributes`  (
  `productId` int(11) NOT NULL,
  `size` int(11) NULL DEFAULT 0,
  `colour` int(11) NULL DEFAULT 0,
  `combo` int(11) NULL DEFAULT 0,
  `specification` int(11) NULL DEFAULT 0,
  `taste` int(11) NULL DEFAULT 0,
  `kind` int(11) NULL DEFAULT 0,
  `version` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`productId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productAttributes
-- ----------------------------
INSERT INTO `productAttributes` VALUES (10001, 0, 1, 0, 0, 0, 0, 1);
INSERT INTO `productAttributes` VALUES (10002, 0, 1, 1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for productComment
-- ----------------------------
DROP TABLE IF EXISTS `productComment`;
CREATE TABLE `productComment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `purchaseId` int(11) NULL DEFAULT NULL,
  `textComment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `videoComment` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favorability` int(11) NULL DEFAULT NULL,
  `likeQuantity` int(11) NULL DEFAULT 0,
  `commentTime` datetime(0) NULL DEFAULT NULL,
  `anonymity` int(11) NULL DEFAULT NULL,
  `commentVideoSign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productComment
-- ----------------------------
INSERT INTO `productComment` VALUES (175, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, 2770, '这个手机看了好久了 终于决定买了', ' http://img.isdfmk.xyz/ecd7e5d4053a4c97a56da11b8c02fb28', 5, 0, '2020-05-19 18:38:50', 0, 0);
INSERT INTO `productComment` VALUES (176, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, 2779, '第二次买了 这副耳机太爱了 ', ' http://img.isdfmk.xyz/3c9d41b992754d9e9e3014401d7b4a5b', 5, 0, '2020-05-19 19:36:57', 0, 0);
INSERT INTO `productComment` VALUES (177, '7c9fdfa3177042a08766aed29e7de6cd', 10003, 2780, '速度还是大', ' http://img.isdfmk.xyz/d357729dac4e47b99aa7844c4790b1b1', 5, 0, '2020-05-19 20:51:24', 0, 0);
INSERT INTO `productComment` VALUES (178, '7c9fdfa3177042a08766aed29e7de6cd', 10003, 2780, '速度还是大', ' http://img.isdfmk.xyz/0bb3feb42e2c464cb3b752a0f64ab587', 5, 0, '2020-05-19 20:51:42', 0, 0);
INSERT INTO `productComment` VALUES (179, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, 2786, '520收到爱的礼物了', NULL, 5, 0, '2020-05-20 09:01:05', 0, 0);
INSERT INTO `productComment` VALUES (180, '7c9fdfa3177042a08766aed29e7de6cd', 10001, 2837, '4556', ' http://img.isdfmk.xyz/6850587ac9e942b39d23607c4cbdcda0', 2, 0, '2020-05-20 16:23:11', 0, 0);
INSERT INTO `productComment` VALUES (181, '7c9fdfa3177042a08766aed29e7de6cd', 10001, 2837, '4556', ' http://img.isdfmk.xyz/c5b79f75debc46eaaa6dd30bcab8b343', 2, 0, '2020-05-20 16:23:19', 0, 0);

-- ----------------------------
-- Table structure for product_final_category
-- ----------------------------
DROP TABLE IF EXISTS `product_final_category`;
CREATE TABLE `product_final_category`  (
  `product_final_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_secondary_id` int(11) NULL DEFAULT NULL,
  `final_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_final_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10495 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_final_category
-- ----------------------------
INSERT INTO `product_final_category` VALUES (10001, 1001, '轻薄电视', 1);
INSERT INTO `product_final_category` VALUES (10002, 1001, '全屏电视', 1);
INSERT INTO `product_final_category` VALUES (10003, 1001, '智能电视', 1);
INSERT INTO `product_final_category` VALUES (10004, 1001, '智慧屏', 1);
INSERT INTO `product_final_category` VALUES (10005, 1001, '4k超清电视', 1);
INSERT INTO `product_final_category` VALUES (10006, 1001, '55英寸电视', 1);
INSERT INTO `product_final_category` VALUES (10007, 1001, '65英寸', 1);
INSERT INTO `product_final_category` VALUES (10008, 1001, '电视配件', 1);
INSERT INTO `product_final_category` VALUES (10009, 1002, '空调挂机', 1);
INSERT INTO `product_final_category` VALUES (10010, 1002, '空调柜机', 1);
INSERT INTO `product_final_category` VALUES (10011, 1002, '变频空调', 1);
INSERT INTO `product_final_category` VALUES (10012, 1002, '一级能效', 1);
INSERT INTO `product_final_category` VALUES (10013, 1002, '移动空调', 1);
INSERT INTO `product_final_category` VALUES (10014, 1002, '以旧换新', 1);
INSERT INTO `product_final_category` VALUES (10015, 1003, '滚筒洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10016, 1003, '洗烘一体', 1);
INSERT INTO `product_final_category` VALUES (10017, 1003, '波轮洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10018, 1003, '迷你洗衣机', 1);
INSERT INTO `product_final_category` VALUES (10019, 1003, '烘干机', 1);
INSERT INTO `product_final_category` VALUES (10020, 1003, '洗衣机配件', 1);
INSERT INTO `product_final_category` VALUES (10021, 1004, '多门', 1);
INSERT INTO `product_final_category` VALUES (10022, 1004, '对开门', 1);
INSERT INTO `product_final_category` VALUES (10023, 1004, '三门', 1);
INSERT INTO `product_final_category` VALUES (10024, 1004, '双门', 1);
INSERT INTO `product_final_category` VALUES (10025, 1004, '冰柜/冰吧', 1);
INSERT INTO `product_final_category` VALUES (10026, 1004, '酒柜', 1);
INSERT INTO `product_final_category` VALUES (10027, 1004, '冰箱配件', 1);
INSERT INTO `product_final_category` VALUES (10028, 1004, '多功能', 1);
INSERT INTO `product_final_category` VALUES (10029, 1005, '油烟机', 1);
INSERT INTO `product_final_category` VALUES (10030, 1005, '燃气灶', 1);
INSERT INTO `product_final_category` VALUES (10031, 1005, '烟灶套装', 1);
INSERT INTO `product_final_category` VALUES (10032, 1005, '集成灶', 1);
INSERT INTO `product_final_category` VALUES (10033, 1005, '消毒柜', 1);
INSERT INTO `product_final_category` VALUES (10034, 1005, '洗碗机', 1);
INSERT INTO `product_final_category` VALUES (10035, 1005, '热水器', 1);
INSERT INTO `product_final_category` VALUES (10036, 1005, '空气热水器', 1);
INSERT INTO `product_final_category` VALUES (10037, 1005, '面包机', 1);
INSERT INTO `product_final_category` VALUES (10038, 1006, '破壁机', 1);
INSERT INTO `product_final_category` VALUES (10039, 1006, '电烤箱', 1);
INSERT INTO `product_final_category` VALUES (10040, 1006, '电饭煲', 1);
INSERT INTO `product_final_category` VALUES (10041, 1006, '电压力锅', 1);
INSERT INTO `product_final_category` VALUES (10042, 1006, '电炖锅', 1);
INSERT INTO `product_final_category` VALUES (10043, 1006, '豆浆机', 1);
INSERT INTO `product_final_category` VALUES (10044, 1006, '料理机', 1);
INSERT INTO `product_final_category` VALUES (10045, 1006, '咖啡机', 1);
INSERT INTO `product_final_category` VALUES (10046, 1006, '电火炉', 1);
INSERT INTO `product_final_category` VALUES (10047, 1007, '电风扇', 1);
INSERT INTO `product_final_category` VALUES (10048, 1007, '冷风扇', 1);
INSERT INTO `product_final_category` VALUES (10049, 1007, '空气争化器', 1);
INSERT INTO `product_final_category` VALUES (10050, 1007, '吸尘器', 1);
INSERT INTO `product_final_category` VALUES (10051, 1007, '除螨仪', 1);
INSERT INTO `product_final_category` VALUES (10052, 1007, '扫地机器人', 1);
INSERT INTO `product_final_category` VALUES (10053, 1007, '除湿机', 1);
INSERT INTO `product_final_category` VALUES (10054, 1007, '干衣机', 1);
INSERT INTO `product_final_category` VALUES (10055, 1008, '剃须刀', 1);
INSERT INTO `product_final_category` VALUES (10056, 1008, '电动牙刷', 1);
INSERT INTO `product_final_category` VALUES (10057, 1008, '电吹风', 1);
INSERT INTO `product_final_category` VALUES (10058, 1008, '美容器', 1);
INSERT INTO `product_final_category` VALUES (10059, 1008, '洁面仪', 1);
INSERT INTO `product_final_category` VALUES (10060, 1008, '按摩器', 1);
INSERT INTO `product_final_category` VALUES (10061, 1008, '健康秤', 1);
INSERT INTO `product_final_category` VALUES (10062, 1009, '手机', 1);
INSERT INTO `product_final_category` VALUES (10063, 1009, '游戏手机', 1);
INSERT INTO `product_final_category` VALUES (10064, 1009, '5G手机', 1);
INSERT INTO `product_final_category` VALUES (10065, 1009, '拍照手机', 1);
INSERT INTO `product_final_category` VALUES (10066, 1009, '全面屏手机', 1);
INSERT INTO `product_final_category` VALUES (10067, 1009, '老人机', 1);
INSERT INTO `product_final_category` VALUES (10068, 1009, '对讲机', 1);
INSERT INTO `product_final_category` VALUES (10069, 1009, '以旧换新', 1);
INSERT INTO `product_final_category` VALUES (10070, 1010, '手机壳', 1);
INSERT INTO `product_final_category` VALUES (10071, 1010, '贴膜', 1);
INSERT INTO `product_final_category` VALUES (10072, 1010, '手机存储卡', 1);
INSERT INTO `product_final_category` VALUES (10073, 1010, '数据线', 1);
INSERT INTO `product_final_category` VALUES (10074, 1010, '充电器', 1);
INSERT INTO `product_final_category` VALUES (10075, 1010, '手机耳机', 1);
INSERT INTO `product_final_category` VALUES (10076, 1010, '创意配件', 1);
INSERT INTO `product_final_category` VALUES (10077, 1010, '手机饰品', 1);
INSERT INTO `product_final_category` VALUES (10078, 1010, '手机电池', 1);
INSERT INTO `product_final_category` VALUES (10079, 1011, '合约机', 1);
INSERT INTO `product_final_category` VALUES (10080, 1011, '手机卡', 1);
INSERT INTO `product_final_category` VALUES (10081, 1011, '宽带', 1);
INSERT INTO `product_final_category` VALUES (10082, 1011, '充话费/流量', 1);
INSERT INTO `product_final_category` VALUES (10083, 1011, '中国电信', 1);
INSERT INTO `product_final_category` VALUES (10084, 1011, '中国移动', 1);
INSERT INTO `product_final_category` VALUES (10085, 1011, '中国联通', 1);
INSERT INTO `product_final_category` VALUES (10086, 1011, '京东通信', 1);
INSERT INTO `product_final_category` VALUES (10087, 1012, '数码相机', 1);
INSERT INTO `product_final_category` VALUES (10088, 1012, '微单相机', 1);
INSERT INTO `product_final_category` VALUES (10089, 1012, '单反相机', 1);
INSERT INTO `product_final_category` VALUES (10090, 1012, '拍立得', 1);
INSERT INTO `product_final_category` VALUES (10091, 1012, '运动相机', 1);
INSERT INTO `product_final_category` VALUES (10092, 1012, '摄像机', 1);
INSERT INTO `product_final_category` VALUES (10093, 1012, '镜头', 1);
INSERT INTO `product_final_category` VALUES (10094, 1012, '户外器材', 1);
INSERT INTO `product_final_category` VALUES (10095, 1012, '影棚器材', 1);
INSERT INTO `product_final_category` VALUES (10096, 1013, '存储卡', 1);
INSERT INTO `product_final_category` VALUES (10097, 1013, '三脚架/云台', 1);
INSERT INTO `product_final_category` VALUES (10098, 1013, '相机包', 1);
INSERT INTO `product_final_category` VALUES (10099, 1013, '滤鏡', 1);
INSERT INTO `product_final_category` VALUES (10100, 1013, '闪光灯/手柄', 1);
INSERT INTO `product_final_category` VALUES (10101, 1013, '相机清洁/贴膜', 1);
INSERT INTO `product_final_category` VALUES (10102, 1013, '机身附件', 1);
INSERT INTO `product_final_category` VALUES (10103, 1013, '镜头附件', 1);
INSERT INTO `product_final_category` VALUES (10104, 1014, '耳机/耳麦', 1);
INSERT INTO `product_final_category` VALUES (10105, 1014, '音箱/音响', 1);
INSERT INTO `product_final_category` VALUES (10106, 1014, '智能音箱', 1);
INSERT INTO `product_final_category` VALUES (10107, 1014, '便携/无线音箱', 1);
INSERT INTO `product_final_category` VALUES (10108, 1014, '收音机', 1);
INSERT INTO `product_final_category` VALUES (10109, 1014, '麦克风', 1);
INSERT INTO `product_final_category` VALUES (10110, 1014, 'MP3/MP4', 1);
INSERT INTO `product_final_category` VALUES (10111, 1014, '专业音频', 1);
INSERT INTO `product_final_category` VALUES (10112, 1015, '智能手环', 1);
INSERT INTO `product_final_category` VALUES (10113, 1015, '智能手表', 1);
INSERT INTO `product_final_category` VALUES (10114, 1015, '智能眼镜', 1);
INSERT INTO `product_final_category` VALUES (10115, 1015, '智能机器人', 1);
INSERT INTO `product_final_category` VALUES (10116, 1015, '运动跟踪器', 1);
INSERT INTO `product_final_category` VALUES (10117, 1015, '健康监测', 1);
INSERT INTO `product_final_category` VALUES (10118, 1015, '智能配饰', 1);
INSERT INTO `product_final_category` VALUES (10119, 1016, '学生平板', 1);
INSERT INTO `product_final_category` VALUES (10120, 1016, '点读机/笔', 1);
INSERT INTO `product_final_category` VALUES (10121, 1016, '早教益智', 1);
INSERT INTO `product_final_category` VALUES (10122, 1016, '录音笔', 1);
INSERT INTO `product_final_category` VALUES (10123, 1016, '电纸书', 1);
INSERT INTO `product_final_category` VALUES (10124, 1016, '电子词典', 1);
INSERT INTO `product_final_category` VALUES (10125, 1016, '复读机翻译机', 1);
INSERT INTO `product_final_category` VALUES (10126, 1017, '笔记本', 1);
INSERT INTO `product_final_category` VALUES (10127, 1017, '游戏本', 1);
INSERT INTO `product_final_category` VALUES (10128, 1017, '平板电脑', 1);
INSERT INTO `product_final_category` VALUES (10129, 1017, '台式机', 1);
INSERT INTO `product_final_category` VALUES (10130, 1017, '一体机', 1);
INSERT INTO `product_final_category` VALUES (10131, 1017, '服务器/工作站', 1);
INSERT INTO `product_final_category` VALUES (10132, 1018, '显示器', 1);
INSERT INTO `product_final_category` VALUES (10133, 1018, 'CPU', 1);
INSERT INTO `product_final_category` VALUES (10134, 1018, '主板', 1);
INSERT INTO `product_final_category` VALUES (10135, 1018, '显卡', 1);
INSERT INTO `product_final_category` VALUES (10136, 1018, '硬盘', 1);
INSERT INTO `product_final_category` VALUES (10137, 1018, '内存', 1);
INSERT INTO `product_final_category` VALUES (10138, 1018, '机箱', 1);
INSERT INTO `product_final_category` VALUES (10139, 1018, '电源', 1);
INSERT INTO `product_final_category` VALUES (10140, 1019, '鼠标', 1);
INSERT INTO `product_final_category` VALUES (10141, 1019, '键盘', 1);
INSERT INTO `product_final_category` VALUES (10142, 1019, '键鼠套装', 1);
INSERT INTO `product_final_category` VALUES (10143, 1019, '网络仪表仪器', 1);
INSERT INTO `product_final_category` VALUES (10144, 1019, 'U盘', 1);
INSERT INTO `product_final_category` VALUES (10145, 1019, '移动硬盘', 1);
INSERT INTO `product_final_category` VALUES (10146, 1019, '鼠标垫', 1);
INSERT INTO `product_final_category` VALUES (10147, 1019, '摄像头', 1);
INSERT INTO `product_final_category` VALUES (10148, 1020, '游戏机', 1);
INSERT INTO `product_final_category` VALUES (10149, 1020, '游戏耳机', 1);
INSERT INTO `product_final_category` VALUES (10150, 1020, '手柄/方向盘', 1);
INSERT INTO `product_final_category` VALUES (10151, 1020, '游戏软件', 1);
INSERT INTO `product_final_category` VALUES (10152, 1020, '游戏周边', 1);
INSERT INTO `product_final_category` VALUES (10153, 1021, '路由器', 1);
INSERT INTO `product_final_category` VALUES (10154, 1021, '网络机顶盒', 1);
INSERT INTO `product_final_category` VALUES (10155, 1021, '交换机', 1);
INSERT INTO `product_final_category` VALUES (10156, 1021, '网络存储', 1);
INSERT INTO `product_final_category` VALUES (10157, 1021, '网卡', 1);
INSERT INTO `product_final_category` VALUES (10158, 1021, '5G/4G上网', 1);
INSERT INTO `product_final_category` VALUES (10159, 1021, '网线', 1);
INSERT INTO `product_final_category` VALUES (10160, 1021, '网络配件', 1);
INSERT INTO `product_final_category` VALUES (10161, 1022, '投影机', 1);
INSERT INTO `product_final_category` VALUES (10162, 1022, '投影配件', 1);
INSERT INTO `product_final_category` VALUES (10163, 1022, '打印机', 1);
INSERT INTO `product_final_category` VALUES (10164, 1022, '传真设备', 1);
INSERT INTO `product_final_category` VALUES (10165, 1022, '验钞/点钞机', 1);
INSERT INTO `product_final_category` VALUES (10166, 1022, '扫描设备', 1);
INSERT INTO `product_final_category` VALUES (10167, 1022, '复合机', 1);
INSERT INTO `product_final_category` VALUES (10168, 1022, '碎纸机', 1);
INSERT INTO `product_final_category` VALUES (10169, 1023, '笔类', 1);
INSERT INTO `product_final_category` VALUES (10170, 1023, '本册/便签', 1);
INSERT INTO `product_final_category` VALUES (10171, 1023, '办公文具', 1);
INSERT INTO `product_final_category` VALUES (10172, 1023, '文件收纳', 1);
INSERT INTO `product_final_category` VALUES (10173, 1023, '学生文具', 1);
INSERT INTO `product_final_category` VALUES (10174, 1023, '计算器', 1);
INSERT INTO `product_final_category` VALUES (10175, 1023, '画具画材', 1);
INSERT INTO `product_final_category` VALUES (10176, 1023, '财会用品', 1);
INSERT INTO `product_final_category` VALUES (10177, 1024, '硒鼓/墨粉', 1);
INSERT INTO `product_final_category` VALUES (10178, 1024, '墨盒', 1);
INSERT INTO `product_final_category` VALUES (10179, 1024, '色带', 1);
INSERT INTO `product_final_category` VALUES (10180, 1024, '纸类', 1);
INSERT INTO `product_final_category` VALUES (10181, 1024, '刻录光盘', 1);
INSERT INTO `product_final_category` VALUES (10182, 1025, '当季热卖', 1);
INSERT INTO `product_final_category` VALUES (10183, 1025, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10184, 1025, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10185, 1025, '牛仔裤', 1);
INSERT INTO `product_final_category` VALUES (10186, 1025, '休闲裤', 1);
INSERT INTO `product_final_category` VALUES (10187, 1025, '衬衫', 1);
INSERT INTO `product_final_category` VALUES (10188, 1025, '短裤', 1);
INSERT INTO `product_final_category` VALUES (10189, 1026, '当季热卖', 1);
INSERT INTO `product_final_category` VALUES (10190, 1026, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10191, 1026, '商场同款', 1);
INSERT INTO `product_final_category` VALUES (10192, 1026, '时尚套装', 1);
INSERT INTO `product_final_category` VALUES (10193, 1026, '连衣裙', 1);
INSERT INTO `product_final_category` VALUES (10194, 1026, '半身裙', 1);
INSERT INTO `product_final_category` VALUES (10195, 1026, 'T恤衬衫', 1);
INSERT INTO `product_final_category` VALUES (10196, 1027, '文胸', 1);
INSERT INTO `product_final_category` VALUES (10197, 1027, '睡衣/家居服', 1);
INSERT INTO `product_final_category` VALUES (10198, 1027, '男士内裤', 1);
INSERT INTO `product_final_category` VALUES (10199, 1027, '女士内裤', 1);
INSERT INTO `product_final_category` VALUES (10200, 1027, '吊带/背心', 1);
INSERT INTO `product_final_category` VALUES (10201, 1027, '文胸套装', 1);
INSERT INTO `product_final_category` VALUES (10202, 1027, '情侣睡衣', 1);
INSERT INTO `product_final_category` VALUES (10203, 1027, '塑身美体', 1);
INSERT INTO `product_final_category` VALUES (10204, 1028, '女士围巾/披肩', 1);
INSERT INTO `product_final_category` VALUES (10205, 1028, '光学镜架镜片', 1);
INSERT INTO `product_final_category` VALUES (10206, 1028, '真皮手套', 1);
INSERT INTO `product_final_category` VALUES (10207, 1028, '毛线帽', 1);
INSERT INTO `product_final_category` VALUES (10208, 1028, '太阳镜', 1);
INSERT INTO `product_final_category` VALUES (10209, 1028, '棒球帽', 1);
INSERT INTO `product_final_category` VALUES (10210, 1028, '防辐射', 1);
INSERT INTO `product_final_category` VALUES (10211, 1029, '套装', 1);
INSERT INTO `product_final_category` VALUES (10212, 1029, '卫衣', 1);
INSERT INTO `product_final_category` VALUES (10213, 1029, '裤子', 1);
INSERT INTO `product_final_category` VALUES (10214, 1029, '外套/大衣', 1);
INSERT INTO `product_final_category` VALUES (10215, 1029, '毛衣/针织衫', 1);
INSERT INTO `product_final_category` VALUES (10216, 1029, '衬衫', 1);
INSERT INTO `product_final_category` VALUES (10217, 1029, '户外/运动服', 1);
INSERT INTO `product_final_category` VALUES (10218, 1030, '运动鞋', 1);
INSERT INTO `product_final_category` VALUES (10219, 1030, '靴子', 1);
INSERT INTO `product_final_category` VALUES (10220, 1030, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10221, 1030, '皮鞋', 1);
INSERT INTO `product_final_category` VALUES (10222, 1030, '棉鞋', 1);
INSERT INTO `product_final_category` VALUES (10223, 1030, '凉鞋', 1);
INSERT INTO `product_final_category` VALUES (10224, 1030, '拖鞋', 1);
INSERT INTO `product_final_category` VALUES (10225, 1031, '礼盒', 1);
INSERT INTO `product_final_category` VALUES (10226, 1031, '卸妆', 1);
INSERT INTO `product_final_category` VALUES (10227, 1031, '美白', 1);
INSERT INTO `product_final_category` VALUES (10228, 1031, '防晒', 1);
INSERT INTO `product_final_category` VALUES (10229, 1031, '面膜', 1);
INSERT INTO `product_final_category` VALUES (10230, 1031, '洁面', 1);
INSERT INTO `product_final_category` VALUES (10231, 1031, '爽肤', 1);
INSERT INTO `product_final_category` VALUES (10232, 1031, '水精华', 1);
INSERT INTO `product_final_category` VALUES (10233, 1031, '眼霜', 1);
INSERT INTO `product_final_category` VALUES (10234, 1031, '乳液/霜', 1);
INSERT INTO `product_final_category` VALUES (10235, 1032, '隔离', 1);
INSERT INTO `product_final_category` VALUES (10236, 1032, '遮瑕', 1);
INSERT INTO `product_final_category` VALUES (10237, 1032, '气热BB', 1);
INSERT INTO `product_final_category` VALUES (10238, 1032, '粉底', 1);
INSERT INTO `product_final_category` VALUES (10239, 1032, '腮红', 1);
INSERT INTO `product_final_category` VALUES (10240, 1032, '口红/唇膏', 1);
INSERT INTO `product_final_category` VALUES (10241, 1032, '唇釉/唇彩', 1);
INSERT INTO `product_final_category` VALUES (10242, 1032, '睫毛膏', 1);
INSERT INTO `product_final_category` VALUES (10243, 1032, '眼影', 1);
INSERT INTO `product_final_category` VALUES (10244, 1033, '眼线', 1);
INSERT INTO `product_final_category` VALUES (10245, 1033, '眉笔/眉粉', 1);
INSERT INTO `product_final_category` VALUES (10246, 1033, '洗发水', 1);
INSERT INTO `product_final_category` VALUES (10247, 1033, '护发素', 1);
INSERT INTO `product_final_category` VALUES (10248, 1033, '发膜/精油', 1);
INSERT INTO `product_final_category` VALUES (10249, 1033, '造型', 1);
INSERT INTO `product_final_category` VALUES (10250, 1033, '染发', 1);
INSERT INTO `product_final_category` VALUES (10251, 1033, '烫发', 1);
INSERT INTO `product_final_category` VALUES (10252, 1033, '假发', 1);
INSERT INTO `product_final_category` VALUES (10253, 1034, '美发工具', 1);
INSERT INTO `product_final_category` VALUES (10254, 1034, '卫生巾', 1);
INSERT INTO `product_final_category` VALUES (10255, 1034, '卫生棉条', 1);
INSERT INTO `product_final_category` VALUES (10256, 1034, '卫生护垫', 1);
INSERT INTO `product_final_category` VALUES (10257, 1034, '私处护理', 1);
INSERT INTO `product_final_category` VALUES (10258, 1035, '抽纸', 1);
INSERT INTO `product_final_category` VALUES (10259, 1035, '卷紙', 1);
INSERT INTO `product_final_category` VALUES (10260, 1035, '湿巾', 1);
INSERT INTO `product_final_category` VALUES (10261, 1035, '厨房用纸', 1);
INSERT INTO `product_final_category` VALUES (10262, 1035, '湿厕纸', 1);
INSERT INTO `product_final_category` VALUES (10263, 1035, '洗衣疑珠', 1);
INSERT INTO `product_final_category` VALUES (10264, 1035, '洗衣液', 1);
INSERT INTO `product_final_category` VALUES (10265, 1035, '洗衣粉', 1);
INSERT INTO `product_final_category` VALUES (10266, 1035, '肥皂', 1);
INSERT INTO `product_final_category` VALUES (10267, 1036, '洗洁精', 1);
INSERT INTO `product_final_category` VALUES (10268, 1036, '油污净', 1);
INSERT INTO `product_final_category` VALUES (10269, 1036, '洁厕剂', 1);
INSERT INTO `product_final_category` VALUES (10270, 1036, '消毒液', 1);
INSERT INTO `product_final_category` VALUES (10271, 1036, '地板清洁剂', 1);
INSERT INTO `product_final_category` VALUES (10272, 1036, '垃圾袋', 1);
INSERT INTO `product_final_category` VALUES (10273, 1036, '垃圾桶', 1);
INSERT INTO `product_final_category` VALUES (10274, 1036, '拖把/扫把', 1);
INSERT INTO `product_final_category` VALUES (10275, 1037, '狗粮', 1);
INSERT INTO `product_final_category` VALUES (10276, 1037, '狗罐头', 1);
INSERT INTO `product_final_category` VALUES (10277, 1037, '狗零食', 1);
INSERT INTO `product_final_category` VALUES (10278, 1037, '狗厕所', 1);
INSERT INTO `product_final_category` VALUES (10279, 1037, '尿垫', 1);
INSERT INTO `product_final_category` VALUES (10280, 1037, '猫粮', 1);
INSERT INTO `product_final_category` VALUES (10281, 1037, '猫罐头', 1);
INSERT INTO `product_final_category` VALUES (10282, 1037, '猫零食', 1);
INSERT INTO `product_final_category` VALUES (10283, 1037, '猫砂', 1);
INSERT INTO `product_final_category` VALUES (10284, 1038, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10285, 1038, '休闲鞋', 1);
INSERT INTO `product_final_category` VALUES (10286, 1038, '凉鞋', 1);
INSERT INTO `product_final_category` VALUES (10287, 1038, '单鞋', 1);
INSERT INTO `product_final_category` VALUES (10288, 1038, '拖鞋/人字拖', 1);
INSERT INTO `product_final_category` VALUES (10289, 1038, '高跟鞋', 1);
INSERT INTO `product_final_category` VALUES (10290, 1038, '妈妈鞋', 1);
INSERT INTO `product_final_category` VALUES (10291, 1039, '真皮包', 1);
INSERT INTO `product_final_category` VALUES (10292, 1039, '单肩包', 1);
INSERT INTO `product_final_category` VALUES (10293, 1039, '手提包', 1);
INSERT INTO `product_final_category` VALUES (10294, 1039, '斜挎包', 1);
INSERT INTO `product_final_category` VALUES (10295, 1039, '双肩包', 1);
INSERT INTO `product_final_category` VALUES (10296, 1039, '钱包', 1);
INSERT INTO `product_final_category` VALUES (10297, 1039, '手拿包', 1);
INSERT INTO `product_final_category` VALUES (10298, 1039, '卡包/零钱包', 1);
INSERT INTO `product_final_category` VALUES (10299, 1040, '男士钱包', 1);
INSERT INTO `product_final_category` VALUES (10300, 1040, '双肩包', 1);
INSERT INTO `product_final_category` VALUES (10301, 1040, '单肩/斜挎包', 1);
INSERT INTO `product_final_category` VALUES (10302, 1040, '商务公文包', 1);
INSERT INTO `product_final_category` VALUES (10303, 1040, '男士手包', 1);
INSERT INTO `product_final_category` VALUES (10304, 1040, '卡包', 1);
INSERT INTO `product_final_category` VALUES (10305, 1040, '名片夹', 1);
INSERT INTO `product_final_category` VALUES (10306, 1041, '拉杆箱', 1);
INSERT INTO `product_final_category` VALUES (10307, 1041, '拉杆包', 1);
INSERT INTO `product_final_category` VALUES (10308, 1041, '旅行包', 1);
INSERT INTO `product_final_category` VALUES (10309, 1041, '电脑包', 1);
INSERT INTO `product_final_category` VALUES (10310, 1041, '休闲运动包', 1);
INSERT INTO `product_final_category` VALUES (10311, 1041, '书包登山', 1);
INSERT INTO `product_final_category` VALUES (10312, 1042, 'DW', 1);
INSERT INTO `product_final_category` VALUES (10313, 1042, '天梭', 1);
INSERT INTO `product_final_category` VALUES (10314, 1042, '浪琴', 1);
INSERT INTO `product_final_category` VALUES (10315, 1042, '欧米茄', 1);
INSERT INTO `product_final_category` VALUES (10316, 1042, '萧邦', 1);
INSERT INTO `product_final_category` VALUES (10317, 1042, '阿玛尼', 1);
INSERT INTO `product_final_category` VALUES (10318, 1042, '卡西欧', 1);
INSERT INTO `product_final_category` VALUES (10319, 1042, '西铁城', 1);
INSERT INTO `product_final_category` VALUES (10320, 1043, '新品推荐', 1);
INSERT INTO `product_final_category` VALUES (10321, 1043, '休闲鞋凉', 1);
INSERT INTO `product_final_category` VALUES (10322, 1043, '休闲鞋', 1);
INSERT INTO `product_final_category` VALUES (10323, 1043, '正装鞋', 1);
INSERT INTO `product_final_category` VALUES (10324, 1043, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10325, 1043, '传统布鞋', 1);
INSERT INTO `product_final_category` VALUES (10326, 1043, '增高鞋', 1);
INSERT INTO `product_final_category` VALUES (10327, 1044, '跑步鞋', 1);
INSERT INTO `product_final_category` VALUES (10328, 1044, '休鞋', 1);
INSERT INTO `product_final_category` VALUES (10329, 1044, '篮球鞋', 1);
INSERT INTO `product_final_category` VALUES (10330, 1044, '帆布鞋', 1);
INSERT INTO `product_final_category` VALUES (10331, 1044, '板鞋拖鞋', 1);
INSERT INTO `product_final_category` VALUES (10332, 1044, '运动包', 1);
INSERT INTO `product_final_category` VALUES (10333, 1044, '足球鞋', 1);
INSERT INTO `product_final_category` VALUES (10334, 1044, '专项运动鞋', 1);
INSERT INTO `product_final_category` VALUES (10335, 1045, '羽绒服运动套装', 1);
INSERT INTO `product_final_category` VALUES (10336, 1045, '运动裤卫衣', 1);
INSERT INTO `product_final_category` VALUES (10337, 1045, '套头衫', 1);
INSERT INTO `product_final_category` VALUES (10338, 1045, '棉服', 1);
INSERT INTO `product_final_category` VALUES (10339, 1045, '夹克/风衣', 1);
INSERT INTO `product_final_category` VALUES (10340, 1045, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10341, 1045, '运动配饰', 1);
INSERT INTO `product_final_category` VALUES (10342, 1045, '健身服', 1);
INSERT INTO `product_final_category` VALUES (10343, 1046, '跑步机', 1);
INSERT INTO `product_final_category` VALUES (10344, 1046, '动感单健身车', 1);
INSERT INTO `product_final_category` VALUES (10345, 1046, '椭园机', 1);
INSERT INTO `product_final_category` VALUES (10346, 1046, '综合训练脂', 1);
INSERT INTO `product_final_category` VALUES (10347, 1046, '划船机', 1);
INSERT INTO `product_final_category` VALUES (10348, 1046, '甩脂机', 1);
INSERT INTO `product_final_category` VALUES (10349, 1046, '倒立机', 1);
INSERT INTO `product_final_category` VALUES (10350, 1047, '山地车', 1);
INSERT INTO `product_final_category` VALUES (10351, 1047, '公路车', 1);
INSERT INTO `product_final_category` VALUES (10352, 1047, '折叠车', 1);
INSERT INTO `product_final_category` VALUES (10353, 1047, '骑行服', 1);
INSERT INTO `product_final_category` VALUES (10354, 1047, '电动车', 1);
INSERT INTO `product_final_category` VALUES (10355, 1047, '电动滑板车', 1);
INSERT INTO `product_final_category` VALUES (10356, 1047, '城市自行车', 1);
INSERT INTO `product_final_category` VALUES (10357, 1048, '乒乓球', 1);
INSERT INTO `product_final_category` VALUES (10358, 1048, '羽毛球', 1);
INSERT INTO `product_final_category` VALUES (10359, 1048, '篮球', 1);
INSERT INTO `product_final_category` VALUES (10360, 1048, '足球', 1);
INSERT INTO `product_final_category` VALUES (10361, 1048, '轮滑', 1);
INSERT INTO `product_final_category` VALUES (10362, 1049, '户外风衣', 1);
INSERT INTO `product_final_category` VALUES (10363, 1049, '徒步鞋', 1);
INSERT INTO `product_final_category` VALUES (10364, 1049, 'T恤', 1);
INSERT INTO `product_final_category` VALUES (10365, 1049, '冲锋衣裤', 1);
INSERT INTO `product_final_category` VALUES (10366, 1049, '速干衣裤', 1);
INSERT INTO `product_final_category` VALUES (10367, 1049, '越野跑鞋', 1);
INSERT INTO `product_final_category` VALUES (10368, 1049, '滑雪服', 1);
INSERT INTO `product_final_category` VALUES (10369, 1049, '羽线服/棉服', 1);
INSERT INTO `product_final_category` VALUES (10370, 1050, '背包', 1);
INSERT INTO `product_final_category` VALUES (10371, 1050, '帐篷/垫子', 1);
INSERT INTO `product_final_category` VALUES (10372, 1050, '望远镜', 1);
INSERT INTO `product_final_category` VALUES (10373, 1050, '烧烤用具', 1);
INSERT INTO `product_final_category` VALUES (10374, 1050, '便携桌椅床', 1);
INSERT INTO `product_final_category` VALUES (10375, 1050, '户外配饰', 1);
INSERT INTO `product_final_category` VALUES (10376, 1050, '军迷用品', 1);
INSERT INTO `product_final_category` VALUES (10377, 1050, '野餐用品', 1);
INSERT INTO `product_final_category` VALUES (10378, 1051, '最新开盘', 1);
INSERT INTO `product_final_category` VALUES (10379, 1051, '普通住宅', 1);
INSERT INTO `product_final_category` VALUES (10380, 1051, '别墅商业', 1);
INSERT INTO `product_final_category` VALUES (10381, 1051, '办公海外', 1);
INSERT INTO `product_final_category` VALUES (10382, 1051, '房产', 1);
INSERT INTO `product_final_category` VALUES (10383, 1051, '文旅地产', 1);
INSERT INTO `product_final_category` VALUES (10384, 1051, '长租公寓', 1);
INSERT INTO `product_final_category` VALUES (10385, 1052, '微型车', 1);
INSERT INTO `product_final_category` VALUES (10386, 1052, '小型车', 1);
INSERT INTO `product_final_category` VALUES (10387, 1052, '紧凑型', 1);
INSERT INTO `product_final_category` VALUES (10388, 1052, '车中型', 1);
INSERT INTO `product_final_category` VALUES (10389, 1052, '车中大型', 1);
INSERT INTO `product_final_category` VALUES (10390, 1052, '车豪', 1);
INSERT INTO `product_final_category` VALUES (10391, 1052, '华车 ', 1);
INSERT INTO `product_final_category` VALUES (10392, 1052, 'MPV ', 1);
INSERT INTO `product_final_category` VALUES (10393, 1053, '5-8万', 1);
INSERT INTO `product_final_category` VALUES (10394, 1053, '8-12万', 1);
INSERT INTO `product_final_category` VALUES (10395, 1053, '12-18万', 1);
INSERT INTO `product_final_category` VALUES (10396, 1053, '18-25万', 1);
INSERT INTO `product_final_category` VALUES (10397, 1053, '25-40万', 1);
INSERT INTO `product_final_category` VALUES (10398, 1053, '40万以上', 1);
INSERT INTO `product_final_category` VALUES (10399, 1054, '大众', 1);
INSERT INTO `product_final_category` VALUES (10400, 1054, '日产', 1);
INSERT INTO `product_final_category` VALUES (10401, 1054, '丰田', 1);
INSERT INTO `product_final_category` VALUES (10402, 1054, '别克', 1);
INSERT INTO `product_final_category` VALUES (10403, 1054, '宝骏', 1);
INSERT INTO `product_final_category` VALUES (10404, 1054, '本田', 1);
INSERT INTO `product_final_category` VALUES (10405, 1055, '京东保养', 1);
INSERT INTO `product_final_category` VALUES (10406, 1055, '汽机', 1);
INSERT INTO `product_final_category` VALUES (10407, 1055, '油轮胎', 1);
INSERT INTO `product_final_category` VALUES (10408, 1055, '添加剂', 1);
INSERT INTO `product_final_category` VALUES (10409, 1055, '防冻液', 1);
INSERT INTO `product_final_category` VALUES (10410, 1055, '滤清器', 1);
INSERT INTO `product_final_category` VALUES (10411, 1055, '畫电池', 1);
INSERT INTO `product_final_category` VALUES (10412, 1055, '变速箱油', 1);
INSERT INTO `product_final_category` VALUES (10413, 1055, '旎雨刷', 1);
INSERT INTO `product_final_category` VALUES (10414, 1056, '座垫', 1);
INSERT INTO `product_final_category` VALUES (10415, 1056, '座套脚垫', 1);
INSERT INTO `product_final_category` VALUES (10416, 1056, '头枕', 1);
INSERT INTO `product_final_category` VALUES (10417, 1056, '腰靠', 1);
INSERT INTO `product_final_category` VALUES (10418, 1056, '方向盘套', 1);
INSERT INTO `product_final_category` VALUES (10419, 1056, '后备箱垫', 1);
INSERT INTO `product_final_category` VALUES (10420, 1056, '车载支架', 1);
INSERT INTO `product_final_category` VALUES (10421, 1056, '车钥匙扣', 1);
INSERT INTO `product_final_category` VALUES (10422, 1057, '胎压监测', 1);
INSERT INTO `product_final_category` VALUES (10423, 1057, '充气泵', 1);
INSERT INTO `product_final_category` VALUES (10424, 1057, '灭火器', 1);
INSERT INTO `product_final_category` VALUES (10425, 1057, '车载床', 1);
INSERT INTO `product_final_category` VALUES (10426, 1057, '应急救援', 1);
INSERT INTO `product_final_category` VALUES (10427, 1057, '防盗设备', 1);
INSERT INTO `product_final_category` VALUES (10428, 1057, '自驾野营', 1);
INSERT INTO `product_final_category` VALUES (10429, 1057, '摩托车', 1);
INSERT INTO `product_final_category` VALUES (10430, 1058, '保养维修', 1);
INSERT INTO `product_final_category` VALUES (10431, 1058, '洗车钣', 1);
INSERT INTO `product_final_category` VALUES (10432, 1058, '金喷漆', 1);
INSERT INTO `product_final_category` VALUES (10433, 1058, '清洗', 1);
INSERT INTO `product_final_category` VALUES (10434, 1058, '美容功能', 1);
INSERT INTO `product_final_category` VALUES (10435, 1058, '升级', 1);
INSERT INTO `product_final_category` VALUES (10436, 1058, '改装服务', 1);
INSERT INTO `product_final_category` VALUES (10437, 1059, ' NB', 1);
INSERT INTO `product_final_category` VALUES (10438, 1059, ' S ', 1);
INSERT INTO `product_final_category` VALUES (10439, 1059, 'M ', 1);
INSERT INTO `product_final_category` VALUES (10440, 1059, 'XL ', 1);
INSERT INTO `product_final_category` VALUES (10441, 1059, 'XXL', 1);
INSERT INTO `product_final_category` VALUES (10442, 1059, '拉拉裤', 1);
INSERT INTO `product_final_category` VALUES (10443, 1059, '成人尿裤', 1);
INSERT INTO `product_final_category` VALUES (10444, 1060, '宝宝护肤', 1);
INSERT INTO `product_final_category` VALUES (10445, 1060, '日常护理', 1);
INSERT INTO `product_final_category` VALUES (10446, 1060, '洗发沐浴', 1);
INSERT INTO `product_final_category` VALUES (10447, 1060, '洗澡用具', 1);
INSERT INTO `product_final_category` VALUES (10448, 1060, '洗衣液', 1);
INSERT INTO `product_final_category` VALUES (10449, 1060, '理发器', 1);
INSERT INTO `product_final_category` VALUES (10450, 1061, '防辐射服', 1);
INSERT INTO `product_final_category` VALUES (10451, 1061, '孕妈装', 1);
INSERT INTO `product_final_category` VALUES (10452, 1061, '孕妇护肤', 1);
INSERT INTO `product_final_category` VALUES (10453, 1061, '妈咪包', 1);
INSERT INTO `product_final_category` VALUES (10454, 1061, '护理产后', 1);
INSERT INTO `product_final_category` VALUES (10455, 1061, '塑身', 1);
INSERT INTO `product_final_category` VALUES (10456, 1061, '文胸/内裤', 1);
INSERT INTO `product_final_category` VALUES (10457, 1062, '1段', 1);
INSERT INTO `product_final_category` VALUES (10458, 1062, '2段', 1);
INSERT INTO `product_final_category` VALUES (10459, 1062, '3段', 1);
INSERT INTO `product_final_category` VALUES (10460, 1062, '4段', 1);
INSERT INTO `product_final_category` VALUES (10461, 1062, '孕妈奶粉', 1);
INSERT INTO `product_final_category` VALUES (10462, 1062, '特殊配方奶粉', 1);
INSERT INTO `product_final_category` VALUES (10463, 1062, '有机奶粉', 1);
INSERT INTO `product_final_category` VALUES (10464, 1063, '益智玩具', 1);
INSERT INTO `product_final_category` VALUES (10465, 1063, '健身/戏水', 1);
INSERT INTO `product_final_category` VALUES (10466, 1063, '橡皮泥', 1);
INSERT INTO `product_final_category` VALUES (10467, 1063, '芭比娃娃', 1);
INSERT INTO `product_final_category` VALUES (10468, 1063, '绘画', 1);
INSERT INTO `product_final_category` VALUES (10469, 1063, '积木拼装', 1);
INSERT INTO `product_final_category` VALUES (10470, 1063, '遥控', 1);
INSERT INTO `product_final_category` VALUES (10471, 1063, '电动毛线玩具', 1);
INSERT INTO `product_final_category` VALUES (10472, 1064, '钢琴', 1);
INSERT INTO `product_final_category` VALUES (10473, 1064, '电钢琴', 1);
INSERT INTO `product_final_category` VALUES (10474, 1064, '电子琴', 1);
INSERT INTO `product_final_category` VALUES (10475, 1064, '吉他', 1);
INSERT INTO `product_final_category` VALUES (10476, 1064, '打击乐器', 1);
INSERT INTO `product_final_category` VALUES (10477, 1064, '西洋管弦', 1);
INSERT INTO `product_final_category` VALUES (10478, 1064, '民族乐器', 1);
INSERT INTO `product_final_category` VALUES (10479, 1064, NULL, 1);
INSERT INTO `product_final_category` VALUES (10480, 1064, '乐器配件', 1);
INSERT INTO `product_final_category` VALUES (10481, 1065, '国内机票', 1);
INSERT INTO `product_final_category` VALUES (10482, 1065, '国际机票', 1);
INSERT INTO `product_final_category` VALUES (10483, 1065, '火车票', 1);
INSERT INTO `product_final_category` VALUES (10484, 1065, '机场服务', 1);
INSERT INTO `product_final_category` VALUES (10485, 1065, '机票套餐', 1);
INSERT INTO `product_final_category` VALUES (10486, 1066, '国内酒店', 1);
INSERT INTO `product_final_category` VALUES (10487, 1066, '国际酒店', 1);
INSERT INTO `product_final_category` VALUES (10488, 1066, '酒店套餐', 1);
INSERT INTO `product_final_category` VALUES (10489, 1066, '超值精选', 1);
INSERT INTO `product_final_category` VALUES (10490, 1067, '国内旅游', 1);
INSERT INTO `product_final_category` VALUES (10491, 1067, '出境旅游', 1);
INSERT INTO `product_final_category` VALUES (10492, 1067, '全球签证', 1);
INSERT INTO `product_final_category` VALUES (10493, 1067, '景点门票', 1);
INSERT INTO `product_final_category` VALUES (10494, 1067, '邮轮旅行', 1);

-- ----------------------------
-- Table structure for product_pageviews
-- ----------------------------
DROP TABLE IF EXISTS `product_pageviews`;
CREATE TABLE `product_pageviews`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `user_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browse_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_pageviews
-- ----------------------------
INSERT INTO `product_pageviews` VALUES (60, 10001, '175.8.61.126', NULL, '2020-05-20 11:16:56');
INSERT INTO `product_pageviews` VALUES (61, 10001, '116.162.2.61', NULL, '2020-05-20 11:17:32');
INSERT INTO `product_pageviews` VALUES (62, 10014, '116.162.2.61', NULL, '2020-05-20 11:18:56');

-- ----------------------------
-- Table structure for product_primary_category
-- ----------------------------
DROP TABLE IF EXISTS `product_primary_category`;
CREATE TABLE `product_primary_category`  (
  `product_primary_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_content_id` int(11) NULL DEFAULT NULL,
  `category_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` int(11) NULL DEFAULT 0,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_primary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_primary_category
-- ----------------------------
INSERT INTO `product_primary_category` VALUES (101, 10, '家用电器', 1, 1);
INSERT INTO `product_primary_category` VALUES (104, 11, '手机', 0, 1);
INSERT INTO `product_primary_category` VALUES (105, 11, '运营商', 0, 1);
INSERT INTO `product_primary_category` VALUES (106, 11, '数码', 1, 1);
INSERT INTO `product_primary_category` VALUES (107, 12, '电脑', 0, 1);
INSERT INTO `product_primary_category` VALUES (108, 12, '办公', 0, 1);
INSERT INTO `product_primary_category` VALUES (109, 12, '文具', 1, 1);
INSERT INTO `product_primary_category` VALUES (110, 13, '男装', 0, 1);
INSERT INTO `product_primary_category` VALUES (111, 13, '女装', 0, 1);
INSERT INTO `product_primary_category` VALUES (112, 13, '童装', 1, 1);
INSERT INTO `product_primary_category` VALUES (113, 14, '美装', 0, 1);
INSERT INTO `product_primary_category` VALUES (114, 14, '个人清洁', 0, 1);
INSERT INTO `product_primary_category` VALUES (115, 14, '宠物', 1, 1);
INSERT INTO `product_primary_category` VALUES (116, 15, '女鞋', 0, 1);
INSERT INTO `product_primary_category` VALUES (117, 15, '箱包', 0, 1);
INSERT INTO `product_primary_category` VALUES (118, 15, '钟表', 1, 1);
INSERT INTO `product_primary_category` VALUES (119, 16, '男鞋', 0, 1);
INSERT INTO `product_primary_category` VALUES (120, 16, '运动', 0, 1);
INSERT INTO `product_primary_category` VALUES (121, 16, '户外', 1, 1);
INSERT INTO `product_primary_category` VALUES (122, 17, '房产', 0, 1);
INSERT INTO `product_primary_category` VALUES (123, 17, '汽车', 0, 1);
INSERT INTO `product_primary_category` VALUES (124, 17, '汽车用品', 1, 1);
INSERT INTO `product_primary_category` VALUES (125, 18, '母婴', 0, 1);
INSERT INTO `product_primary_category` VALUES (126, 18, '奶粉', 0, 1);
INSERT INTO `product_primary_category` VALUES (127, 18, '玩具', 1, 1);
INSERT INTO `product_primary_category` VALUES (129, 19, '机票', 0, 1);
INSERT INTO `product_primary_category` VALUES (130, 19, '酒店', 0, 1);
INSERT INTO `product_primary_category` VALUES (131, 19, '旅行', 1, 1);
INSERT INTO `product_primary_category` VALUES (132, 20, 'd大大', 1, 0);

-- ----------------------------
-- Table structure for product_secondary_category
-- ----------------------------
DROP TABLE IF EXISTS `product_secondary_category`;
CREATE TABLE `product_secondary_category`  (
  `product_secondary_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_primary_id` int(11) NULL DEFAULT NULL,
  `secondary_content` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show_sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_secondary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1068 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_secondary_category
-- ----------------------------
INSERT INTO `product_secondary_category` VALUES (1001, 101, '电视', 1);
INSERT INTO `product_secondary_category` VALUES (1002, 101, '空调', 1);
INSERT INTO `product_secondary_category` VALUES (1003, 101, '洗衣机', 1);
INSERT INTO `product_secondary_category` VALUES (1004, 101, '冰箱', 1);
INSERT INTO `product_secondary_category` VALUES (1005, 101, '厨卫大电', 1);
INSERT INTO `product_secondary_category` VALUES (1006, 101, '厨房小电', 1);
INSERT INTO `product_secondary_category` VALUES (1007, 101, '生活电器', 1);
INSERT INTO `product_secondary_category` VALUES (1008, 101, '个人健康', 1);
INSERT INTO `product_secondary_category` VALUES (1009, 104, '手机通信', 1);
INSERT INTO `product_secondary_category` VALUES (1010, 104, '手机配件', 1);
INSERT INTO `product_secondary_category` VALUES (1011, 105, '运营商', 1);
INSERT INTO `product_secondary_category` VALUES (1012, 106, '摄影摄像', 1);
INSERT INTO `product_secondary_category` VALUES (1013, 106, '数码配件', 1);
INSERT INTO `product_secondary_category` VALUES (1014, 106, '影音娱乐', 1);
INSERT INTO `product_secondary_category` VALUES (1015, 106, '智能设备', 1);
INSERT INTO `product_secondary_category` VALUES (1016, 106, '电子教育', 1);
INSERT INTO `product_secondary_category` VALUES (1017, 107, '电脑整机', 1);
INSERT INTO `product_secondary_category` VALUES (1018, 107, '电脑配件', 1);
INSERT INTO `product_secondary_category` VALUES (1019, 107, '外设产品', 1);
INSERT INTO `product_secondary_category` VALUES (1020, 107, '游戏设备', 1);
INSERT INTO `product_secondary_category` VALUES (1021, 107, '网络产品', 1);
INSERT INTO `product_secondary_category` VALUES (1022, 108, '办公设备', 1);
INSERT INTO `product_secondary_category` VALUES (1023, 109, '文具', 1);
INSERT INTO `product_secondary_category` VALUES (1024, 109, '耗材', 1);
INSERT INTO `product_secondary_category` VALUES (1025, 110, '男装', 1);
INSERT INTO `product_secondary_category` VALUES (1026, 111, '女装', 1);
INSERT INTO `product_secondary_category` VALUES (1027, 111, '内衣', 1);
INSERT INTO `product_secondary_category` VALUES (1028, 111, '配饰', 1);
INSERT INTO `product_secondary_category` VALUES (1029, 112, '童装', 1);
INSERT INTO `product_secondary_category` VALUES (1030, 112, '童鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1031, 113, '面部护肤', 1);
INSERT INTO `product_secondary_category` VALUES (1032, 113, '香水彩妆', 1);
INSERT INTO `product_secondary_category` VALUES (1033, 114, '洗发护发', 1);
INSERT INTO `product_secondary_category` VALUES (1034, 114, '女性护理', 1);
INSERT INTO `product_secondary_category` VALUES (1035, 114, '纸品清洗', 1);
INSERT INTO `product_secondary_category` VALUES (1036, 114, '家庭清洁', 1);
INSERT INTO `product_secondary_category` VALUES (1037, 115, '宠物生活', 1);
INSERT INTO `product_secondary_category` VALUES (1038, 116, '时尚女鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1039, 117, '潮流女包', 1);
INSERT INTO `product_secondary_category` VALUES (1040, 117, '精品男包', 1);
INSERT INTO `product_secondary_category` VALUES (1041, 117, '功能箱包', 1);
INSERT INTO `product_secondary_category` VALUES (1042, 118, '钟表', 1);
INSERT INTO `product_secondary_category` VALUES (1043, 119, '流行男鞋', 1);
INSERT INTO `product_secondary_category` VALUES (1044, 119, '运动鞋包', 1);
INSERT INTO `product_secondary_category` VALUES (1045, 120, '运动服饰', 1);
INSERT INTO `product_secondary_category` VALUES (1046, 120, '健身训练', 1);
INSERT INTO `product_secondary_category` VALUES (1047, 120, '骑行运动', 1);
INSERT INTO `product_secondary_category` VALUES (1048, 120, '体育用品', 1);
INSERT INTO `product_secondary_category` VALUES (1049, 121, '户外鞋服', 1);
INSERT INTO `product_secondary_category` VALUES (1050, 121, '户外装备', 1);
INSERT INTO `product_secondary_category` VALUES (1051, 122, '房产', 1);
INSERT INTO `product_secondary_category` VALUES (1052, 123, '汽车车型', 1);
INSERT INTO `product_secondary_category` VALUES (1053, 123, '汽车价格', 1);
INSERT INTO `product_secondary_category` VALUES (1054, 123, '汽车品牌', 1);
INSERT INTO `product_secondary_category` VALUES (1055, 123, '维修保养', 1);
INSERT INTO `product_secondary_category` VALUES (1056, 124, '汽车装饰', 1);
INSERT INTO `product_secondary_category` VALUES (1057, 124, '安全自驾', 1);
INSERT INTO `product_secondary_category` VALUES (1058, 124, '汽车脶务', 1);
INSERT INTO `product_secondary_category` VALUES (1059, 125, '尿裤湿巾', 1);
INSERT INTO `product_secondary_category` VALUES (1060, 125, '护品', 1);
INSERT INTO `product_secondary_category` VALUES (1061, 125, '妈妈专区', 1);
INSERT INTO `product_secondary_category` VALUES (1062, 126, '奶粉', 1);
INSERT INTO `product_secondary_category` VALUES (1063, 127, '儿童玩具', 1);
INSERT INTO `product_secondary_category` VALUES (1064, 127, '乐器', 1);
INSERT INTO `product_secondary_category` VALUES (1065, 129, '交通出行', 1);
INSERT INTO `product_secondary_category` VALUES (1066, 130, '酒店预订', 1);
INSERT INTO `product_secondary_category` VALUES (1067, 131, '旅游度假', 1);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Favorite` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shoppingTrolley` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 表示热门  2表示不热门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (30, '10001', '1', '1', '1');
INSERT INTO `recommend` VALUES (31, '10002', '1', '1', '1');
INSERT INTO `recommend` VALUES (32, '10003', '1', '1', '1');
INSERT INTO `recommend` VALUES (33, '10010', '1', '1', '2');
INSERT INTO `recommend` VALUES (34, '10011', '1', '1', '1');
INSERT INTO `recommend` VALUES (35, '10012', '1', '1', '2');
INSERT INTO `recommend` VALUES (36, '10013', '1', '1', '1');
INSERT INTO `recommend` VALUES (37, '10014', '1', '1', '2');
INSERT INTO `recommend` VALUES (38, '10015', '1', '1', '1');
INSERT INTO `recommend` VALUES (39, '10016', '1', '1', '1');
INSERT INTO `recommend` VALUES (40, '10017', '1', '1', '2');
INSERT INTO `recommend` VALUES (41, '10008', '1', '1', '2');
INSERT INTO `recommend` VALUES (42, '10006', '1', '1', '2');
INSERT INTO `recommend` VALUES (43, '10007', '1', '1', '2');
INSERT INTO `recommend` VALUES (44, '10009', '1', '1', '2');
INSERT INTO `recommend` VALUES (45, '10004', '1', '1', '1');
INSERT INTO `recommend` VALUES (46, '10005', '1', '1', '2');
INSERT INTO `recommend` VALUES (47, '10018', '1', '1', '2');
INSERT INTO `recommend` VALUES (48, '10019', '1', '1', '2');
INSERT INTO `recommend` VALUES (49, '10020', '1', '1', '2');
INSERT INTO `recommend` VALUES (50, '10021', '1', '1', '1');
INSERT INTO `recommend` VALUES (51, '10022', '1', '1', '1');
INSERT INTO `recommend` VALUES (52, '10023', '1', '1', '1');
INSERT INTO `recommend` VALUES (53, '10024', '1', '1', '1');
INSERT INTO `recommend` VALUES (54, '10025', '1', '1', '1');
INSERT INTO `recommend` VALUES (55, '10026', '1', '1', '2');
INSERT INTO `recommend` VALUES (56, '10027', '1', '1', '2');
INSERT INTO `recommend` VALUES (57, '10028', '1', '1', '2');
INSERT INTO `recommend` VALUES (58, '10029', '1', '1', '2');
INSERT INTO `recommend` VALUES (59, '10030', '1', '1', '2');

-- ----------------------------
-- Table structure for secondComment
-- ----------------------------
DROP TABLE IF EXISTS `secondComment`;
CREATE TABLE `secondComment`  (
  `secondCommentId` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(255) NULL DEFAULT NULL,
  `textSecondComment` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `videoSecondComment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secondCommentTime` datetime(0) NULL DEFAULT NULL,
  `secondCommentVideoSign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`secondCommentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secondComment
-- ----------------------------

-- ----------------------------
-- Table structure for secondCommentImage
-- ----------------------------
DROP TABLE IF EXISTS `secondCommentImage`;
CREATE TABLE `secondCommentImage`  (
  `secondCommentId` int(11) NULL DEFAULT NULL,
  `secondCommentPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secondCommentImage
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingCart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingCart`;
CREATE TABLE `shoppingCart`  (
  `shoppingCartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(150) NULL DEFAULT NULL,
  `productDeploy` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`shoppingCartId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3210 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoppingCart
-- ----------------------------
INSERT INTO `shoppingCart` VALUES (628, '8b616d638682406f96acd3b54dfbc723', 10001, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (701, '8b616d638682406f96acd3b54dfbc723', 10015, '白色 ', 99);
INSERT INTO `shoppingCart` VALUES (3174, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '白色 优惠套餐一 ', 3);
INSERT INTO `shoppingCart` VALUES (3175, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10018, '028#滋润珊瑚红 ', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (52, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小白i', '7cwP8Rhq61a70gE+gsoW/w==', '1', 't45eesyhFshmLr/zH6A2Dw==', 'AkbKyPZy0QJ0j1YkhIin1STD2hfGcrPgwh81SZwPpoU=', ' http://img.isdfmk.xyz/f92b9f8f372e445fb6564cdd57aa3c3e?t=1589858421', 'DM', '2018-3-1');
INSERT INTO `user` VALUES (54, '0497326c70a447ceb815aa23743daeab', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'fedMKLH76FIJ74Tc9t1rkQ==', NULL, 'http://img.isdfmk.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (55, '7c9fdfa3177042a08766aed29e7de6cd', 'MuGe', '++OrO3KQIS+TzybCOsQhcw==', '1', '7/nilpLOcaBpX6+BnSD+SQ==', 'NOCyNow6lg6D1Wibn5x0WCnRmd72oX+WfuO6bjCodHY=', ' http://img.isdfmk.xyz/7c9fdfa3177042a08766aed29e7de6cd?t=1589952718', 'DM', '2019-4-15');
INSERT INTO `user` VALUES (59, 'd52e8cc4c9a34b839c74a20d1685f04c', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'Cx1wSRDN2c0lmnkbDmMQyA==', NULL, 'http://img.isdfmk.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (60, '311e2fca19b944668631da49d5c1dbb2', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'wha358tH5pru/1cDld3/lA==', NULL, 'http://img.isdfmk.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');
INSERT INTO `user` VALUES (61, '451a7d05126a4e58a74846983282267d', 'smallProfit', '++OrO3KQIS+TzybCOsQhcw==', '1', 'Jbn4oawYdnYGzFUG6EhS1A==', NULL, 'http://img.isdfmk.xyz//000000001312c10c0000000002255f0a?t=1578145613938', 'DM', '0-0-0');

-- ----------------------------
-- Table structure for userAddress
-- ----------------------------
DROP TABLE IF EXISTS `userAddress`;
CREATE TABLE `userAddress`  (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areas` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailedAddress` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaCodes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaults` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdelete` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`addressId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userAddress
-- ----------------------------
INSERT INTO `userAddress` VALUES (147, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'sadasdasd', '18599988525', '2252821162@qq.com', '11,1101,110101,110101001,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (148, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '北京市 市辖区 东城区 东华门街道 ', 'sadas', '18598814121', '32252@qq.com', '11,1101,110101,110101001,', '0', 'asd', 0);
INSERT INTO `userAddress` VALUES (149, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'dasd', '18599988544', '2252@qq.com', '12,1201,120101,120101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (150, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'ff', '天津市 市辖区 和平区 劝业场街道 ', 'd156', '18598814121', '2252@qq.com', '12,1201,120101,120101001,', '0', 'ad', 0);
INSERT INTO `userAddress` VALUES (151, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'asdasd', '北京市 市辖区 东城区 东华门街道 ', 'asdasd', '18598814421', 'sdasd@qq.com', '11,1101,110101,110101001,', '0', 'adas', 0);
INSERT INTO `userAddress` VALUES (152, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'faf', '山西省 大同市 平城区 南关街道 ', 'asdas', '18598855555', '2252@qq.com', '14,1402,140213,140213001,', '0', 'dsa', 0);
INSERT INTO `userAddress` VALUES (153, '7c9fdfa3177042a08766aed29e7de6cd', '彭浩', '天津市 市辖区 南开区 鼓楼街道 ', '递四方速递', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120104,120104002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (154, '7c9fdfa3177042a08766aed29e7de6cd', '三大法师', '山西省 大同市 云州区 西坪镇 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140215,140215100,', '0', '速度还是大', 0);
INSERT INTO `userAddress` VALUES (155, '7c9fdfa3177042a08766aed29e7de6cd', '三个和尚的', '山西省 大同市 云冈区 永定庄街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214004,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (156, 'f92b9f8f372e445fb6564cdd57aa3c3e', '芳芳', '北京市 市辖区 东城区 东华门街道 ', 'asdsad', '18598814121', '225252@qq.com', '11,1101,110101,110101001,', '0', 'sad', 0);
INSERT INTO `userAddress` VALUES (157, '7c9fdfa3177042a08766aed29e7de6cd', '订单号', '天津市 市辖区 河北区 望海楼街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '12,1201,120105,120105002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (158, '7c9fdfa3177042a08766aed29e7de6cd', '很多事', '山西省 阳泉市 矿区 沙坪街道 ', '三大法师', '15367885410', 'liuxianliangli@foxmail.com', '14,1403,140303,140303005,', '0', '闺蜜家', 0);
INSERT INTO `userAddress` VALUES (159, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递', '河北省 唐山市 古冶区 古冶街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130204,130204003,', '0', '公司', 0);
INSERT INTO `userAddress` VALUES (160, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (161, '7c9fdfa3177042a08766aed29e7de6cd', '是多喝点水', '内蒙古自治区 包头市 白云鄂博矿区 通阳道街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150206,150206002,', '0', '学校', 0);
INSERT INTO `userAddress` VALUES (162, '7c9fdfa3177042a08766aed29e7de6cd', '是多喝点水', '河北省 唐山市 开平区 税务庄街道 ', '速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205003,', '0', '是', 0);
INSERT INTO `userAddress` VALUES (163, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '河北省 唐山市 开平区 开平街道 ', '三大法师第三方第三方的是何等是非得失和GV的非官方的速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '13,1302,130205,130205002,', '0', '对对对', 0);
INSERT INTO `userAddress` VALUES (164, '7c9fdfa3177042a08766aed29e7de6cd', '速度还是大', '山西省 大同市 云冈区 新平旺街道 ', '三大法师速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '14,1402,140214,140214002,', '1', '学校', 1);
INSERT INTO `userAddress` VALUES (165, '7c9fdfa3177042a08766aed29e7de6cd', '递四方速递水电费', '内蒙古自治区 包头市 石拐区 石拐街道 ', '水电费水电费离开速度还是大', '15367885410', 'liuxianliangli@foxmail.com', '15,1502,150205,150205001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (166, '7c9fdfa3177042a08766aed29e7de6cd', '的发送发送的', '山西省 太原市 杏花岭区 巨轮街道 ', '水电费水电费', '15367885410', 'liuxianliangli@foxmail.com', '14,1401,140107,140107001,', '0', '公司', 1);
INSERT INTO `userAddress` VALUES (167, 'f92b9f8f372e445fb6564cdd57aa3c3e', '方鸢', '河北省 唐山市 路南区 学院南路街道 ', 'dasdas', '18598814121', '2252821162@qq.com', '13,1302,130202,130202001,', '0', '闺蜜家', 1);
INSERT INTO `userAddress` VALUES (168, 'f92b9f8f372e445fb6564cdd57aa3c3e', '小芳', '北京市 市辖区 东城区 东华门街道 ', '湖南科技职业学院', '18598814121', '2252821162@qq.com', '11,1101,110101,110101001,', '1', '家', 1);

-- ----------------------------
-- Table structure for userConsumptionRecords
-- ----------------------------
DROP TABLE IF EXISTS `userConsumptionRecords`;
CREATE TABLE `userConsumptionRecords`  (
  `consumptiomId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentStatus` int(11) NULL DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `senderId` int(11) NULL DEFAULT NULL,
  `paymentTime` datetime(0) NULL DEFAULT NULL,
  `paymentAmount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`consumptiomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3661 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userConsumptionRecords
-- ----------------------------
INSERT INTO `userConsumptionRecords` VALUES (3650, '1589948114618100001', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-20 12:15:21', '5999.00');
INSERT INTO `userConsumptionRecords` VALUES (3651, '1589948265055100002', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-20 12:17:50', '758.00');
INSERT INTO `userConsumptionRecords` VALUES (3652, '1589948336801100003', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-20 12:19:04', '758.00');
INSERT INTO `userConsumptionRecords` VALUES (3653, '1589948466459100004', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-20 12:21:13', '2898.00');
INSERT INTO `userConsumptionRecords` VALUES (3654, '1589948556726100005', 'f92b9f8f372e445fb6564cdd57aa3c3e', 1, NULL, 3, '2020-05-20 12:22:42', '5999.00');
INSERT INTO `userConsumptionRecords` VALUES (3655, '1589955922052100007', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 14:26:10', '140.00');
INSERT INTO `userConsumptionRecords` VALUES (3656, '1589956158884100007', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 14:29:54', '14490.00');
INSERT INTO `userConsumptionRecords` VALUES (3657, '1589956331812100008', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 14:32:40', '11592.00');
INSERT INTO `userConsumptionRecords` VALUES (3658, '1589956494721100008', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 14:35:23', '100.00');
INSERT INTO `userConsumptionRecords` VALUES (3659, '1589957131873100009', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 14:46:15', '10493.00');
INSERT INTO `userConsumptionRecords` VALUES (3660, '1589962956539100009', '7c9fdfa3177042a08766aed29e7de6cd', 1, NULL, 3, '2020-05-20 16:22:42', '5999.00');

-- ----------------------------
-- Table structure for userEvaluation
-- ----------------------------
DROP TABLE IF EXISTS `userEvaluation`;
CREATE TABLE `userEvaluation`  (
  `evaluationId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluationTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`evaluationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userEvaluation
-- ----------------------------
INSERT INTO `userEvaluation` VALUES (127, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10026, 'true', '2020-04-19 16:27:11');
INSERT INTO `userEvaluation` VALUES (168, 'f92b9f8f372e445fb6564cdd57aa3c3e', 0, 'true', '2020-04-22 11:18:44');
INSERT INTO `userEvaluation` VALUES (169, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10007, 'true', '2020-04-22 11:19:16');
INSERT INTO `userEvaluation` VALUES (170, '7c9fdfa3177042a08766aed29e7de6cd', 10002, 'true', '2020-05-16 16:01:16');

-- ----------------------------
-- Table structure for userFootprint
-- ----------------------------
DROP TABLE IF EXISTS `userFootprint`;
CREATE TABLE `userFootprint`  (
  `footprintId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `footprintTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`footprintId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 356 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userFootprint
-- ----------------------------
INSERT INTO `userFootprint` VALUES (334, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, '2020-05-19 11:12:33');
INSERT INTO `userFootprint` VALUES (335, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-05-19 19:38:06');
INSERT INTO `userFootprint` VALUES (336, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-05-19 19:04:40');
INSERT INTO `userFootprint` VALUES (337, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '2020-05-19 20:30:41');
INSERT INTO `userFootprint` VALUES (338, '7c9fdfa3177042a08766aed29e7de6cd', 10003, '2020-05-19 20:30:55');
INSERT INTO `userFootprint` VALUES (339, '7c9fdfa3177042a08766aed29e7de6cd', 10014, '2020-05-19 20:56:37');
INSERT INTO `userFootprint` VALUES (340, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10002, '2020-05-20 12:22:33');
INSERT INTO `userFootprint` VALUES (341, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10001, '2020-05-20 14:06:38');
INSERT INTO `userFootprint` VALUES (342, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10014, '2020-05-20 12:21:05');
INSERT INTO `userFootprint` VALUES (343, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10013, '2020-05-20 12:06:29');
INSERT INTO `userFootprint` VALUES (344, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10003, '2020-05-20 12:18:55');
INSERT INTO `userFootprint` VALUES (345, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10005, '2020-05-20 11:52:45');
INSERT INTO `userFootprint` VALUES (346, '7c9fdfa3177042a08766aed29e7de6cd', 10009, '2020-05-20 13:34:37');
INSERT INTO `userFootprint` VALUES (347, '7c9fdfa3177042a08766aed29e7de6cd', 10003, '2020-05-20 05:36:52');
INSERT INTO `userFootprint` VALUES (348, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10010, '2020-05-20 14:06:52');
INSERT INTO `userFootprint` VALUES (349, 'f92b9f8f372e445fb6564cdd57aa3c3e', 10016, '2020-05-20 14:07:17');
INSERT INTO `userFootprint` VALUES (350, '7c9fdfa3177042a08766aed29e7de6cd', 10015, '2020-05-20 14:34:47');
INSERT INTO `userFootprint` VALUES (351, '7c9fdfa3177042a08766aed29e7de6cd', 10014, '2020-05-20 06:32:05');
INSERT INTO `userFootprint` VALUES (352, '7c9fdfa3177042a08766aed29e7de6cd', 10006, '2020-05-20 06:45:26');
INSERT INTO `userFootprint` VALUES (353, '7c9fdfa3177042a08766aed29e7de6cd', 10007, '2020-05-20 06:46:23');
INSERT INTO `userFootprint` VALUES (354, '7c9fdfa3177042a08766aed29e7de6cd', 10001, '2020-05-20 18:03:13');
INSERT INTO `userFootprint` VALUES (355, '7c9fdfa3177042a08766aed29e7de6cd', 10002, '2020-05-20 16:27:09');

-- ----------------------------
-- Table structure for userMembe
-- ----------------------------
DROP TABLE IF EXISTS `userMembe`;
CREATE TABLE `userMembe`  (
  `membeId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integral` int(11) NULL DEFAULT 0,
  `coupon` int(11) NULL DEFAULT 0,
  `membershipCard` int(11) NULL DEFAULT 0,
  `growthValue` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`membeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userMembe
-- ----------------------------
INSERT INTO `userMembe` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', 'xrmy8iJ9JWKUvt6kolJuOA==', 98000, 5, 2, 1540);
INSERT INTO `userMembe` VALUES (2, '0497326c70a447ceb815aa23743daeab', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (3, '9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (4, 'f92b9f8f372e445fb6564cdd57aa3c3e', 'sSKeGdO1UfoHDx9bh0qG8w==', 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (5, '836fa03c4977499a9361f986672dea7f', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (6, '058656382d454f2cb40340934812d5c4', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (7, 'fd113e77699c4d21ab50acaf88e7e141', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (8, 'd52e8cc4c9a34b839c74a20d1685f04c', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (9, '311e2fca19b944668631da49d5c1dbb2', NULL, 0, 0, 0, 0);
INSERT INTO `userMembe` VALUES (10, '451a7d05126a4e58a74846983282267d', NULL, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for userOrder
-- ----------------------------
DROP TABLE IF EXISTS `userOrder`;
CREATE TABLE `userOrder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentWay` int(11) NULL DEFAULT NULL,
  `deliveryWay` int(255) NULL DEFAULT NULL,
  `orderTime` datetime(0) NULL DEFAULT NULL,
  `deliveryTime` datetime(0) NULL DEFAULT NULL,
  `paymentTime` datetime(0) NULL DEFAULT NULL,
  `submitTime` datetime(0) NULL DEFAULT NULL,
  `orderNote` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderTotal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderState` int(11) NULL DEFAULT 1,
  `changeQuantity` int(11) NULL DEFAULT 0,
  `isDelete` int(11) NULL DEFAULT 0,
  `sign` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 873 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userOrder
-- ----------------------------
INSERT INTO `userOrder` VALUES (859, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948114618100001', 1, 1, '2020-05-20 12:15:14', '2020-05-23 12:15:15', '2020-05-20 12:15:21', NULL, '', '5999.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (860, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948265055100002', 1, 1, '2020-05-20 12:17:45', '2020-05-23 12:17:45', '2020-05-20 12:17:49', NULL, '', '758.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (861, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948336801100003', 1, 1, '2020-05-20 12:18:56', '2020-05-23 12:18:57', '2020-05-20 12:19:04', NULL, '', '758.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (862, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948466459100004', 1, 1, '2020-05-20 12:21:06', '2020-05-23 12:21:06', '2020-05-20 12:21:13', NULL, '', '2898.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (863, 'f92b9f8f372e445fb6564cdd57aa3c3e', '1589948556726100005', 1, 1, '2020-05-20 12:22:36', '2020-05-23 12:22:37', '2020-05-20 12:22:41', NULL, '', '5999.0', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (864, '7c9fdfa3177042a08766aed29e7de6cd', '1589952921024100006', 1, 1, '2020-05-20 13:35:21', '2020-05-23 13:35:21', '2020-05-20 13:35:28', NULL, '', '238495.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (865, '7c9fdfa3177042a08766aed29e7de6cd', '1589953018592100007', 1, 1, '2020-05-20 05:36:58', '2020-05-23 05:36:59', '2020-05-20 05:37:05', NULL, '', '3032.00', 3, 0, 0, 0);
INSERT INTO `userOrder` VALUES (866, '7c9fdfa3177042a08766aed29e7de6cd', '1589955376786100007', 2, 1, '2020-05-20 06:16:17', '2020-05-23 06:16:18', NULL, NULL, '', '120.00', 1, 0, 0, 0);
INSERT INTO `userOrder` VALUES (867, '7c9fdfa3177042a08766aed29e7de6cd', '1589955922052100007', 2, 1, '2020-05-20 06:25:22', '2020-05-23 06:25:23', '2020-05-20 14:26:10', NULL, '', '140.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (868, '7c9fdfa3177042a08766aed29e7de6cd', '1589956158884100007', 2, 1, '2020-05-20 14:29:19', '2020-05-23 14:29:19', '2020-05-20 14:29:54', NULL, '', '14490.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (869, '7c9fdfa3177042a08766aed29e7de6cd', '1589956331812100008', 2, 1, '2020-05-20 06:32:12', '2020-05-23 06:32:13', '2020-05-20 14:32:40', NULL, '', '11592.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (870, '7c9fdfa3177042a08766aed29e7de6cd', '1589956494721100008', 2, 1, '2020-05-20 14:34:54', '2020-05-23 14:34:55', '2020-05-20 14:35:23', NULL, '', '100.00', 3, 0, 0, 0);
INSERT INTO `userOrder` VALUES (871, '7c9fdfa3177042a08766aed29e7de6cd', '1589957131873100009', 2, 1, '2020-05-20 06:45:32', '2020-05-23 06:45:33', '2020-05-20 14:46:15', NULL, '', '10493.00', 2, 0, 0, 0);
INSERT INTO `userOrder` VALUES (872, '7c9fdfa3177042a08766aed29e7de6cd', '1589962956539100009', 1, 1, '2020-05-20 16:22:36', '2020-05-23 16:22:36', '2020-05-20 16:22:42', NULL, '', '5999.0', 3, 0, 0, 0);

-- ----------------------------
-- Table structure for userPassword
-- ----------------------------
DROP TABLE IF EXISTS `userPassword`;
CREATE TABLE `userPassword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymentPassword` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `faceRecognition` int(11) NULL DEFAULT 0,
  `faceToken` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userPassword
-- ----------------------------
INSERT INTO `userPassword` VALUES (1, '7c9fdfa3177042a08766aed29e7de6cd', '++OrO3KQIS+TzybCOsQhcw==', 0, NULL);
INSERT INTO `userPassword` VALUES (2, '9c1e482cfabf48f7ab64baee9bd778fd', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (3, 'f92b9f8f372e445fb6564cdd57aa3c3e', '/NSW7XPKATxkLBTZjWbLLA==', 0, NULL);
INSERT INTO `userPassword` VALUES (4, '836fa03c4977499a9361f986672dea7f', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (5, '058656382d454f2cb40340934812d5c4', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (6, 'fd113e77699c4d21ab50acaf88e7e141', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (7, 'd52e8cc4c9a34b839c74a20d1685f04c', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (8, '311e2fca19b944668631da49d5c1dbb2', NULL, 0, NULL);
INSERT INTO `userPassword` VALUES (9, '451a7d05126a4e58a74846983282267d', NULL, 0, NULL);

-- ----------------------------
-- Function structure for mycat_seq_currval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_currval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_currval`(seq_name VARCHAR(50))
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN DECLARE retval VARCHAR(64);
        SET retval="-999999999,null";  
        SELECT CONCAT(CAST(current_value AS CHAR),",",CAST(increment AS CHAR) ) INTO retval 
          FROM MYCAT_SEQUENCE WHERE NAME = seq_name;  
        RETURN retval ; 
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mycat_seq_nextval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_nextval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_nextval`(seq_name VARCHAR(50))
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN UPDATE MYCAT_SEQUENCE  
                 SET current_value = current_value + increment 
                  WHERE NAME = seq_name;  
         RETURN mycat_seq_currval(seq_name);  
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mycat_seq_setval
-- ----------------------------
DROP FUNCTION IF EXISTS `mycat_seq_setval`;
delimiter ;;
CREATE FUNCTION `mycat_seq_setval`(seq_name VARCHAR(50), VALUE INTEGER)
 RETURNS varchar(64) CHARSET utf8
  DETERMINISTIC
BEGIN UPDATE MYCAT_SEQUENCE  
                   SET current_value = VALUE  
                   WHERE NAME = seq_name;  
         RETURN mycat_seq_currval(seq_name);  
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
