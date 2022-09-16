/*
 Navicat Premium Data Transfer

 Source Server         : localhost - MySQL8.0
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : db_test

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 15/07/2021 09:43:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c`  (
  `CNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PC` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CNO`) USING BTREE,
  INDEX `PC`(`PC`) USING BTREE,
  CONSTRAINT `c_ibfk_1` FOREIGN KEY (`PC`) REFERENCES `c` (`CNO`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES ('c01', '高等数学', NULL);
INSERT INTO `c` VALUES ('c02', '数据结构', NULL);
INSERT INTO `c` VALUES ('c03', '操作系统', 'c02');
INSERT INTO `c` VALUES ('c04', '数据库', 'c03');
INSERT INTO `c` VALUES ('c05', '作战指挥', 'c04');
INSERT INTO `c` VALUES ('c06', '离散数学', 'c01');
INSERT INTO `c` VALUES ('c07', '信息安全', 'c06');
INSERT INTO `c` VALUES ('c08', '大学英语', NULL);
INSERT INTO `c` VALUES ('c09', '商贸英语', 'c08');
INSERT INTO `c` VALUES ('c10', '大学物理', NULL);
INSERT INTO `c` VALUES ('c11', '网络', NULL);
INSERT INTO `c` VALUES ('c12', 'kc_Design', NULL);
INSERT INTO `c` VALUES ('c13', 'kcDesign', NULL);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `number` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '商品1号', 2);
INSERT INTO `message` VALUES (2, '商品2号', 22);
INSERT INTO `message` VALUES (3, '商品3号', 23);
INSERT INTO `message` VALUES (4, '商品4号', 24);
INSERT INTO `message` VALUES (5, '商品5号', 25);
INSERT INTO `message` VALUES (6, '商品6号', 26);
INSERT INTO `message` VALUES (7, '商品7号', 27);
INSERT INTO `message` VALUES (8, '商品8号', 28);
INSERT INTO `message` VALUES (12, '商品9号', 9);

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `SNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SN` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SD` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SB` datetime(0) NULL DEFAULT NULL,
  `SEX` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SNO`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES ('s01', '王玲', '计算机', '1990-06-30 00:00:00', '女');
INSERT INTO `s` VALUES ('s02', '李渊', '计算机', '1990-03-23 00:00:00', '男');
INSERT INTO `s` VALUES ('s03', '罗军', '计算机', '1991-08-12 00:00:00', '男');
INSERT INTO `s` VALUES ('s04', '赵泽', '计算机', '1993-09-12 00:00:00', '女');
INSERT INTO `s` VALUES ('s05', '许若', '指挥自动化', '1990-06-27 00:00:00', '男');
INSERT INTO `s` VALUES ('s06', '王仙华', '指挥自动化', '1991-05-20 00:00:00', '男');
INSERT INTO `s` VALUES ('s07', '朱祝', '指挥自动化', '1994-07-10 00:00:00', '女');
INSERT INTO `s` VALUES ('s08', '王明', '数学', '1991-10-03 00:00:00', '男');
INSERT INTO `s` VALUES ('s09', '王学之', '物理', '1992-01-01 00:00:00', '男');
INSERT INTO `s` VALUES ('s10', '吴谦', '指挥自动化', '1991-03-25 00:00:00', '女');
INSERT INTO `s` VALUES ('s11', '崔雪', '数学', '1990-07-11 00:00:00', '女');
INSERT INTO `s` VALUES ('s12', '李想', '英语', '1992-08-05 00:00:00', '男');
INSERT INTO `s` VALUES ('s13', '季然', '数学', '1992-09-30 00:00:00', '女');
INSERT INTO `s` VALUES ('s14', '顾梦莎', '英语', '1990-04-19 00:00:00', '女');
INSERT INTO `s` VALUES ('s15', '费汉萌', '计算机', '1989-08-19 00:00:00', '男');
INSERT INTO `s` VALUES ('s16', '华庭', '数学', '1990-10-01 00:00:00', '男');
INSERT INTO `s` VALUES ('s17', '亨利', '英语', '1991-12-12 00:00:00', '男');
INSERT INTO `s` VALUES ('s18', '李爱民', '英语', '1988-03-18 00:00:00', '男');
INSERT INTO `s` VALUES ('S20', '陈浩', '计算机', '1990-10-15 00:00:00', '男');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `SNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GRADE` decimal(4, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`SNO`, `CNO`) USING BTREE,
  INDEX `CNO`(`CNO`) USING BTREE,
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`SNO`) REFERENCES `s` (`SNO`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`CNO`) REFERENCES `c` (`CNO`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('s01', 'c01', 80.0);
INSERT INTO `sc` VALUES ('s01', 'c02', 98.0);
INSERT INTO `sc` VALUES ('s01', 'c03', 85.0);
INSERT INTO `sc` VALUES ('s01', 'c04', 78.0);
INSERT INTO `sc` VALUES ('s01', 'c07', 89.0);
INSERT INTO `sc` VALUES ('s02', 'c02', 80.0);
INSERT INTO `sc` VALUES ('s02', 'c11', 80.0);
INSERT INTO `sc` VALUES ('s03', 'c01', 90.0);
INSERT INTO `sc` VALUES ('s03', 'c02', 80.0);
INSERT INTO `sc` VALUES ('s03', 'c04', 85.0);
INSERT INTO `sc` VALUES ('s04', 'c01', 80.0);
INSERT INTO `sc` VALUES ('s04', 'c02', NULL);
INSERT INTO `sc` VALUES ('s04', 'c06', 90.0);
INSERT INTO `sc` VALUES ('s04', 'c11', 87.0);
INSERT INTO `sc` VALUES ('s05', 'c03', 79.5);
INSERT INTO `sc` VALUES ('s05', 'c05', 88.0);
INSERT INTO `sc` VALUES ('s05', 'c07', 90.0);
INSERT INTO `sc` VALUES ('s06', 'c03', 88.0);
INSERT INTO `sc` VALUES ('s07', 'c11', 90.0);
INSERT INTO `sc` VALUES ('s08', 'c01', 90.0);
INSERT INTO `sc` VALUES ('s08', 'c02', 95.0);
INSERT INTO `sc` VALUES ('s09', 'c10', 90.0);
INSERT INTO `sc` VALUES ('s09', 'c12', NULL);
INSERT INTO `sc` VALUES ('s10', 'c05', 77.0);
INSERT INTO `sc` VALUES ('s11', 'c01', 90.0);
INSERT INTO `sc` VALUES ('s12', 'c08', 88.0);
INSERT INTO `sc` VALUES ('s12', 'c09', 90.0);
INSERT INTO `sc` VALUES ('s20', 'c01', NULL);

-- ----------------------------
-- Table structure for sc_temp
-- ----------------------------
DROP TABLE IF EXISTS `sc_temp`;
CREATE TABLE `sc_temp`  (
  `SNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CNO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `GRADE` decimal(4, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`SNO`, `CNO`) USING BTREE,
  INDEX `CNO`(`CNO`) USING BTREE,
  CONSTRAINT `sc_temp_ibfk_1` FOREIGN KEY (`SNO`) REFERENCES `s` (`SNO`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sc_temp_ibfk_2` FOREIGN KEY (`CNO`) REFERENCES `c` (`CNO`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc_temp
-- ----------------------------
INSERT INTO `sc_temp` VALUES ('s01', 'c01', 80.0);
INSERT INTO `sc_temp` VALUES ('s01', 'c02', 98.0);
INSERT INTO `sc_temp` VALUES ('s01', 'c03', 85.0);
INSERT INTO `sc_temp` VALUES ('s01', 'c04', 78.0);
INSERT INTO `sc_temp` VALUES ('s01', 'c07', 89.0);
INSERT INTO `sc_temp` VALUES ('s02', 'c02', 80.0);
INSERT INTO `sc_temp` VALUES ('s02', 'c11', 80.0);
INSERT INTO `sc_temp` VALUES ('s03', 'c01', 90.0);
INSERT INTO `sc_temp` VALUES ('s03', 'c02', 80.0);
INSERT INTO `sc_temp` VALUES ('s03', 'c04', 85.0);
INSERT INTO `sc_temp` VALUES ('s04', 'c01', 80.0);
INSERT INTO `sc_temp` VALUES ('s04', 'c02', NULL);
INSERT INTO `sc_temp` VALUES ('s04', 'c06', 90.0);
INSERT INTO `sc_temp` VALUES ('s04', 'c11', 87.0);
INSERT INTO `sc_temp` VALUES ('s05', 'c03', 79.5);
INSERT INTO `sc_temp` VALUES ('s05', 'c05', 88.0);
INSERT INTO `sc_temp` VALUES ('s05', 'c07', 90.0);
INSERT INTO `sc_temp` VALUES ('s06', 'c03', 88.0);
INSERT INTO `sc_temp` VALUES ('s07', 'c11', 90.0);
INSERT INTO `sc_temp` VALUES ('s08', 'c01', 90.0);
INSERT INTO `sc_temp` VALUES ('s08', 'c02', 95.0);
INSERT INTO `sc_temp` VALUES ('s09', 'c10', 90.0);
INSERT INTO `sc_temp` VALUES ('s09', 'c12', NULL);
INSERT INTO `sc_temp` VALUES ('s10', 'c05', 77.0);
INSERT INTO `sc_temp` VALUES ('s11', 'c01', 90.0);
INSERT INTO `sc_temp` VALUES ('s12', 'c08', 88.0);
INSERT INTO `sc_temp` VALUES ('s12', 'c09', 90.0);
INSERT INTO `sc_temp` VALUES ('s20', 'c01', NULL);

SET FOREIGN_KEY_CHECKS = 1;
