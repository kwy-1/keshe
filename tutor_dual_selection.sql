/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : tutor_dual_selection

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 25/12/2024 14:40:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ano` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `sex` char(2) NOT NULL,
  `tel` char(11) DEFAULT NULL,
  `typeno` int NOT NULL,
  PRIMARY KEY (`ano`),
  CONSTRAINT `ck_admin_sex` CHECK ((`sex` in (_utf8mb4'男',_utf8mb4'女'))),
  CONSTRAINT `ck_admin_typeno` CHECK ((`typeno` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('admin01', 'admin01', '肖仁贵', '男', '15632564871', 1);
INSERT INTO `admin` VALUES ('admin02', 'admin02', '李明达', '男', '15585463512', 1);
INSERT INTO `admin` VALUES ('admin03', 'admin03', '王东明', '女', '18345876935', 1);
INSERT INTO `admin` VALUES ('supadmin', 'supadmin', '张迈封', '男', '18356423587', 0);
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dno` varchar(10) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `ano` varchar(10) NOT NULL,
  PRIMARY KEY (`dno`),
  KEY `fk_dept_admin` (`ano`),
  CONSTRAINT `fk_dept_admin` FOREIGN KEY (`ano`) REFERENCES `admin` (`ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('dept01', '计算机科学与技术学院', 'admin01');
INSERT INTO `dept` VALUES ('dept02', '数理学院', 'admin02');
INSERT INTO `dept` VALUES ('dept03', '外国语学院', 'admin03');
COMMIT;

-- ----------------------------
-- Table structure for loginfo
-- ----------------------------
DROP TABLE IF EXISTS `loginfo`;
CREATE TABLE `loginfo` (
  `account` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `logintime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of loginfo
-- ----------------------------
BEGIN;
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 03:53:24');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 03:54:12');
INSERT INTO `loginfo` VALUES ('admin03', '王东明', '2024-12-22 03:55:58');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 03:56:43');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 04:06:43');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 04:16:53');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 04:21:00');
INSERT INTO `loginfo` VALUES ('t20071005', '陈颢天', '2024-12-22 10:53:49');
INSERT INTO `loginfo` VALUES ('t20071005', '陈颢天', '2024-12-22 10:53:49');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 11:00:06');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 11:00:50');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 11:02:11');
INSERT INTO `loginfo` VALUES ('20171432', '林晨', '2024-12-22 11:04:03');
INSERT INTO `loginfo` VALUES ('20171402', '陆昱帆', '2024-12-22 11:05:34');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 11:07:13');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 11:09:03');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 11:25:08');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 11:26:36');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 11:28:02');
INSERT INTO `loginfo` VALUES ('t20071006', '李擎宇', '2024-12-22 11:29:04');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 11:32:41');
INSERT INTO `loginfo` VALUES ('20241112', '20241112', '2024-12-22 11:34:10');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 11:36:10');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 11:38:26');
INSERT INTO `loginfo` VALUES ('t20071001', '高鑫磊', '2024-12-22 11:39:11');
INSERT INTO `loginfo` VALUES ('20171401', '潘藩', '2024-12-22 11:51:39');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 11:53:07');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 11:57:53');
INSERT INTO `loginfo` VALUES ('admin02', '李明达', '2024-12-22 11:59:21');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 12:00:16');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 12:08:51');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-22 12:09:44');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 12:12:14');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 12:13:10');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 12:13:38');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 12:42:35');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 12:45:37');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:06:55');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:07:56');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:08:52');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:09:48');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:12:15');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 13:13:04');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 13:13:54');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 13:15:25');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 13:15:50');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 13:39:37');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 13:39:52');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 14:55:52');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 14:59:12');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 14:59:40');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 15:09:36');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 15:11:03');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 15:11:57');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 16:37:00');
INSERT INTO `loginfo` VALUES ('20240101', '张四', '2024-12-22 16:38:04');
INSERT INTO `loginfo` VALUES ('t20071022', '凌菲', '2024-12-22 16:39:16');
INSERT INTO `loginfo` VALUES ('20240101', '张四', '2024-12-22 16:39:54');
INSERT INTO `loginfo` VALUES ('20240101', '张四', '2024-12-22 16:42:16');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 16:46:20');
INSERT INTO `loginfo` VALUES ('t20071022', '凌菲', '2024-12-22 16:46:46');
INSERT INTO `loginfo` VALUES ('20240101', '张四', '2024-12-22 16:47:31');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 16:48:09');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 16:49:03');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-22 16:49:32');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-22 16:50:35');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-22 16:52:19');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 16:53:01');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 16:53:27');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 16:54:58');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 16:56:18');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 16:57:08');
INSERT INTO `loginfo` VALUES ('t20071011', '赵楷瑞', '2024-12-22 16:57:55');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:00:56');
INSERT INTO `loginfo` VALUES ('t20071011', '赵楷瑞', '2024-12-22 17:04:10');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:05:06');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:07:50');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:11:14');
INSERT INTO `loginfo` VALUES ('t20071011', '赵楷瑞', '2024-12-22 17:22:59');
INSERT INTO `loginfo` VALUES ('t20071011', '赵楷瑞', '2024-12-22 17:25:24');
INSERT INTO `loginfo` VALUES ('t20071011', '赵楷瑞', '2024-12-22 17:26:01');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 17:27:56');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 17:28:21');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 17:35:13');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:35:32');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 17:36:29');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 17:37:25');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 17:38:13');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 17:38:54');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:39:06');
INSERT INTO `loginfo` VALUES ('t20071010', '张绍辉', '2024-12-22 17:39:43');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 17:41:31');
INSERT INTO `loginfo` VALUES ('admin02', '李明达', '2024-12-22 17:41:59');
INSERT INTO `loginfo` VALUES ('admin03', '王东明', '2024-12-22 17:42:14');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:43:43');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:44:26');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:45:34');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:52:07');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:56:51');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 17:58:16');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:01:23');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:01:47');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:06:22');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:07:36');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 18:08:17');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:08:41');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:10:54');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:13:09');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:14:53');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:17:16');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-22 18:18:10');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:20:36');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-22 18:25:34');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 18:26:04');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:26:29');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:26:48');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:27:25');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:28:29');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 18:34:29');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:34:47');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 18:35:12');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:35:23');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:51:57');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:55:53');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 18:56:21');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 22:44:16');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 22:44:34');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-22 23:45:38');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 23:45:55');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 23:46:17');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 23:46:36');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 23:49:47');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-22 23:50:05');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-22 23:50:28');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-22 23:58:22');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-23 13:57:50');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 13:58:09');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-23 22:19:02');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 22:19:43');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:26:42');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:37:37');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-23 22:37:58');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:38:16');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-23 22:42:13');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:42:48');
INSERT INTO `loginfo` VALUES ('20241215', '王五', '2024-12-23 22:43:43');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:43:58');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:47:39');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:49:41');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:52:30');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 22:54:54');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:55:16');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:56:32');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 22:56:49');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 22:57:10');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:57:35');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 22:59:34');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:08:15');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-23 23:08:41');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:09:11');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:12:12');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:12:24');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:18:03');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:18:31');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:19:48');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:20:03');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:22:10');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:22:17');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:25:25');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:25:58');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-23 23:26:35');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-23 23:26:47');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-24 10:33:50');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-24 11:17:40');
INSERT INTO `loginfo` VALUES ('20241212', '张三', '2024-12-24 11:18:39');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-24 11:19:37');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-24 11:25:39');
INSERT INTO `loginfo` VALUES ('t20071009', '王泽洋', '2024-12-24 11:26:16');
INSERT INTO `loginfo` VALUES ('20241213', '李四', '2024-12-24 11:28:11');
INSERT INTO `loginfo` VALUES ('admin01', '肖仁贵', '2024-12-24 11:29:09');
INSERT INTO `loginfo` VALUES ('supadmin', '张迈封', '2024-12-24 11:32:20');
COMMIT;

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `mno` varchar(10) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `dno` varchar(10) NOT NULL,
  PRIMARY KEY (`mno`),
  KEY `fk_major_dept` (`dno`),
  CONSTRAINT `fk_major_dept` FOREIGN KEY (`dno`) REFERENCES `dept` (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of major
-- ----------------------------
BEGIN;
INSERT INTO `major` VALUES ('major01', '软件工程', 'dept01');
INSERT INTO `major` VALUES ('major02', '网络工程', 'dept01');
INSERT INTO `major` VALUES ('major03', '计算机科学与技术', 'dept01');
INSERT INTO `major` VALUES ('major04', '应用数学', 'dept02');
INSERT INTO `major` VALUES ('major05', '应用物理', 'dept02');
INSERT INTO `major` VALUES ('major06', '英语', 'dept03');
INSERT INTO `major` VALUES ('major07', '法语', 'dept03');
COMMIT;

-- ----------------------------
-- Table structure for opentime
-- ----------------------------
DROP TABLE IF EXISTS `opentime`;
CREATE TABLE `opentime` (
  `starttime` date NOT NULL,
  `endtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of opentime
-- ----------------------------
BEGIN;
INSERT INTO `opentime` VALUES ('2024-12-22', '2025-02-19');
COMMIT;

-- ----------------------------
-- Table structure for selection
-- ----------------------------
DROP TABLE IF EXISTS `selection`;
CREATE TABLE `selection` (
  `sno` varchar(10) NOT NULL,
  `tno` varchar(10) NOT NULL,
  PRIMARY KEY (`sno`,`tno`),
  KEY `fk_selection_tutor` (`tno`),
  CONSTRAINT `fk_selection_student` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`),
  CONSTRAINT `fk_selection_tutor` FOREIGN KEY (`tno`) REFERENCES `tutor` (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of selection
-- ----------------------------
BEGIN;
INSERT INTO `selection` VALUES ('20241213', 't20071009');
INSERT INTO `selection` VALUES ('20241215', 't20071009');
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `sex` char(2) NOT NULL,
  `birth` date NOT NULL,
  `gpa` decimal(4,3) NOT NULL,
  `tel` char(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `description` text,
  `mno` varchar(10) NOT NULL,
  `tno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  KEY `fk_student_major` (`mno`),
  KEY `fk_student_tutor` (`tno`),
  CONSTRAINT `fk_student_major` FOREIGN KEY (`mno`) REFERENCES `major` (`mno`),
  CONSTRAINT `fk_student_tutor` FOREIGN KEY (`tno`) REFERENCES `tutor` (`tno`),
  CONSTRAINT `ck_student_sex` CHECK ((`sex` in (_utf8mb4'男',_utf8mb4'女')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('20241212', '20241212', '张三', '男', '1998-02-22', 3.240, '17801235464', '1427204057@qq.com', NULL, 'major02', NULL);
INSERT INTO `student` VALUES ('20241213', '20241213', '李四', '男', '2007-01-22', 3.240, '17801235464', '1427204057@qq.com', NULL, 'major03', 't20071009');
INSERT INTO `student` VALUES ('20241215', '20241215', '王五', '男', '2024-12-22', 3.400, '17801235495', '1427204057@qq.com', NULL, 'major03', 't20071009');
COMMIT;

-- ----------------------------
-- Table structure for tutor
-- ----------------------------
DROP TABLE IF EXISTS `tutor`;
CREATE TABLE `tutor` (
  `tno` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tname` varchar(30) NOT NULL,
  `sex` char(2) NOT NULL,
  `birth` date NOT NULL,
  `title` varchar(5) NOT NULL,
  `tel` char(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `description` text,
  `ability` int NOT NULL DEFAULT '3',
  `mno` varchar(10) NOT NULL,
  PRIMARY KEY (`tno`),
  KEY `fk_tutor_major` (`mno`),
  CONSTRAINT `fk_tutor_major` FOREIGN KEY (`mno`) REFERENCES `major` (`mno`),
  CONSTRAINT `ck_tutor_sex` CHECK ((`sex` in (_utf8mb4'男',_utf8mb4'女'))),
  CONSTRAINT `ck_tutor_title` CHECK ((`title` in (_utf8mb4'副教授',_utf8mb4'教授')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tutor
-- ----------------------------
BEGIN;
INSERT INTO `tutor` VALUES ('t20071001', 't20071001', '高鑫磊', '男', '1975-06-14', '教授', '18317063312', 'gaoxinlei@126.com', '我叫高鑫磊！！', 3, 'major01');
INSERT INTO `tutor` VALUES ('t20071002', 't20071002', '李浩宇', '男', '1975-03-14', '教授', '18317064563', 'lihaoyu@126.com', '我叫李浩宇！！', 3, 'major01');
INSERT INTO `tutor` VALUES ('t20071003', 't20071003', '王子羡', '女', '1978-01-04', '教授', '18317064521', 'wangzixian@126.com', '我叫王子羡！！', 3, 'major01');
INSERT INTO `tutor` VALUES ('t20071004', 't20071004', '裴修杰', '男', '1979-05-14', '副教授', '18317065814', 'peixiujie@126.com', '我叫裴修杰', 3, 'major01');
INSERT INTO `tutor` VALUES ('t20071005', 't20071005', '陈颢天', '男', '1975-05-14', '教授', '18317068546', 'chensir@126.com', '我叫陈颢天', 3, 'major02');
INSERT INTO `tutor` VALUES ('t20071006', 't20071006', '李擎宇', '男', '1975-06-14', '教授', '18317063312', 'liqingyu@126.com', '我叫李擎宇', 3, 'major02');
INSERT INTO `tutor` VALUES ('t20071007', 't20071007', '欧皓轩', '男', '1975-08-14', '教授', '18317063548', 'ouhaoxuan@126.com', '我叫欧皓轩', 3, 'major02');
INSERT INTO `tutor` VALUES ('t20071008', 't20071008', '林庆云', '女', '1975-04-18', '教授', '18317064583', 'linqingyun@126.com', '我叫林庆云', 3, 'major02');
INSERT INTO `tutor` VALUES ('t20071009', 't20071009', '王泽洋', '女', '1975-06-14', '教授', '18317042563', 'wangzeyang@126.com', '我叫王泽洋', 3, 'major03');
INSERT INTO `tutor` VALUES ('t20071010', 't20071010', '张绍辉', '男', '1974-07-14', '教授', '18317053641', 'zhangshaohui@126.com', '我叫张绍辉', 3, 'major03');
INSERT INTO `tutor` VALUES ('t20071011', 't20071011', '赵楷瑞', '男', '1978-04-20', '教授', '18317061547', 'zhaokairui@126.com', '我叫赵楷瑞', 3, 'major03');
INSERT INTO `tutor` VALUES ('t20071012', 't20071012', '陈越彬', '男', '1978-02-20', '教授', '18317061554', 'chneyuebin@126.com', '我叫陈越彬', 3, 'major04');
INSERT INTO `tutor` VALUES ('t20071013', 't20071013', '李伟诚', '男', '1978-04-24', '教授', '18317061257', 'liweicheng@126.com', '我叫李伟诚', 3, 'major04');
INSERT INTO `tutor` VALUES ('t20071014', 't20071014', '郭士达', '男', '1978-04-13', '教授', '18317601547', 'guoshida@126.com', '我叫郭士达', 3, 'major04');
INSERT INTO `tutor` VALUES ('t20071015', 't20071015', '张信芳', '女', '1978-04-01', '教授', '18317014547', 'zhangxinfang@126.com', '我叫张信芳', 3, 'major04');
INSERT INTO `tutor` VALUES ('t20071016', 't20071016', '王俊驰', '男', '1980-03-20', '教授', '18317461545', 'wangjunchi@126.com', '我叫王俊驰', 3, 'major05');
INSERT INTO `tutor` VALUES ('t20071017', 't20071017', '高扬波', '男', '1981-05-20', '教授', '18317061585', 'gaoyangbo@126.com', '我叫高扬波', 3, 'major05');
INSERT INTO `tutor` VALUES ('t20071018', 't20071018', '李鸿涛', '男', '1983-04-10', '教授', '18357031557', 'lihongtao@126.com', '我叫李鸿涛', 3, 'major05');
INSERT INTO `tutor` VALUES ('t20071019', 't20071019', '王韵寒', '女', '1984-04-20', '教授', '18317064735', 'wangyunhan@126.com', '我叫王韵寒', 3, 'major06');
INSERT INTO `tutor` VALUES ('t20071020', 't20071020', '李欣妍', '女', '1983-07-20', '教授', '18317066534', 'lixinyan@126.com', '我叫李欣妍', 3, 'major06');
INSERT INTO `tutor` VALUES ('t20071021', 't20071021', '吴瑾萱', '女', '1984-03-22', '教授', '18317061846', 'wujinxuan@126.com', '我叫吴瑾萱', 3, 'major06');
INSERT INTO `tutor` VALUES ('t20071022', 't20071022', '凌菲', '女', '1984-10-20', '教授', '18317054321', 'lingfei@126.com', '我叫凌菲', 3, 'major07');
INSERT INTO `tutor` VALUES ('t20071023', 't20071023', '秦绍玮', '男', '1983-04-29', '教授', '18317086541', 'qinshaowei@126.com', '我叫秦绍玮', 3, 'major07');
COMMIT;

-- ----------------------------
-- Table structure for voluntary
-- ----------------------------
DROP TABLE IF EXISTS `voluntary`;
CREATE TABLE `voluntary` (
  `sno` varchar(10) NOT NULL,
  `tno` varchar(10) NOT NULL,
  `status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of voluntary
-- ----------------------------
BEGIN;-- 1. 学生志愿填报状态视图
CREATE VIEW student_voluntary_status AS
SELECT
    s.sno AS '学号',
        s.sname AS '学生姓名',
        m.mname AS '专业',
        t.tname AS '志愿导师',
        t.title AS '导师职称',
        CASE v.status
            WHEN 0 THEN '待处理'
            WHEN 1 THEN '已录用'
            WHEN 2 THEN '已拒绝'
            END AS '志愿状态'
FROM student s
         LEFT JOIN voluntary v ON s.sno = v.sno
         LEFT JOIN tutor t ON v.tno = t.tno
         LEFT JOIN major m ON s.mno = m.mno;

-- 2. 学生综合信息视图
CREATE VIEW student_info_complete AS
SELECT
    s.sno AS '学号',
        s.sname AS '姓名',
        s.sex AS '性别',
        s.gpa AS '绩点',
        m.mname AS '专业',
        d.dname AS '学院',
        t.tname AS '指导教师',
        t.title AS '导师职称'
FROM student s
         LEFT JOIN major m ON s.mno = m.mno
         LEFT JOIN dept d ON m.dno = d.dno
         LEFT JOIN tutor t ON s.tno = t.tno;

-- 3. 学生选导统计视图
CREATE VIEW student_selection_stats AS
SELECT
    d.dname AS '学院',
        m.mname AS '专业',
        COUNT(s.sno) AS '学生总数',
        SUM(CASE WHEN s.tno IS NOT NULL THEN 1 ELSE 0 END) AS '已选导师人数',
        SUM(CASE WHEN s.tno IS NULL THEN 1 ELSE 0 END) AS '未选导师人数'
FROM student s
         JOIN major m ON s.mno = m.mno
         JOIN dept d ON m.dno = d.dno
GROUP BY d.dname, m.mname;
2. 导师业务线视图
-- 1. 导师工作量视图
CREATE VIEW tutor_workload AS
SELECT
    t.tno AS '工号',
        t.tname AS '导师姓名',
        t.title AS '职称',
        d.dname AS '所属学院',
        COUNT(s.sno) AS '当前指导学生数',
        t.ability AS '最大指导人数',
        t.ability - COUNT(s.sno) AS '剩余可指导人数'
FROM tutor t
         LEFT JOIN student s ON t.tno = s.tno
         JOIN major m ON t.mno = m.mno
         JOIN dept d ON m.dno = d.dno
GROUP BY t.tno;

-- 2. 导师志愿申请视图
CREATE VIEW tutor_voluntary_requests AS
SELECT
    t.tno AS '工号',
        t.tname AS '导师姓名',
        s.sno AS '申请学生学号',
        s.sname AS '申请学生姓名',
        s.gpa AS '学生绩点',
        m.mname AS '学生专业',
        CASE v.status
            WHEN 0 THEN '待处理'
            WHEN 1 THEN '已接受'
            WHEN 2 THEN '已拒绝'
            END AS '申请状态'
FROM tutor t
         JOIN voluntary v ON t.tno = v.tno
         JOIN student s ON v.sno = s.sno
         JOIN major m ON s.mno = m.mno;

-- 3. 导师指导情况视图
CREATE VIEW tutor_guidance_status AS
SELECT
    t.tno AS '工号',
        t.tname AS '导师姓名',
        d.dname AS '所属学院',
        m.mname AS '所属专业',
        s.sno AS '学生学号',
        s.sname AS '学生姓名',
        s.gpa AS '学生绩点',
        s.tel AS '联系电话',
        s.email AS '邮箱'
FROM tutor t
         LEFT JOIN student s ON t.tno = s.tno
         JOIN major m ON t.mno = m.mno
         JOIN dept d ON m.dno = d.dno;
3.管理员业务线视图
-- 1. 系统整体统计视图
CREATE VIEW system_statistics AS
SELECT
    d.dname AS '学院',
        COUNT(DISTINCT t.tno) AS '导师总数',
        SUM(t.ability) AS '总指导容量',
        COUNT(DISTINCT s.sno) AS '学生总数',
        COUNT(DISTINCT CASE WHEN s.tno IS NOT NULL THEN s.sno END) AS '已匹配学生数',
        COUNT(DISTINCT v.sno) AS '已提交志愿学生数'
FROM dept d
         LEFT JOIN major m ON d.dno = m.dno
         LEFT JOIN tutor t ON m.mno = t.mno
         LEFT JOIN student s ON m.mno = s.mno
         LEFT JOIN voluntary v ON s.sno = v.sno
GROUP BY d.dname;

-- 2. 管理员权限范围视图
CREATE VIEW admin_management_scope AS
SELECT
    a.ano AS '管理员编号',
        a.aname AS '管理员姓名',
        d.dname AS '管理学院',
        COUNT(DISTINCT m.mno) AS '管理专业数',
        COUNT(DISTINCT t.tno) AS '管理导师数',
        COUNT(DISTINCT s.sno) AS '管理学生数'
FROM admin a
         LEFT JOIN dept d ON a.ano = d.ano
         LEFT JOIN major m ON d.dno = m.dno
         LEFT JOIN tutor t ON m.mno = t.mno
         LEFT JOIN student s ON m.mno = s.mno
GROUP BY a.ano;

-- 3. 匹配进度监控视图
CREATE VIEW matching_progress AS
SELECT
    d.dname AS '学院',
        m.mname AS '专业',
        COUNT(DISTINCT s.sno) AS '学生总数',
        COUNT(DISTINCT CASE WHEN v.status = 0 THEN v.sno END) AS '待处理志愿数',
        COUNT(DISTINCT CASE WHEN v.status = 1 THEN v.sno END) AS '已接受志愿数',
        COUNT(DISTINCT CASE WHEN v.status = 2 THEN v.sno END) AS '已拒绝志愿数',
        COUNT(DISTINCT CASE WHEN s.tno IS NULL THEN s.sno END) AS '未匹配学生数'
FROM dept d
         JOIN major m ON d.dno = m.dno
         LEFT JOIN student s ON m.mno = s.mno
         LEFT JOIN voluntary v ON s.sno = v.sno
GROUP BY d.dname, m.mname;

结合系统的使用需要，针对每个业务线编写1个存储过程或触发器。
1. 学生志愿业务线 - 存储过程
-- 学生提交志愿的存储过程
DELIMITER //
CREATE PROCEDURE submit_voluntary(
    IN p_sno VARCHAR(10),    -- 学生学号
    IN p_tno1 VARCHAR(10),   -- 第一志愿导师编号
    IN p_tno2 VARCHAR(10),   -- 第二志愿导师编号
    IN p_tno3 VARCHAR(10),   -- 第三志愿导师编号
    OUT p_result INT,        -- 返回结果：1成功，-1导师已满，-2重复选择
    OUT p_message VARCHAR(100) -- 返回消息
)
BEGIN
    DECLARE v_count INT;
    DECLARE v_major VARCHAR(10);

    -- 开启事务
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
SET p_result = -99;
        SET p_message = '系统错误';
END;

START TRANSACTION;

-- 检查是否有重复选择
IF p_tno1 = p_tno2 OR p_tno1 = p_tno3 OR p_tno2 = p_tno3 THEN
        SET p_result = -2;
        SET p_message = '存在重复选择的导师';
ROLLBACK;
ELSE
        -- 删除原有志愿
DELETE FROM voluntary WHERE sno = p_sno;

-- 添加新志愿
INSERT INTO voluntary(sno, tno, status) VALUES
                                            (p_sno, p_tno1, 0),
                                            (p_sno, p_tno2, 0),
                                            (p_sno, p_tno3, 0);

SET p_result = 1;
        SET p_message = '志愿提交成功';
COMMIT;
END IF;
END //
DELIMITER ;
2.导师业务线 - 触发器
-- 导师接受学生志愿后的触发器
DELIMITER //
CREATE TRIGGER after_tutor_accept_student
    AFTER UPDATE ON voluntary
    FOR EACH ROW
BEGIN
    -- 当志愿状态从待处理(0)变为接受(1)时
    IF NEW.status = 1 AND OLD.status = 0 THEN
        -- 更新学生表中的导师编号
    UPDATE student SET tno = NEW.tno
    WHERE sno = NEW.sno;

    -- 将该学生的其他志愿状态设置为拒绝(2)
    UPDATE voluntary
    SET status = 2
    WHERE sno = NEW.sno
      AND tno != NEW.tno
        AND status = 0;

    -- 记录选择关系
    INSERT INTO selection(sno, tno)
    VALUES(NEW.sno, NEW.tno);
END IF;
END //
DELIMITER ;
3.管理员业务线 - 存储过程
-- 管理员分配导师的存储过程
DELIMITER //
CREATE PROCEDURE admin_allot_tutor(
    IN p_admin_no VARCHAR(10),  -- 管理员编号
    IN p_sno VARCHAR(10),       -- 学生学号
    IN p_tno VARCHAR(10),       -- 导师编号
    OUT p_result INT,           -- 返回结果
    OUT p_message VARCHAR(100)  -- 返回消息
)
BEGIN
    DECLARE v_student_count INT;
    DECLARE v_max_students INT;
    DECLARE v_admin_type INT;
    DECLARE v_dept_no VARCHAR(10);

    -- 检查管理员权限
SELECT typeno INTO v_admin_type
FROM admin
WHERE ano = p_admin_no;

IF v_admin_type IS NULL THEN
        SET p_result = -1;
        SET p_message = '管理员不存在';
        RETURN;
END IF;

    -- 如果是普通管理员，检查是否有权限操作该学生
    IF v_admin_type = 1 THEN
SELECT d.dno INTO v_dept_no
FROM student s
         JOIN major m ON s.mno = m.mno
         JOIN dept d ON m.dno = d.dno
WHERE s.sno = p_sno;

IF v_dept_no NOT IN (
            SELECT dno FROM dept WHERE ano = p_admin_no
        ) THEN
            SET p_result = -2;
            SET p_message = '无权操作该学生';
            RETURN;
END IF;
END IF;

    -- 检查导师容量
SELECT COUNT(*) INTO v_student_count
FROM student
WHERE tno = p_tno;
SELECT ability INTO v_max_students
FROM tutor
WHERE tno = p_tno;
IF v_student_count >= v_max_students THEN
        SET p_result = -3;
        SET p_message = '导师已达到最大指导人数';
        RETURN;
END IF;
    -- 开始事务处理
START TRANSACTION;
-- 更新学生的导师
UPDATE student
SET tno = p_tno
WHERE sno = p_sno;
-- 添加选择关系
INSERT INTO selection(sno, tno)
VALUES(p_sno, p_tno);
-- 清除该学生的所有志愿记录
DELETE FROM voluntary
WHERE sno = p_sno;
COMMIT;
SET p_result = 1;
    SET p_message = '分配成功';
    -- 记录操作日志
INSERT INTO loginfo(account, name, logintime)
SELECT p_admin_no, aname, NOW()
FROM admin
WHERE ano = p_admin_no;
END //
DELIMITER ;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


