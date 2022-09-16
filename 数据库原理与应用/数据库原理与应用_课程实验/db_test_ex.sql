/*
 Navicat Premium Data Transfer

 Source Server         : localhost - MySQL8.0
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : db_test_ex

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 15/07/2021 09:44:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `Cno` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PreCno` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`Cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('C1', '数据结构', NULL, 4);
INSERT INTO `courses` VALUES ('C2', '数据库原理', 'C1', 4);
INSERT INTO `courses` VALUES ('C3', '大型数据库', 'C2', 3);
INSERT INTO `courses` VALUES ('C4', '高尔夫', NULL, 1);

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `Sno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cno` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Grade` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`Sno`, `Cno`) USING BTREE,
  INDEX `Cno`(`Cno`) USING BTREE,
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `students` (`Sno`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `courses` (`Cno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('0602001', 'C1', 61);
INSERT INTO `sc` VALUES ('0602001', 'C2', 77);
INSERT INTO `sc` VALUES ('0602001', 'C3', 88);
INSERT INTO `sc` VALUES ('0602002', 'C1', NULL);
INSERT INTO `sc` VALUES ('0602002', 'C2', 66);
INSERT INTO `sc` VALUES ('0701002', 'C3', 78);
INSERT INTO `sc` VALUES ('0701003', 'C3', 87);

-- ----------------------------
-- Table structure for studentbak1
-- ----------------------------
DROP TABLE IF EXISTS `studentbak1`;
CREATE TABLE `studentbak1`  (
  `Sno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Sdept` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentbak1
-- ----------------------------
INSERT INTO `studentbak1` VALUES ('0602001', '钟耀华', '计算机');
INSERT INTO `studentbak1` VALUES ('0602002', '吴佳硕', '计算机');
INSERT INTO `studentbak1` VALUES ('0602003', '吴纯斌', '计算机');

-- ----------------------------
-- Table structure for studentbak2
-- ----------------------------
DROP TABLE IF EXISTS `studentbak2`;
CREATE TABLE `studentbak2`  (
  `Sno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentbak2
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `Sno` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Ssex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '男',
  `Sbirthday` date NULL DEFAULT NULL,
  `Sdept` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Memo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('0601001', '赵林', '男', '1985-09-08', '机电', '足球');
INSERT INTO `students` VALUES ('0601002', '张修雨', '男', NULL, NULL, NULL);
INSERT INTO `students` VALUES ('0602001', '钟耀华', '男', '1987-05-01', '计算机', '优秀毕业生');
INSERT INTO `students` VALUES ('0602002', '吴佳硕', '女', '1987-03-24', '计算机', '爱好:音乐');
INSERT INTO `students` VALUES ('0602003', '吴纯斌', '男', '1988-07-01', '计算机', NULL);
INSERT INTO `students` VALUES ('0701001', '王腾飞', '男', '1988-05-04', '机电', '爱好:音乐');
INSERT INTO `students` VALUES ('0701002', '林师微', '女', '1987-04-03', '机电', '爱好:体育');
INSERT INTO `students` VALUES ('0701003', '李乐怡', '女', '1986-03-03', '机电', NULL);
INSERT INTO `students` VALUES ('0703001', '李奇', '男', '1988-09-17', '工商管理', NULL);

SET FOREIGN_KEY_CHECKS = 1;
