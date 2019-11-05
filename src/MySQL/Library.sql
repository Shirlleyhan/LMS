/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 29/10/2019 22:06:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '书本ID',
  `bookname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `price` int(11) NULL DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本类目',
  `store` int(11) NULL DEFAULT NULL,
  `bookdesc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '书籍数据库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('000001', 'Java核心技术', '凯 S. 霍斯特曼', '机械工业出版社', 119, '编程类', 20, '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000002', 'C++PrimaerPlus', 'Stephen Prata', '中国邮电出版社', 99, '编程类', 15, '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000003', '算法竞赛入门经典', '刘汝佳', '清华大学出版社', 50, '编程类', 15, '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');
INSERT INTO `book` VALUES ('000004', '概率论与数理统计', '盛骤 谢式千 潘承毅', '高等教育出版社', 38, '数学类', 15, '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '1');
INSERT INTO `book` VALUES ('000005', '数据结构(C语言版)', '严蔚敏 吴伟民', '清华大学出版社', 29, '编程类', 8, '《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。', '3');

-- ----------------------------
-- Table structure for iolog
-- ----------------------------
DROP TABLE IF EXISTS `iolog`;
CREATE TABLE `iolog`  (
  `bookid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service` int(11) NULL DEFAULT NULL,
  `borrowtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrowday` int(11) NULL DEFAULT NULL,
  `complete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`borrowtime`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iolog
-- ----------------------------
INSERT INTO `iolog` VALUES ('000001', '1', -1, '2018年01月18日 17时46分24秒', 14, 1);
INSERT INTO `iolog` VALUES ('000001', '1', -1, '2018年01月18日 17时46分37秒', 7, 1);
INSERT INTO `iolog` VALUES ('000001', '1', 1, '2018年01月18日 17时48分43秒', NULL, 1);
INSERT INTO `iolog` VALUES ('000001', '1', 1, '2018年01月18日 17时49分03秒', NULL, 1);

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '读者用户名',
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者密码',
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者姓名',
  `sex` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者性别',
  `status` int(11) NULL DEFAULT NULL COMMENT '读者状态(1.正常 -1.黑名单)',
  `mail` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者邮箱',
  `tel` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '读者电话',
  `grade` int(11) NULL DEFAULT -1 COMMENT '读者年级',
  `classnum` int(11) NULL DEFAULT -1 COMMENT '读者班级',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '读者表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('1', '123456', '测试', '测试', 1, '测试', '测试', 1, 1);

-- ----------------------------
-- Table structure for tempadd
-- ----------------------------
DROP TABLE IF EXISTS `tempadd`;
CREATE TABLE `tempadd`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `price` int(11) NULL DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书本类目',
  `store` int(11) NULL DEFAULT NULL,
  `bookdesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名（工号）',
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1');
INSERT INTO `user` VALUES ('11', '11', '11');
INSERT INTO `user` VALUES ('2', '2', '2');
INSERT INTO `user` VALUES ('3', '3', '3');
INSERT INTO `user` VALUES ('34', '34', '34');
INSERT INTO `user` VALUES ('4', '4', '4');
INSERT INTO `user` VALUES ('5', '5', '5');
INSERT INTO `user` VALUES ('8', '8', '8');
INSERT INTO `user` VALUES ('9', '9', '9');
INSERT INTO `user` VALUES ('cy', 'ilovehy', '971301263@qq.com');
INSERT INTO `user` VALUES ('han', '123456', 'shirlleyhan@126.com');
INSERT INTO `user` VALUES ('hy', '1226', '1621081433@qq.com');
INSERT INTO `user` VALUES ('传统', '1234', '87896');
INSERT INTO `user` VALUES ('参数', '111', '111111111');
INSERT INTO `user` VALUES ('韩阳', '1226', '162108433@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
