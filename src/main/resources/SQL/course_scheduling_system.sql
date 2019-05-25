/*
 Navicat MySQL Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : course_scheduling_system

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 25/05/2019 20:07:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `className` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentNumber` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, '2015010101', '计算机科学与技术1班', 48);
INSERT INTO `class_info` VALUES (2, '2015010201', '网络工程1班', 53);
INSERT INTO `class_info` VALUES (3, '2015010301', '物联网1班', 47);
INSERT INTO `class_info` VALUES (4, '2015010302', '物联网2班', 45);
INSERT INTO `class_info` VALUES (5, '2015020101', '汉语言文学1班', 36);
INSERT INTO `class_info` VALUES (6, '2015020102', '汉语言文学2班', 40);
INSERT INTO `class_info` VALUES (7, '2015020201', '汉语言非师1班', 55);
INSERT INTO `class_info` VALUES (8, '2015020301', '中文教育1班', 46);
INSERT INTO `class_info` VALUES (9, '2015030101', '商务英语1班', 37);
INSERT INTO `class_info` VALUES (10, '2015030201', '师范英语1班', 46);
INSERT INTO `class_info` VALUES (11, '2015040101', '环境工程1班', 32);
INSERT INTO `class_info` VALUES (12, '2015040102', '环境工程2班', 35);
INSERT INTO `class_info` VALUES (13, '2015040201', '环境检测1班', 37);
INSERT INTO `class_info` VALUES (14, '2015050101', '临床1班', 51);
INSERT INTO `class_info` VALUES (15, '2015050102', '临床2班', 49);
INSERT INTO `class_info` VALUES (16, '2015050103', '临床3班', 54);
INSERT INTO `class_info` VALUES (17, '2015050104', '临床4班', 53);
INSERT INTO `class_info` VALUES (18, '2015060101', '针灸1班', 32);
INSERT INTO `class_info` VALUES (19, '2015060201', '康复1班', 33);
INSERT INTO `class_info` VALUES (20, '2015070101', '音乐表演1班', 44);
INSERT INTO `class_info` VALUES (21, '2015070201', '音乐教育1班', 45);
INSERT INTO `class_info` VALUES (22, '2015080101', '产品设计1班', 43);
INSERT INTO `class_info` VALUES (23, '2015080201', '美术教育1班', 45);
INSERT INTO `class_info` VALUES (24, '2015090101', '社会工作1班', 34);
INSERT INTO `class_info` VALUES (25, '2015090201', '法学教育1班', 32);
INSERT INTO `class_info` VALUES (26, '2015100101', '应用数学1班', 45);
INSERT INTO `class_info` VALUES (27, '2015100201', '数学教育1班', 43);
INSERT INTO `class_info` VALUES (28, '2015110101', '经济管理1班', 45);
INSERT INTO `class_info` VALUES (29, '2015110101', '经济管理2班', 46);
INSERT INTO `class_info` VALUES (30, '2015120101', '药物试剂1班', 48);
INSERT INTO `class_info` VALUES (31, '2015130101', '自动化工程1班', 52);
INSERT INTO `class_info` VALUES (32, '2015130102', '自动化工程2班', 49);
INSERT INTO `class_info` VALUES (33, '2015130201', '电子工程1班', 61);
INSERT INTO `class_info` VALUES (34, '2015130202', '电子工程2班', 59);
INSERT INTO `class_info` VALUES (35, '2015140101', '护理1班', 45);
INSERT INTO `class_info` VALUES (36, '2015140102', '护理2班', 43);
INSERT INTO `class_info` VALUES (37, '2015140103', '护理3班', 45);
INSERT INTO `class_info` VALUES (38, '2015140104', '护理4班', 47);
INSERT INTO `class_info` VALUES (39, '2015150101', '体育教育1班', 43);
INSERT INTO `class_info` VALUES (40, '2015150102', '体育教育2班', 45);
INSERT INTO `class_info` VALUES (41, '2015150201', '体育管理1班', 51);
INSERT INTO `class_info` VALUES (42, '2015150202', '体育管理2班', 32);

-- ----------------------------
-- Table structure for class_task
-- ----------------------------
DROP TABLE IF EXISTS `class_task`;
CREATE TABLE `class_task`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseAttr` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentNumber` int(4) NULL DEFAULT NULL,
  `weeksSum` int(4) NULL DEFAULT NULL,
  `weeksNumber` int(4) NULL DEFAULT NULL,
  `isFix` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_task
-- ----------------------------
INSERT INTO `class_task` VALUES (3, '2015-2016-1', '02', '2015020101', '100014', '02100001', '01', 36, 9, 4, '1', NULL);
INSERT INTO `class_task` VALUES (5, '2015-2016-1', '02', '2015020301', '100014', '02100002', '01', 46, 9, 4, '1', NULL);
INSERT INTO `class_task` VALUES (7, '2015-2016-1', '04', '2015040101', '100022', '03100002', '05', 32, 11, 2, '1', NULL);
INSERT INTO `class_task` VALUES (8, '2015-2016-1', '05', '2015050101', '100021', '05100001', '04', 51, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (9, '2015-2016-1', '06', '2015060201', '100019', '06100003', '02', 33, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (10, '2015-2016-1', '07', '2015070101', '100016', '07100001', '01', 54, 15, 4, '1', NULL);
INSERT INTO `class_task` VALUES (11, '2015-2016-1', '07', '2015070101', '100017', '07100001', '01', 54, 15, 4, '1', NULL);
INSERT INTO `class_task` VALUES (14, '2015-2016-1', '09', '2015090101', '100001', '01100002', '01', 34, 10, 4, '2', '0218');
INSERT INTO `class_task` VALUES (19, '2015-2016-1', '02', '2015020101', '100013', '02100003', '02', 36, 4, 2, '2', '05');
INSERT INTO `class_task` VALUES (20, '2015-2016-1', '02', '2015020101', '100014', '02100005', '01', 36, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (21, '2015-2016-1', '02', '2015020101', '100018', '01100003', '02', 36, 12, 2, '1', NULL);
INSERT INTO `class_task` VALUES (22, '2015-2016-1', '02', '2015020301', '100013', '02100003', '02', 46, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (23, '2015-2016-1', '02', '2015020301', '100014', '02100004', '01', 46, 12, 4, '2', '0814');
INSERT INTO `class_task` VALUES (24, '2015-2016-1', '02', '2015020301', '100018', '01100003', '02', 46, 12, 2, '1', NULL);
INSERT INTO `class_task` VALUES (27, '2015-2016-1', '04', '2015040101', '100012', '04100002', '01', 32, 14, 4, '1', NULL);
INSERT INTO `class_task` VALUES (28, '2015-2016-1', '04', '2015040101', '100022', '04100003', '05', 32, 8, 2, '1', NULL);
INSERT INTO `class_task` VALUES (29, '2015-2016-1', '05', '2015050101', '100031', '05100001', '01', 51, 18, 4, '1', NULL);
INSERT INTO `class_task` VALUES (30, '2015-2016-1', '05', '2015050101', '100032', '05100002', '01', 51, 18, 4, '1', NULL);
INSERT INTO `class_task` VALUES (31, '2015-2016-1', '05', '2015050101', '100009', '05100006', '01', 51, 18, 4, '1', NULL);
INSERT INTO `class_task` VALUES (32, '2015-2016-1', '05', '2015050101', '100021', '05100005', '04', 51, 10, 4, '1', NULL);
INSERT INTO `class_task` VALUES (33, '2015-2016-1', '06', '2015060201', '100019', '06100001', '02', 33, 16, 4, '1', NULL);
INSERT INTO `class_task` VALUES (34, '2015-2016-1', '06', '2015060201', '100033', '06100002', '01', 33, 14, 4, '2', '0208');
INSERT INTO `class_task` VALUES (35, '2015-2016-1', '06', '2015060201', '100044', '06100004', '01', 33, 18, 4, '1', NULL);
INSERT INTO `class_task` VALUES (36, '2015-2016-1', '07', '2015070101', '100023', '07100003', '06', 54, 10, 4, '1', NULL);
INSERT INTO `class_task` VALUES (37, '2015-2016-1', '08', '2015080101', '100011', '08100004', '01', 33, 14, 4, '1', NULL);
INSERT INTO `class_task` VALUES (38, '2015-2016-1', '08', '2015080101', '100026', '08100004', '09', 33, 18, 2, '1', '');
INSERT INTO `class_task` VALUES (39, '2015-2016-1', '09', '2015090101', '100035', '09100001', '01', 34, 16, 4, '1', NULL);
INSERT INTO `class_task` VALUES (40, '2015-2016-1', '09', '2015090101', '100036', '09100001', '02', 34, 16, 4, '1', NULL);
INSERT INTO `class_task` VALUES (102, '2015-2016-1', '03', '2015030101', '100004', '03100002', '01', 37, 10, 4, '1', NULL);
INSERT INTO `class_task` VALUES (109, '2015-2016-1', '01', '2015010101', '100002', '01100003', '01', 48, 7, 4, '1', NULL);
INSERT INTO `class_task` VALUES (110, '2015-2016-1', '01', '2015010101', '100008', '01100004', '01', 48, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (111, '2015-2016-1', '01', '2015010101', '100040', '01100005', '01', 48, 12, 6, '1', NULL);
INSERT INTO `class_task` VALUES (112, '2015-2016-1', '01', '2015010301', '100041', '01100009', '01', 47, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (113, '2015-2016-1', '01', '2015010301', '100045', '01100010', '01', 47, 12, 4, '1', NULL);
INSERT INTO `class_task` VALUES (114, '2015-2016-1', '01', '2015010301', '100048', '01100007', '02', 47, 10, 2, '2', '05');
INSERT INTO `class_task` VALUES (115, '2015-2016-1', '01', '2015010101', '100001', '01100011', '01', 48, 10, 2, '2', '02');
INSERT INTO `class_task` VALUES (116, '2015-2016-1', '01', '2015010101', '100003', '01100007', '02', 48, 12, 2, '1', NULL);

-- ----------------------------
-- Table structure for classroom_location
-- ----------------------------
DROP TABLE IF EXISTS `classroom_location`;
CREATE TABLE `classroom_location`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `teachBuildNo` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroomNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `capacity` int(4) NULL DEFAULT NULL,
  `classroomAttr` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 299 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom_location
-- ----------------------------
INSERT INTO `classroom_location` VALUES (1, '01', '01-101', 70, '01');
INSERT INTO `classroom_location` VALUES (2, '01', '01-102', 60, '01');
INSERT INTO `classroom_location` VALUES (3, '01', '01-103', 60, '01');
INSERT INTO `classroom_location` VALUES (4, '01', '01-104', 70, '01');
INSERT INTO `classroom_location` VALUES (5, '01', '01-105', 60, '01');
INSERT INTO `classroom_location` VALUES (6, '01', '01-106', 70, '01');
INSERT INTO `classroom_location` VALUES (7, '01', '01-107', 120, '01');
INSERT INTO `classroom_location` VALUES (8, '01', '01-108', 140, '01');
INSERT INTO `classroom_location` VALUES (9, '01', '01-109', 140, '01');
INSERT INTO `classroom_location` VALUES (10, '01', '01-110', 50, '01');
INSERT INTO `classroom_location` VALUES (14, '01', '01-201', 70, '01');
INSERT INTO `classroom_location` VALUES (15, '01', '01-202', 60, '01');
INSERT INTO `classroom_location` VALUES (16, '01', '01-203', 60, '01');
INSERT INTO `classroom_location` VALUES (17, '01', '01-204', 70, '01');
INSERT INTO `classroom_location` VALUES (18, '01', '01-205', 60, '01');
INSERT INTO `classroom_location` VALUES (19, '01', '01-206', 70, '01');
INSERT INTO `classroom_location` VALUES (20, '01', '01-207', 120, '01');
INSERT INTO `classroom_location` VALUES (21, '01', '01-208', 140, '01');
INSERT INTO `classroom_location` VALUES (22, '01', '01-209', 140, '01');
INSERT INTO `classroom_location` VALUES (23, '01', '01-210', 50, '01');
INSERT INTO `classroom_location` VALUES (24, '01', '01-301', 70, '01');
INSERT INTO `classroom_location` VALUES (25, '01', '01-302', 60, '01');
INSERT INTO `classroom_location` VALUES (26, '01', '01-303', 60, '01');
INSERT INTO `classroom_location` VALUES (27, '01', '01-304', 70, '01');
INSERT INTO `classroom_location` VALUES (28, '01', '01-305', 60, '01');
INSERT INTO `classroom_location` VALUES (29, '01', '01-306', 70, '01');
INSERT INTO `classroom_location` VALUES (30, '01', '01-307', 120, '01');
INSERT INTO `classroom_location` VALUES (31, '01', '01-308', 140, '01');
INSERT INTO `classroom_location` VALUES (32, '01', '01-309', 140, '01');
INSERT INTO `classroom_location` VALUES (33, '01', '01-310', 50, '01');
INSERT INTO `classroom_location` VALUES (34, '02', '02-101', 70, '01');
INSERT INTO `classroom_location` VALUES (35, '02', '02-102', 60, '01');
INSERT INTO `classroom_location` VALUES (36, '02', '02-103', 60, '01');
INSERT INTO `classroom_location` VALUES (37, '02', '02-104', 70, '01');
INSERT INTO `classroom_location` VALUES (38, '02', '02-105', 60, '01');
INSERT INTO `classroom_location` VALUES (39, '02', '02-106', 70, '01');
INSERT INTO `classroom_location` VALUES (40, '02', '02-107', 120, '01');
INSERT INTO `classroom_location` VALUES (41, '02', '02-108', 140, '01');
INSERT INTO `classroom_location` VALUES (42, '02', '02-109', 140, '01');
INSERT INTO `classroom_location` VALUES (43, '02', '02-110', 50, '01');
INSERT INTO `classroom_location` VALUES (44, '02', '02-201', 70, '01');
INSERT INTO `classroom_location` VALUES (45, '02', '02-202', 60, '01');
INSERT INTO `classroom_location` VALUES (46, '02', '02-203', 60, '01');
INSERT INTO `classroom_location` VALUES (47, '02', '02-204', 70, '01');
INSERT INTO `classroom_location` VALUES (48, '02', '02-205', 60, '01');
INSERT INTO `classroom_location` VALUES (49, '02', '02-206', 70, '01');
INSERT INTO `classroom_location` VALUES (50, '02', '02-207', 120, '01');
INSERT INTO `classroom_location` VALUES (51, '02', '02-208', 140, '01');
INSERT INTO `classroom_location` VALUES (52, '02', '02-209', 140, '01');
INSERT INTO `classroom_location` VALUES (53, '02', '02-210', 50, '01');
INSERT INTO `classroom_location` VALUES (54, '02', '02-301', 70, '01');
INSERT INTO `classroom_location` VALUES (55, '02', '02-302', 60, '01');
INSERT INTO `classroom_location` VALUES (56, '02', '02-303', 60, '01');
INSERT INTO `classroom_location` VALUES (57, '02', '02-304', 70, '01');
INSERT INTO `classroom_location` VALUES (58, '02', '02-305', 60, '07');
INSERT INTO `classroom_location` VALUES (59, '02', '02-306', 70, '07');
INSERT INTO `classroom_location` VALUES (60, '02', '02-307', 120, '07');
INSERT INTO `classroom_location` VALUES (61, '02', '02-308', 140, '07');
INSERT INTO `classroom_location` VALUES (62, '02', '02-309', 140, '07');
INSERT INTO `classroom_location` VALUES (63, '02', '02-310', 50, '07');
INSERT INTO `classroom_location` VALUES (64, '03', '03-101', 70, '01');
INSERT INTO `classroom_location` VALUES (65, '03', '03-102', 60, '01');
INSERT INTO `classroom_location` VALUES (66, '03', '03-103', 60, '01');
INSERT INTO `classroom_location` VALUES (67, '03', '03-104', 70, '01');
INSERT INTO `classroom_location` VALUES (68, '03', '03-105', 60, '01');
INSERT INTO `classroom_location` VALUES (69, '03', '03-106', 70, '01');
INSERT INTO `classroom_location` VALUES (70, '03', '03-107', 120, '01');
INSERT INTO `classroom_location` VALUES (71, '03', '03-108', 140, '01');
INSERT INTO `classroom_location` VALUES (72, '03', '03-109', 140, '01');
INSERT INTO `classroom_location` VALUES (73, '03', '03-110', 50, '01');
INSERT INTO `classroom_location` VALUES (74, '03', '03-201', 70, '01');
INSERT INTO `classroom_location` VALUES (75, '03', '03-202', 60, '01');
INSERT INTO `classroom_location` VALUES (76, '03', '03-203', 60, '01');
INSERT INTO `classroom_location` VALUES (77, '03', '03-204', 70, '01');
INSERT INTO `classroom_location` VALUES (78, '03', '03-205', 60, '01');
INSERT INTO `classroom_location` VALUES (79, '03', '03-206', 70, '01');
INSERT INTO `classroom_location` VALUES (80, '03', '03-207', 120, '01');
INSERT INTO `classroom_location` VALUES (81, '03', '03-208', 140, '01');
INSERT INTO `classroom_location` VALUES (82, '03', '03-209', 140, '01');
INSERT INTO `classroom_location` VALUES (83, '03', '03-210', 50, '01');
INSERT INTO `classroom_location` VALUES (84, '03', '03-301', 70, '01');
INSERT INTO `classroom_location` VALUES (85, '03', '03-302', 60, '01');
INSERT INTO `classroom_location` VALUES (86, '03', '03-303', 60, '01');
INSERT INTO `classroom_location` VALUES (87, '03', '03-304', 70, '01');
INSERT INTO `classroom_location` VALUES (88, '03', '03-305', 60, '01');
INSERT INTO `classroom_location` VALUES (89, '03', '03-306', 70, '01');
INSERT INTO `classroom_location` VALUES (90, '03', '03-307', 120, '01');
INSERT INTO `classroom_location` VALUES (91, '03', '03-308', 140, '01');
INSERT INTO `classroom_location` VALUES (92, '04', '04-101', 70, '01');
INSERT INTO `classroom_location` VALUES (93, '04', '04-102', 60, '01');
INSERT INTO `classroom_location` VALUES (94, '04', '04-103', 60, '01');
INSERT INTO `classroom_location` VALUES (95, '04', '04-104', 70, '01');
INSERT INTO `classroom_location` VALUES (96, '04', '04-105', 60, '01');
INSERT INTO `classroom_location` VALUES (97, '04', '04-106', 70, '01');
INSERT INTO `classroom_location` VALUES (98, '04', '04-107', 120, '01');
INSERT INTO `classroom_location` VALUES (99, '04', '04-108', 140, '01');
INSERT INTO `classroom_location` VALUES (100, '04', '04-109', 140, '01');
INSERT INTO `classroom_location` VALUES (101, '04', '04-110', 50, '01');
INSERT INTO `classroom_location` VALUES (102, '04', '04-201', 70, '01');
INSERT INTO `classroom_location` VALUES (103, '04', '04-202', 60, '01');
INSERT INTO `classroom_location` VALUES (104, '04', '04-203', 60, '01');
INSERT INTO `classroom_location` VALUES (105, '04', '04-204', 70, '01');
INSERT INTO `classroom_location` VALUES (106, '04', '04-205', 60, '01');
INSERT INTO `classroom_location` VALUES (107, '04', '04-206', 70, '01');
INSERT INTO `classroom_location` VALUES (108, '04', '04-207', 120, '01');
INSERT INTO `classroom_location` VALUES (109, '04', '04-208', 140, '01');
INSERT INTO `classroom_location` VALUES (110, '04', '04-209', 140, '01');
INSERT INTO `classroom_location` VALUES (111, '04', '04-210', 50, '01');
INSERT INTO `classroom_location` VALUES (112, '04', '04-301', 70, '01');
INSERT INTO `classroom_location` VALUES (113, '04', '04-302', 60, '01');
INSERT INTO `classroom_location` VALUES (114, '04', '04-303', 60, '01');
INSERT INTO `classroom_location` VALUES (115, '04', '04-304', 70, '01');
INSERT INTO `classroom_location` VALUES (116, '04', '04-305', 60, '01');
INSERT INTO `classroom_location` VALUES (117, '04', '04-306', 70, '01');
INSERT INTO `classroom_location` VALUES (118, '04', '04-307', 120, '01');
INSERT INTO `classroom_location` VALUES (119, '04', '04-308', 140, '01');
INSERT INTO `classroom_location` VALUES (120, '05', '05-101', 70, '01');
INSERT INTO `classroom_location` VALUES (121, '05', '05-102', 60, '01');
INSERT INTO `classroom_location` VALUES (122, '05', '05-103', 60, '01');
INSERT INTO `classroom_location` VALUES (123, '05', '05-104', 70, '01');
INSERT INTO `classroom_location` VALUES (124, '05', '05-105', 60, '01');
INSERT INTO `classroom_location` VALUES (125, '05', '05-106', 70, '01');
INSERT INTO `classroom_location` VALUES (126, '05', '05-107', 120, '01');
INSERT INTO `classroom_location` VALUES (127, '05', '05-108', 140, '01');
INSERT INTO `classroom_location` VALUES (128, '05', '05-109', 140, '01');
INSERT INTO `classroom_location` VALUES (129, '05', '05-110', 50, '01');
INSERT INTO `classroom_location` VALUES (130, '05', '05-201', 70, '01');
INSERT INTO `classroom_location` VALUES (131, '05', '05-202', 60, '01');
INSERT INTO `classroom_location` VALUES (132, '05', '05-203', 60, '01');
INSERT INTO `classroom_location` VALUES (133, '05', '05-204', 70, '01');
INSERT INTO `classroom_location` VALUES (134, '05', '05-205', 60, '01');
INSERT INTO `classroom_location` VALUES (135, '05', '05-206', 70, '01');
INSERT INTO `classroom_location` VALUES (136, '05', '05-207', 120, '01');
INSERT INTO `classroom_location` VALUES (137, '05', '05-208', 140, '01');
INSERT INTO `classroom_location` VALUES (138, '05', '05-209', 140, '01');
INSERT INTO `classroom_location` VALUES (139, '05', '05-210', 50, '01');
INSERT INTO `classroom_location` VALUES (140, '05', '05-301', 70, '05');
INSERT INTO `classroom_location` VALUES (141, '05', '05-302', 60, '05');
INSERT INTO `classroom_location` VALUES (142, '05', '05-303', 60, '05');
INSERT INTO `classroom_location` VALUES (143, '05', '05-304', 70, '05');
INSERT INTO `classroom_location` VALUES (144, '05', '05-305', 60, '05');
INSERT INTO `classroom_location` VALUES (145, '05', '05-306', 70, '05');
INSERT INTO `classroom_location` VALUES (146, '05', '05-307', 120, '05');
INSERT INTO `classroom_location` VALUES (147, '05', '05-308', 140, '05');
INSERT INTO `classroom_location` VALUES (148, '05', '05-309', 140, '05');
INSERT INTO `classroom_location` VALUES (149, '05', '05-310', 50, '05');
INSERT INTO `classroom_location` VALUES (150, '06', '06-101', 70, '01');
INSERT INTO `classroom_location` VALUES (151, '06', '06-102', 60, '01');
INSERT INTO `classroom_location` VALUES (152, '06', '06-103', 60, '01');
INSERT INTO `classroom_location` VALUES (153, '06', '06-104', 70, '01');
INSERT INTO `classroom_location` VALUES (154, '06', '06-105', 60, '01');
INSERT INTO `classroom_location` VALUES (155, '06', '06-106', 70, '01');
INSERT INTO `classroom_location` VALUES (156, '06', '06-107', 120, '01');
INSERT INTO `classroom_location` VALUES (157, '06', '06-108', 140, '01');
INSERT INTO `classroom_location` VALUES (158, '06', '06-109', 140, '01');
INSERT INTO `classroom_location` VALUES (159, '06', '06-110', 50, '01');
INSERT INTO `classroom_location` VALUES (160, '06', '06-201', 70, '01');
INSERT INTO `classroom_location` VALUES (161, '06', '06-202', 60, '01');
INSERT INTO `classroom_location` VALUES (162, '06', '06-203', 60, '01');
INSERT INTO `classroom_location` VALUES (163, '06', '06-204', 70, '01');
INSERT INTO `classroom_location` VALUES (164, '06', '06-205', 60, '01');
INSERT INTO `classroom_location` VALUES (165, '06', '06-206', 70, '01');
INSERT INTO `classroom_location` VALUES (166, '06', '06-207', 120, '01');
INSERT INTO `classroom_location` VALUES (167, '06', '06-208', 140, '01');
INSERT INTO `classroom_location` VALUES (168, '06', '06-209', 140, '09');
INSERT INTO `classroom_location` VALUES (169, '06', '06-210', 50, '09');
INSERT INTO `classroom_location` VALUES (170, '06', '06-301', 70, '09');
INSERT INTO `classroom_location` VALUES (171, '06', '06-302', 60, '09');
INSERT INTO `classroom_location` VALUES (172, '06', '06-303', 60, '09');
INSERT INTO `classroom_location` VALUES (173, '06', '06-304', 70, '09');
INSERT INTO `classroom_location` VALUES (174, '06', '06-305', 60, '09');
INSERT INTO `classroom_location` VALUES (175, '06', '06-306', 70, '09');
INSERT INTO `classroom_location` VALUES (176, '06', '06-307', 120, '09');
INSERT INTO `classroom_location` VALUES (177, '06', '06-308', 140, '09');
INSERT INTO `classroom_location` VALUES (178, '06', '06-309', 140, '09');
INSERT INTO `classroom_location` VALUES (179, '06', '06-310', 50, '09');
INSERT INTO `classroom_location` VALUES (180, '07', '07-101', 70, '01');
INSERT INTO `classroom_location` VALUES (181, '07', '07-102', 60, '01');
INSERT INTO `classroom_location` VALUES (182, '07', '07-103', 60, '01');
INSERT INTO `classroom_location` VALUES (183, '07', '07-104', 70, '01');
INSERT INTO `classroom_location` VALUES (184, '07', '07-105', 60, '01');
INSERT INTO `classroom_location` VALUES (185, '07', '07-106', 70, '01');
INSERT INTO `classroom_location` VALUES (186, '07', '07-107', 120, '01');
INSERT INTO `classroom_location` VALUES (187, '07', '07-108', 140, '01');
INSERT INTO `classroom_location` VALUES (188, '07', '07-109', 140, '01');
INSERT INTO `classroom_location` VALUES (189, '07', '07-110', 50, '01');
INSERT INTO `classroom_location` VALUES (190, '07', '07-201', 70, '01');
INSERT INTO `classroom_location` VALUES (191, '07', '07-202', 60, '01');
INSERT INTO `classroom_location` VALUES (192, '07', '07-203', 60, '01');
INSERT INTO `classroom_location` VALUES (193, '07', '07-204', 70, '01');
INSERT INTO `classroom_location` VALUES (194, '07', '07-205', 60, '06');
INSERT INTO `classroom_location` VALUES (195, '07', '07-206', 70, '01');
INSERT INTO `classroom_location` VALUES (196, '07', '07-207', 120, '06');
INSERT INTO `classroom_location` VALUES (197, '07', '07-208', 140, '06');
INSERT INTO `classroom_location` VALUES (198, '07', '07-209', 140, '06');
INSERT INTO `classroom_location` VALUES (199, '07', '07-210', 50, '06');
INSERT INTO `classroom_location` VALUES (200, '07', '07-301', 70, '06');
INSERT INTO `classroom_location` VALUES (201, '07', '07-302', 60, '06');
INSERT INTO `classroom_location` VALUES (202, '07', '07-303', 60, '06');
INSERT INTO `classroom_location` VALUES (203, '07', '07-304', 70, '06');
INSERT INTO `classroom_location` VALUES (204, '07', '07-305', 60, '11');
INSERT INTO `classroom_location` VALUES (205, '07', '07-306', 70, '11');
INSERT INTO `classroom_location` VALUES (206, '07', '07-307', 120, '11');
INSERT INTO `classroom_location` VALUES (207, '07', '07-308', 140, '11');
INSERT INTO `classroom_location` VALUES (208, '07', '07-309', 140, '11');
INSERT INTO `classroom_location` VALUES (209, '07', '07-310', 50, '11');
INSERT INTO `classroom_location` VALUES (210, '08', '08-101', 70, '01');
INSERT INTO `classroom_location` VALUES (211, '08', '08-102', 60, '01');
INSERT INTO `classroom_location` VALUES (212, '08', '08-103', 60, '01');
INSERT INTO `classroom_location` VALUES (213, '08', '08-104', 70, '01');
INSERT INTO `classroom_location` VALUES (214, '08', '08-105', 60, '01');
INSERT INTO `classroom_location` VALUES (215, '08', '08-106', 70, '01');
INSERT INTO `classroom_location` VALUES (216, '08', '08-107', 120, '01');
INSERT INTO `classroom_location` VALUES (217, '08', '08-108', 140, '01');
INSERT INTO `classroom_location` VALUES (218, '08', '08-109', 140, '01');
INSERT INTO `classroom_location` VALUES (219, '08', '08-110', 50, '01');
INSERT INTO `classroom_location` VALUES (220, '08', '08-201', 70, '01');
INSERT INTO `classroom_location` VALUES (221, '08', '08-202', 60, '01');
INSERT INTO `classroom_location` VALUES (222, '08', '08-203', 60, '01');
INSERT INTO `classroom_location` VALUES (223, '08', '08-204', 70, '01');
INSERT INTO `classroom_location` VALUES (224, '08', '08-205', 60, '01');
INSERT INTO `classroom_location` VALUES (225, '08', '08-206', 70, '01');
INSERT INTO `classroom_location` VALUES (226, '08', '08-207', 120, '01');
INSERT INTO `classroom_location` VALUES (227, '08', '08-208', 140, '01');
INSERT INTO `classroom_location` VALUES (228, '08', '08-209', 140, '01');
INSERT INTO `classroom_location` VALUES (229, '08', '08-210', 50, '01');
INSERT INTO `classroom_location` VALUES (230, '08', '08-301', 70, '03');
INSERT INTO `classroom_location` VALUES (231, '08', '08-302', 60, '03');
INSERT INTO `classroom_location` VALUES (232, '08', '08-303', 60, '03');
INSERT INTO `classroom_location` VALUES (233, '08', '08-304', 70, '03');
INSERT INTO `classroom_location` VALUES (234, '08', '08-305', 60, '03');
INSERT INTO `classroom_location` VALUES (235, '08', '08-306', 70, '03');
INSERT INTO `classroom_location` VALUES (236, '08', '08-307', 120, '03');
INSERT INTO `classroom_location` VALUES (237, '08', '08-308', 140, '03');
INSERT INTO `classroom_location` VALUES (238, '08', '08-309', 140, '03');
INSERT INTO `classroom_location` VALUES (239, '08', '08-310', 50, '03');
INSERT INTO `classroom_location` VALUES (240, '09', '09-101', 70, '08');
INSERT INTO `classroom_location` VALUES (241, '09', '09-102', 60, '08');
INSERT INTO `classroom_location` VALUES (242, '09', '09-103', 60, '08');
INSERT INTO `classroom_location` VALUES (243, '09', '09-104', 70, '08');
INSERT INTO `classroom_location` VALUES (244, '09', '09-105', 60, '08');
INSERT INTO `classroom_location` VALUES (245, '09', '09-106', 70, '08');
INSERT INTO `classroom_location` VALUES (246, '09', '09-107', 120, '08');
INSERT INTO `classroom_location` VALUES (247, '09', '09-108', 140, '08');
INSERT INTO `classroom_location` VALUES (248, '09', '09-109', 140, '08');
INSERT INTO `classroom_location` VALUES (249, '09', '09-110', 50, '08');
INSERT INTO `classroom_location` VALUES (250, '09', '09-201', 70, '10');
INSERT INTO `classroom_location` VALUES (251, '09', '09-202', 60, '10');
INSERT INTO `classroom_location` VALUES (252, '09', '09-203', 60, '10');
INSERT INTO `classroom_location` VALUES (253, '09', '09-204', 70, '10');
INSERT INTO `classroom_location` VALUES (254, '09', '09-205', 60, '10');
INSERT INTO `classroom_location` VALUES (255, '09', '09-206', 70, '10');
INSERT INTO `classroom_location` VALUES (256, '09', '09-207', 120, '10');
INSERT INTO `classroom_location` VALUES (257, '09', '09-208', 140, '10');
INSERT INTO `classroom_location` VALUES (258, '09', '09-209', 140, '10');
INSERT INTO `classroom_location` VALUES (259, '09', '09-210', 50, '10');
INSERT INTO `classroom_location` VALUES (260, '09', '09-301', 70, '12');
INSERT INTO `classroom_location` VALUES (261, '09', '09-302', 60, '12');
INSERT INTO `classroom_location` VALUES (262, '09', '09-303', 60, '12');
INSERT INTO `classroom_location` VALUES (263, '09', '09-304', 70, '12');
INSERT INTO `classroom_location` VALUES (264, '09', '09-305', 60, '12');
INSERT INTO `classroom_location` VALUES (265, '09', '09-306', 70, '12');
INSERT INTO `classroom_location` VALUES (266, '09', '09-307', 120, '12');
INSERT INTO `classroom_location` VALUES (267, '09', '09-308', 140, '12');
INSERT INTO `classroom_location` VALUES (268, '09', '09-309', 140, '12');
INSERT INTO `classroom_location` VALUES (269, '09', '09-310', 50, '12');
INSERT INTO `classroom_location` VALUES (270, '10', '09-101', 70, '04');
INSERT INTO `classroom_location` VALUES (271, '10', '09-102', 60, '04');
INSERT INTO `classroom_location` VALUES (272, '10', '09-103', 60, '04');
INSERT INTO `classroom_location` VALUES (273, '10', '09-104', 70, '04');
INSERT INTO `classroom_location` VALUES (274, '10', '09-105', 60, '04');
INSERT INTO `classroom_location` VALUES (275, '10', '09-106', 70, '04');
INSERT INTO `classroom_location` VALUES (276, '10', '09-107', 120, '04');
INSERT INTO `classroom_location` VALUES (277, '10', '09-108', 140, '04');
INSERT INTO `classroom_location` VALUES (278, '10', '09-109', 140, '04');
INSERT INTO `classroom_location` VALUES (279, '10', '09-110', 50, '04');
INSERT INTO `classroom_location` VALUES (280, '10', '09-201', 70, '04');
INSERT INTO `classroom_location` VALUES (281, '10', '09-202', 60, '04');
INSERT INTO `classroom_location` VALUES (282, '10', '09-203', 60, '04');
INSERT INTO `classroom_location` VALUES (283, '10', '09-204', 70, '04');
INSERT INTO `classroom_location` VALUES (284, '10', '09-205', 60, '04');
INSERT INTO `classroom_location` VALUES (285, '10', '09-206', 70, '04');
INSERT INTO `classroom_location` VALUES (286, '10', '09-207', 120, '04');
INSERT INTO `classroom_location` VALUES (287, '10', '09-208', 140, '04');
INSERT INTO `classroom_location` VALUES (288, '10', '09-209', 140, '04');
INSERT INTO `classroom_location` VALUES (289, '10', '09-210', 50, '04');
INSERT INTO `classroom_location` VALUES (290, '10', '09-301', 70, '04');
INSERT INTO `classroom_location` VALUES (291, '10', '09-302', 60, '04');
INSERT INTO `classroom_location` VALUES (292, '10', '09-303', 60, '04');
INSERT INTO `classroom_location` VALUES (293, '10', '09-304', 70, '04');
INSERT INTO `classroom_location` VALUES (294, '10', '09-305', 60, '04');
INSERT INTO `classroom_location` VALUES (295, '10', '09-306', 70, '04');
INSERT INTO `classroom_location` VALUES (296, '10', '09-307', 120, '04');
INSERT INTO `classroom_location` VALUES (297, '10', '09-308', 140, '04');
INSERT INTO `classroom_location` VALUES (298, '10', '09-309', 140, '04');
INSERT INTO `classroom_location` VALUES (299, '10', '09-310', 50, '04');

-- ----------------------------
-- Table structure for college_info
-- ----------------------------
DROP TABLE IF EXISTS `college_info`;
CREATE TABLE `college_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college_info
-- ----------------------------
INSERT INTO `college_info` VALUES (1, '01', '软件与通信工程学院');
INSERT INTO `college_info` VALUES (2, '02', '文学与新闻传播学院');
INSERT INTO `college_info` VALUES (3, '03', '外国语学院');
INSERT INTO `college_info` VALUES (4, '04', '化学与环境工程学院');
INSERT INTO `college_info` VALUES (5, '05', '临床学院');
INSERT INTO `college_info` VALUES (6, '06', '康复学院');
INSERT INTO `college_info` VALUES (7, '07', '音乐学院');
INSERT INTO `college_info` VALUES (8, '08', '美术学院');
INSERT INTO `college_info` VALUES (9, '09', '法学院');
INSERT INTO `college_info` VALUES (10, '10', '数学与金融学院');
INSERT INTO `college_info` VALUES (11, '11', '经济与管理学院');
INSERT INTO `college_info` VALUES (12, '12', '药学院');
INSERT INTO `college_info` VALUES (13, '13', '电子与电气工程学院');
INSERT INTO `college_info` VALUES (14, '14', '护理学院');
INSERT INTO `college_info` VALUES (15, '15', '体育学院');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseAttr` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES (1, '100001', '马克思原理', '01');
INSERT INTO `course_info` VALUES (2, '100002', '计算机组成原理', '01');
INSERT INTO `course_info` VALUES (3, '100003', '大学物理', '02');
INSERT INTO `course_info` VALUES (4, '100004', '毛泽东思想概论', '01');
INSERT INTO `course_info` VALUES (5, '100005', '中国古诗词鉴赏', '02');
INSERT INTO `course_info` VALUES (6, '100006', '大学英语', '01');
INSERT INTO `course_info` VALUES (7, '100007', '大学体育', '03');
INSERT INTO `course_info` VALUES (8, '100008', '嵌入式原理', '01');
INSERT INTO `course_info` VALUES (9, '100009', '临床免疫', '01');
INSERT INTO `course_info` VALUES (10, '100010', '新闻传播', '01');
INSERT INTO `course_info` VALUES (11, '100011', '美术鉴赏', '01');
INSERT INTO `course_info` VALUES (12, '100012', '环境检测', '01');
INSERT INTO `course_info` VALUES (13, '100013', '军事理论', '02');
INSERT INTO `course_info` VALUES (14, '100014', '文学概论', '01');
INSERT INTO `course_info` VALUES (15, '100015', '青少年心理', '01');
INSERT INTO `course_info` VALUES (16, '100016', '小型音乐表演', '11');
INSERT INTO `course_info` VALUES (17, '100017', '基本乐理', '01');
INSERT INTO `course_info` VALUES (18, '100018', '计算机应用基础', '02');
INSERT INTO `course_info` VALUES (19, '100019', '针灸实操', '02');
INSERT INTO `course_info` VALUES (20, '100020', '应用数学', '01');
INSERT INTO `course_info` VALUES (21, '100021', '人体解剖实验', '04');
INSERT INTO `course_info` VALUES (22, '100022', '环境检测实验', '05');
INSERT INTO `course_info` VALUES (23, '100023', '舞蹈表演', '06');
INSERT INTO `course_info` VALUES (24, '100024', '播音表演', '07');
INSERT INTO `course_info` VALUES (25, '100025', '电路设计实践', '08');
INSERT INTO `course_info` VALUES (26, '100026', '美术写生', '09');
INSERT INTO `course_info` VALUES (27, '100027', '计算机实验', '10');
INSERT INTO `course_info` VALUES (29, '100028', '物理实验', '12');
INSERT INTO `course_info` VALUES (30, '100029', '英语翻译', '01');
INSERT INTO `course_info` VALUES (31, '100030', '英语写作', '01');
INSERT INTO `course_info` VALUES (32, '100031', '免疫系统', '01');
INSERT INTO `course_info` VALUES (34, '100032', '微生物致病原理', '01');
INSERT INTO `course_info` VALUES (35, '100033', '康复理论', '01');
INSERT INTO `course_info` VALUES (36, '100034', '人体穴位', '01');
INSERT INTO `course_info` VALUES (37, '100035', '中国基本法', '01');
INSERT INTO `course_info` VALUES (38, '100036', '离散数学', '01');
INSERT INTO `course_info` VALUES (39, '100037', '高等数学', '01');
INSERT INTO `course_info` VALUES (40, '100038', '线性代数', '01');
INSERT INTO `course_info` VALUES (41, '100039', 'C语言', '01');
INSERT INTO `course_info` VALUES (42, '100040', 'C++', '01');
INSERT INTO `course_info` VALUES (44, '100041', '数据结构', '01');
INSERT INTO `course_info` VALUES (45, '100042', '数据库原理', '01');
INSERT INTO `course_info` VALUES (46, '100043', 'ASP.NET', '01');
INSERT INTO `course_info` VALUES (47, '100044', 'ORACLE数据库', '01');
INSERT INTO `course_info` VALUES (48, '100045', '网络原理', '01');
INSERT INTO `course_info` VALUES (49, '100046', '就业指导', '02');
INSERT INTO `course_info` VALUES (50, '100047', '编译原理', '01');
INSERT INTO `course_info` VALUES (52, '100048', '大学生职业规划', '02');
INSERT INTO `course_info` VALUES (53, '100049', '创新创业指导', '02');
INSERT INTO `course_info` VALUES (54, '100050', '网络新闻编辑', '01');
INSERT INTO `course_info` VALUES (55, '100051', '网络传播', '01');

-- ----------------------------
-- Table structure for course_plan
-- ----------------------------
DROP TABLE IF EXISTS `course_plan`;
CREATE TABLE `course_plan`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroomNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weeksSum` int(4) NULL DEFAULT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 779 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_plan
-- ----------------------------
INSERT INTO `course_plan` VALUES (714, '01', '2015010301', '100048', '01100007', '04-105', '05', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (715, '01', '2015010301', '100041', '01100009', '04-208', '20', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (716, '01', '2015010301', '100041', '01100009', '04-207', '11', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (717, '01', '2015010301', '100045', '01100010', '04-108', '18', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (718, '01', '2015010301', '100045', '01100010', '04-201', '24', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (719, '01', '2015010101', '100001', '01100011', '04-208', '02', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (720, '01', '2015010101', '100002', '01100003', '04-102', '19', 7, '2015-2016-1');
INSERT INTO `course_plan` VALUES (721, '01', '2015010101', '100002', '01100003', '04-104', '01', 7, '2015-2016-1');
INSERT INTO `course_plan` VALUES (722, '01', '2015010101', '100008', '01100004', '04-303', '22', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (723, '01', '2015010101', '100008', '01100004', '04-208', '12', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (724, '01', '2015010101', '100040', '01100005', '04-106', '10', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (725, '01', '2015010101', '100040', '01100005', '04-302', '25', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (726, '01', '2015010101', '100040', '01100005', '04-203', '24', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (727, '01', '2015010101', '100003', '01100007', '04-107', '15', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (728, '02', '2015020101', '100013', '02100003', '01-302', '05', 4, '2015-2016-1');
INSERT INTO `course_plan` VALUES (729, '02', '2015020101', '100014', '02100001', '01-103', '10', 9, '2015-2016-1');
INSERT INTO `course_plan` VALUES (730, '02', '2015020101', '100014', '02100001', '01-301', '08', 9, '2015-2016-1');
INSERT INTO `course_plan` VALUES (731, '02', '2015020101', '100014', '02100005', '01-103', '14', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (732, '02', '2015020101', '100014', '02100005', '01-309', '03', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (733, '02', '2015020101', '100018', '01100003', '01-201', '15', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (734, '02', '2015020301', '100014', '02100004', '01-209', '08', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (735, '02', '2015020301', '100014', '02100004', '01-307', '14', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (736, '02', '2015020301', '100014', '02100002', '01-308', '19', 9, '2015-2016-1');
INSERT INTO `course_plan` VALUES (737, '02', '2015020301', '100014', '02100002', '01-106', '15', 9, '2015-2016-1');
INSERT INTO `course_plan` VALUES (738, '02', '2015020301', '100013', '02100003', '01-306', '03', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (739, '02', '2015020301', '100013', '02100003', '01-210', '06', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (740, '02', '2015020301', '100018', '01100003', '01-309', '24', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (741, '03', '2015030101', '100004', '03100002', '01-105', '03', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (742, '03', '2015030101', '100004', '03100002', '01-110', '14', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (743, '04', '2015040101', '100022', '03100002', '05-301', '23', 11, '2015-2016-1');
INSERT INTO `course_plan` VALUES (744, '04', '2015040101', '100012', '04100002', '05-103', '01', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (745, '04', '2015040101', '100012', '04100002', '05-204', '20', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (746, '04', '2015040101', '100022', '04100003', '05-309', '03', 8, '2015-2016-1');
INSERT INTO `course_plan` VALUES (747, '05', '2015050101', '100021', '05100001', '09-309', '17', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (748, '05', '2015050101', '100021', '05100001', '09-209', '13', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (749, '05', '2015050101', '100031', '05100001', '03-103', '09', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (750, '05', '2015050101', '100031', '05100001', '03-307', '06', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (751, '05', '2015050101', '100032', '05100002', '03-305', '23', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (752, '05', '2015050101', '100032', '05100002', '03-304', '03', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (753, '05', '2015050101', '100009', '05100006', '03-206', '02', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (754, '05', '2015050101', '100009', '05100006', '03-109', '04', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (755, '05', '2015050101', '100021', '05100005', '09-203', '05', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (756, '05', '2015050101', '100021', '05100005', '09-108', '21', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (757, '06', '2015060201', '100033', '06100002', '03-302', '02', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (758, '06', '2015060201', '100033', '06100002', '03-306', '08', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (759, '06', '2015060201', '100019', '06100003', '03-206', '01', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (760, '06', '2015060201', '100019', '06100003', '03-305', '04', 12, '2015-2016-1');
INSERT INTO `course_plan` VALUES (761, '06', '2015060201', '100019', '06100001', '03-106', '03', 16, '2015-2016-1');
INSERT INTO `course_plan` VALUES (762, '06', '2015060201', '100019', '06100001', '03-106', '18', 16, '2015-2016-1');
INSERT INTO `course_plan` VALUES (763, '06', '2015060201', '100044', '06100004', '03-308', '24', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (764, '06', '2015060201', '100044', '06100004', '03-201', '05', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (765, '07', '2015070101', '100016', '07100001', '07-105', '11', 15, '2015-2016-1');
INSERT INTO `course_plan` VALUES (766, '07', '2015070101', '100016', '07100001', '07-110', '21', 15, '2015-2016-1');
INSERT INTO `course_plan` VALUES (767, '07', '2015070101', '100017', '07100001', '07-202', '25', 15, '2015-2016-1');
INSERT INTO `course_plan` VALUES (768, '07', '2015070101', '100017', '07100001', '07-110', '19', 15, '2015-2016-1');
INSERT INTO `course_plan` VALUES (769, '07', '2015070101', '100023', '07100003', '07-304', '23', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (770, '07', '2015070101', '100023', '07100003', '07-209', '22', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (771, '08', '2015080101', '100011', '08100004', '06-105', '13', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (772, '08', '2015080101', '100011', '08100004', '06-106', '11', 14, '2015-2016-1');
INSERT INTO `course_plan` VALUES (773, '08', '2015080101', '100026', '08100004', '06-307', '25', 18, '2015-2016-1');
INSERT INTO `course_plan` VALUES (774, '09', '2015090101', '100001', '01100002', '02-204', '02', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (775, '09', '2015090101', '100001', '01100002', '02-106', '18', 10, '2015-2016-1');
INSERT INTO `course_plan` VALUES (776, '09', '2015090101', '100035', '09100001', '02-103', '19', 16, '2015-2016-1');
INSERT INTO `course_plan` VALUES (777, '09', '2015090101', '100035', '09100001', '02-206', '09', 16, '2015-2016-1');
INSERT INTO `course_plan` VALUES (778, '09', '2015090101', '100036', '09100001', '02-302', '04', 16, '2015-2016-1');
INSERT INTO `course_plan` VALUES (779, '09', '2015090101', '100036', '09100001', '02-301', '24', 16, '2015-2016-1');

-- ----------------------------
-- Table structure for location_info
-- ----------------------------
DROP TABLE IF EXISTS `location_info`;
CREATE TABLE `location_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `teachBuildNo` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location_info
-- ----------------------------
INSERT INTO `location_info` VALUES (6, '05', '04');
INSERT INTO `location_info` VALUES (7, '03', '05');
INSERT INTO `location_info` VALUES (8, '03', '06');
INSERT INTO `location_info` VALUES (9, '07', '07');
INSERT INTO `location_info` VALUES (10, '06', '08');
INSERT INTO `location_info` VALUES (31, '04', '15');
INSERT INTO `location_info` VALUES (32, '01', '02');
INSERT INTO `location_info` VALUES (33, '01', '03');
INSERT INTO `location_info` VALUES (34, '02', '09');
INSERT INTO `location_info` VALUES (35, '02', '10');
INSERT INTO `location_info` VALUES (36, '04', '13');
INSERT INTO `location_info` VALUES (37, '02', '11');
INSERT INTO `location_info` VALUES (47, '04', '01');

-- ----------------------------
-- Table structure for teach_build_info
-- ----------------------------
DROP TABLE IF EXISTS `teach_build_info`;
CREATE TABLE `teach_build_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `teachBuildNo` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teachBuildName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_build_info
-- ----------------------------
INSERT INTO `teach_build_info` VALUES (1, '01', '1号教学楼');
INSERT INTO `teach_build_info` VALUES (2, '02', '2号教学楼');
INSERT INTO `teach_build_info` VALUES (3, '03', '3号教学楼');
INSERT INTO `teach_build_info` VALUES (4, '04', '4号教学楼');
INSERT INTO `teach_build_info` VALUES (5, '05', '化生楼');
INSERT INTO `teach_build_info` VALUES (6, '06', '美术楼');
INSERT INTO `teach_build_info` VALUES (7, '07', '音乐楼');
INSERT INTO `teach_build_info` VALUES (8, '08', '体育楼');
INSERT INTO `teach_build_info` VALUES (9, '09', '实验大楼');
INSERT INTO `teach_build_info` VALUES (10, '10', '医学实验楼');
INSERT INTO `teach_build_info` VALUES (11, '11', '逸夫楼');

-- ----------------------------
-- Table structure for teach_plan
-- ----------------------------
DROP TABLE IF EXISTS `teach_plan`;
CREATE TABLE `teach_plan`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `className` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `studentNumber` int(4) NULL DEFAULT NULL,
  `courseAttr` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classHour` int(4) NULL DEFAULT NULL,
  `weeksNumber` int(4) NULL DEFAULT NULL,
  `weeksSum` int(4) NULL DEFAULT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_plan
-- ----------------------------
INSERT INTO `teach_plan` VALUES (1, '2015010101', '计算机科学与技术1班', '100001', '01', 48, '01', 20, 2, 10, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (2, '2015010101', '计算机科学与技术1班', '100002', '01', 48, '01', 26, 4, 7, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (3, '2015020101', '汉语言文学1班', '100014', '02', 36, '01', 36, 4, 9, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (4, '2015020101', '汉语言文学1班', '100018', '02', 36, '02', 14, 2, 7, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (5, '2015020301', '中文教育1班', '100014', '02', 46, '01', 36, 4, 9, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (6, '2015030101', '商务英语1班', '100004', '03', 37, '01', 40, 4, 10, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (7, '2015040101', '环境工程1班', '100022', '04', 32, '05', 22, 2, 11, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (8, '2015050101', '临床1班', '100021', '05', 51, '04', 48, 4, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (9, '2015060201', '康复1班', '100019', '06', 33, '02', 48, 4, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (10, '2015070101', '音乐表演1班', '100016', '07', 54, '01', 60, 4, 15, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (11, '2015070101', '音乐表演1班', '100017', '07', 54, '01', 60, 4, 15, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (12, '2015080101', '产品设计1班', '100026', '08', 33, '09', 48, 4, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (13, '2015010101', '计算机科学与技术1班', '100003', '01', 48, '02', 24, 2, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (14, '2015010101', '计算机科学与技术1班', '100008', '01', 48, '01', 48, 4, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (15, '2015010101', '计算机科学与技术1班', '100040', '01', 48, '01', 72, 6, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (16, '2015010301', '物联网1班', '100041', '01', 47, '01', 48, 4, 12, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (18, '2015010301', '物联网1班', '100048', '01', 47, '02', 20, 2, 10, '2015-2016-1');
INSERT INTO `teach_plan` VALUES (19, '2015010301', '物联网1班', '100045', '01', 47, '01', 48, 4, 12, '2015-2016-1');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroomNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 650 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (1, '01100007', '100006', '2015010101', '01-308', '13');
INSERT INTO `teacher_course` VALUES (2, '01100007', '100006', '2015010101', '01-110', '11');
INSERT INTO `teacher_course` VALUES (3, '01100004', '100007', '2015010101', '08-302', '23');
INSERT INTO `teacher_course` VALUES (4, '01100004', '100007', '2015010101', '08-307', '22');
INSERT INTO `teacher_course` VALUES (5, '02100003', '100013', '2015020101', '02-303', '05');
INSERT INTO `teacher_course` VALUES (6, '02100001', '100014', '2015020101', '02-110', '24');
INSERT INTO `teacher_course` VALUES (7, '02100001', '100014', '2015020101', '02-102', '13');
INSERT INTO `teacher_course` VALUES (8, '02100005', '100014', '2015020101', '02-202', '22');
INSERT INTO `teacher_course` VALUES (9, '02100005', '100014', '2015020101', '02-109', '18');
INSERT INTO `teacher_course` VALUES (10, '01100003', '100018', '2015020101', '02-101', '08');
INSERT INTO `teacher_course` VALUES (11, '02100004', '100014', '2015020301', '02-301', '08');
INSERT INTO `teacher_course` VALUES (12, '02100004', '100014', '2015020301', '02-205', '14');
INSERT INTO `teacher_course` VALUES (13, '02100002', '100014', '2015020301', '02-102', '25');
INSERT INTO `teacher_course` VALUES (14, '02100002', '100014', '2015020301', '02-207', '13');
INSERT INTO `teacher_course` VALUES (15, '02100003', '100013', '2015020301', '02-304', '20');
INSERT INTO `teacher_course` VALUES (16, '02100003', '100013', '2015020301', '02-108', '16');
INSERT INTO `teacher_course` VALUES (17, '01100003', '100018', '2015020301', '02-110', '23');
INSERT INTO `teacher_course` VALUES (18, '03100002', '100030', '2015030101', '03-307', '12');
INSERT INTO `teacher_course` VALUES (19, '03100002', '100030', '2015030101', '03-307', '17');
INSERT INTO `teacher_course` VALUES (20, '03100002', '100004', '2015030101', '03-304', '10');
INSERT INTO `teacher_course` VALUES (21, '03100002', '100004', '2015030101', '03-308', '06');
INSERT INTO `teacher_course` VALUES (22, '03100001', '100029', '2015030101', '03-210', '20');
INSERT INTO `teacher_course` VALUES (23, '03100001', '100029', '2015030101', '03-301', '22');
INSERT INTO `teacher_course` VALUES (24, '03100002', '100022', '2015040101', '05-305', '09');
INSERT INTO `teacher_course` VALUES (25, '04100002', '100012', '2015040101', '05-105', '19');
INSERT INTO `teacher_course` VALUES (26, '04100002', '100012', '2015040101', '05-102', '06');
INSERT INTO `teacher_course` VALUES (27, '04100003', '100022', '2015040101', '05-304', '20');
INSERT INTO `teacher_course` VALUES (28, '05100001', '100021', '2015050101', '09-301', '18');
INSERT INTO `teacher_course` VALUES (29, '05100001', '100021', '2015050101', '09-108', '02');
INSERT INTO `teacher_course` VALUES (30, '05100001', '100031', '2015050101', '03-207', '12');
INSERT INTO `teacher_course` VALUES (31, '05100001', '100031', '2015050101', '03-203', '15');
INSERT INTO `teacher_course` VALUES (32, '05100002', '100032', '2015050101', '03-206', '19');
INSERT INTO `teacher_course` VALUES (33, '05100002', '100032', '2015050101', '03-301', '17');
INSERT INTO `teacher_course` VALUES (34, '05100006', '100009', '2015050101', '03-106', '23');
INSERT INTO `teacher_course` VALUES (35, '05100006', '100009', '2015050101', '03-304', '11');
INSERT INTO `teacher_course` VALUES (36, '05100005', '100021', '2015050101', '09-209', '13');
INSERT INTO `teacher_course` VALUES (37, '05100005', '100021', '2015050101', '09-204', '24');
INSERT INTO `teacher_course` VALUES (38, '06100002', '100033', '2015060201', '03-307', '02');
INSERT INTO `teacher_course` VALUES (39, '06100002', '100033', '2015060201', '03-106', '08');
INSERT INTO `teacher_course` VALUES (40, '06100003', '100019', '2015060201', '03-102', '14');
INSERT INTO `teacher_course` VALUES (41, '06100003', '100019', '2015060201', '03-202', '09');
INSERT INTO `teacher_course` VALUES (42, '06100001', '100019', '2015060201', '03-102', '19');
INSERT INTO `teacher_course` VALUES (43, '06100001', '100019', '2015060201', '03-208', '01');
INSERT INTO `teacher_course` VALUES (44, '06100004', '100044', '2015060201', '03-205', '06');
INSERT INTO `teacher_course` VALUES (45, '06100004', '100044', '2015060201', '03-303', '16');
INSERT INTO `teacher_course` VALUES (46, '07100001', '100016', '2015070101', '07-103', '11');
INSERT INTO `teacher_course` VALUES (47, '07100001', '100016', '2015070101', '07-104', '14');
INSERT INTO `teacher_course` VALUES (48, '07100001', '100017', '2015070101', '07-110', '02');
INSERT INTO `teacher_course` VALUES (49, '07100001', '100017', '2015070101', '07-102', '10');
INSERT INTO `teacher_course` VALUES (50, '07100003', '100023', '2015070101', '07-207', '12');
INSERT INTO `teacher_course` VALUES (51, '07100003', '100023', '2015070101', '07-205', '25');
INSERT INTO `teacher_course` VALUES (52, '08100002', '100026', '2015080101', '06-304', '21');
INSERT INTO `teacher_course` VALUES (53, '08100002', '100026', '2015080101', '06-309', '24');
INSERT INTO `teacher_course` VALUES (54, '08100004', '100011', '2015080101', '06-204', '22');
INSERT INTO `teacher_course` VALUES (55, '08100004', '100011', '2015080101', '06-104', '20');
INSERT INTO `teacher_course` VALUES (56, '08100004', '100026', '2015080101', '06-310', '01');
INSERT INTO `teacher_course` VALUES (57, '01100002', '100001', '2015090101', '02-109', '02');
INSERT INTO `teacher_course` VALUES (58, '01100002', '100001', '2015090101', '02-104', '18');
INSERT INTO `teacher_course` VALUES (59, '09100001', '100035', '2015090101', '02-201', '01');
INSERT INTO `teacher_course` VALUES (60, '09100001', '100035', '2015090101', '02-103', '25');
INSERT INTO `teacher_course` VALUES (61, '09100001', '100036', '2015090101', '02-107', '06');
INSERT INTO `teacher_course` VALUES (62, '09100001', '100036', '2015090101', '02-304', '17');
INSERT INTO `teacher_course` VALUES (63, '01100007', '100006', '2015010101', '01-102', '11');
INSERT INTO `teacher_course` VALUES (64, '01100007', '100006', '2015010101', '01-308', '18');
INSERT INTO `teacher_course` VALUES (65, '01100004', '100007', '2015010101', '08-302', '02');
INSERT INTO `teacher_course` VALUES (66, '01100004', '100007', '2015010101', '08-301', '20');
INSERT INTO `teacher_course` VALUES (67, '02100003', '100013', '2015020101', '02-206', '05');
INSERT INTO `teacher_course` VALUES (68, '02100001', '100014', '2015020101', '02-204', '17');
INSERT INTO `teacher_course` VALUES (69, '02100001', '100014', '2015020101', '02-209', '01');
INSERT INTO `teacher_course` VALUES (70, '02100005', '100014', '2015020101', '02-201', '16');
INSERT INTO `teacher_course` VALUES (71, '02100005', '100014', '2015020101', '02-110', '13');
INSERT INTO `teacher_course` VALUES (72, '01100003', '100018', '2015020101', '02-303', '02');
INSERT INTO `teacher_course` VALUES (73, '02100004', '100014', '2015020301', '02-204', '08');
INSERT INTO `teacher_course` VALUES (74, '02100004', '100014', '2015020301', '02-105', '14');
INSERT INTO `teacher_course` VALUES (75, '02100002', '100014', '2015020301', '02-301', '09');
INSERT INTO `teacher_course` VALUES (76, '02100002', '100014', '2015020301', '02-304', '11');
INSERT INTO `teacher_course` VALUES (77, '02100003', '100013', '2015020301', '02-205', '23');
INSERT INTO `teacher_course` VALUES (78, '02100003', '100013', '2015020301', '02-201', '19');
INSERT INTO `teacher_course` VALUES (79, '01100003', '100018', '2015020301', '02-205', '24');
INSERT INTO `teacher_course` VALUES (80, '03100002', '100030', '2015030101', '03-301', '12');
INSERT INTO `teacher_course` VALUES (81, '03100002', '100030', '2015030101', '03-206', '17');
INSERT INTO `teacher_course` VALUES (82, '03100002', '100004', '2015030101', '03-304', '22');
INSERT INTO `teacher_course` VALUES (83, '03100002', '100004', '2015030101', '03-205', '08');
INSERT INTO `teacher_course` VALUES (84, '03100001', '100029', '2015030101', '03-202', '15');
INSERT INTO `teacher_course` VALUES (85, '03100001', '100029', '2015030101', '03-201', '04');
INSERT INTO `teacher_course` VALUES (86, '03100002', '100022', '2015040101', '05-308', '21');
INSERT INTO `teacher_course` VALUES (87, '04100002', '100012', '2015040101', '05-206', '07');
INSERT INTO `teacher_course` VALUES (88, '04100002', '100012', '2015040101', '05-110', '02');
INSERT INTO `teacher_course` VALUES (89, '04100003', '100022', '2015040101', '05-307', '23');
INSERT INTO `teacher_course` VALUES (90, '05100001', '100021', '2015050101', '09-202', '24');
INSERT INTO `teacher_course` VALUES (91, '05100001', '100021', '2015050101', '09-106', '04');
INSERT INTO `teacher_course` VALUES (92, '05100001', '100031', '2015050101', '03-306', '21');
INSERT INTO `teacher_course` VALUES (93, '05100001', '100031', '2015050101', '03-301', '18');
INSERT INTO `teacher_course` VALUES (94, '05100002', '100032', '2015050101', '03-301', '01');
INSERT INTO `teacher_course` VALUES (95, '05100002', '100032', '2015050101', '03-305', '25');
INSERT INTO `teacher_course` VALUES (96, '05100006', '100009', '2015050101', '03-201', '08');
INSERT INTO `teacher_course` VALUES (97, '05100006', '100009', '2015050101', '03-107', '17');
INSERT INTO `teacher_course` VALUES (98, '05100005', '100021', '2015050101', '09-305', '12');
INSERT INTO `teacher_course` VALUES (99, '05100005', '100021', '2015050101', '09-208', '14');
INSERT INTO `teacher_course` VALUES (100, '06100002', '100033', '2015060201', '03-305', '02');
INSERT INTO `teacher_course` VALUES (101, '06100002', '100033', '2015060201', '03-206', '08');
INSERT INTO `teacher_course` VALUES (102, '06100003', '100019', '2015060201', '03-104', '23');
INSERT INTO `teacher_course` VALUES (103, '06100003', '100019', '2015060201', '03-308', '13');
INSERT INTO `teacher_course` VALUES (104, '06100001', '100019', '2015060201', '03-210', '12');
INSERT INTO `teacher_course` VALUES (105, '06100001', '100019', '2015060201', '03-107', '07');
INSERT INTO `teacher_course` VALUES (106, '06100004', '100044', '2015060201', '03-101', '16');
INSERT INTO `teacher_course` VALUES (107, '06100004', '100044', '2015060201', '03-102', '22');
INSERT INTO `teacher_course` VALUES (108, '07100001', '100016', '2015070101', '07-107', '25');
INSERT INTO `teacher_course` VALUES (109, '07100001', '100016', '2015070101', '07-104', '03');
INSERT INTO `teacher_course` VALUES (110, '07100001', '100017', '2015070101', '07-106', '07');
INSERT INTO `teacher_course` VALUES (111, '07100001', '100017', '2015070101', '07-201', '10');
INSERT INTO `teacher_course` VALUES (112, '07100003', '100023', '2015070101', '07-209', '15');
INSERT INTO `teacher_course` VALUES (113, '07100003', '100023', '2015070101', '07-302', '04');
INSERT INTO `teacher_course` VALUES (114, '08100002', '100026', '2015080101', '06-304', '12');
INSERT INTO `teacher_course` VALUES (115, '08100002', '100026', '2015080101', '06-307', '22');
INSERT INTO `teacher_course` VALUES (116, '08100004', '100011', '2015080101', '06-101', '18');
INSERT INTO `teacher_course` VALUES (117, '08100004', '100011', '2015080101', '06-108', '13');
INSERT INTO `teacher_course` VALUES (118, '08100004', '100026', '2015080101', '06-308', '10');
INSERT INTO `teacher_course` VALUES (119, '01100002', '100001', '2015090101', '02-201', '02');
INSERT INTO `teacher_course` VALUES (120, '01100002', '100001', '2015090101', '02-210', '18');
INSERT INTO `teacher_course` VALUES (121, '09100001', '100035', '2015090101', '02-210', '09');
INSERT INTO `teacher_course` VALUES (122, '09100001', '100035', '2015090101', '02-303', '06');
INSERT INTO `teacher_course` VALUES (123, '09100001', '100036', '2015090101', '02-201', '03');
INSERT INTO `teacher_course` VALUES (124, '09100001', '100036', '2015090101', '02-303', '11');
INSERT INTO `teacher_course` VALUES (125, '01100002', '100001', '2015010101', '04-105', '24');
INSERT INTO `teacher_course` VALUES (126, '01100001', '100002', '2015010101', '04-205', '06');
INSERT INTO `teacher_course` VALUES (127, '01100001', '100002', '2015010101', '04-110', '12');
INSERT INTO `teacher_course` VALUES (128, '01100003', '100003', '2015010101', '04-305', '11');
INSERT INTO `teacher_course` VALUES (129, '02100003', '100013', '2015020101', '01-302', '05');
INSERT INTO `teacher_course` VALUES (130, '02100001', '100014', '2015020101', '01-201', '22');
INSERT INTO `teacher_course` VALUES (131, '02100001', '100014', '2015020101', '01-109', '07');
INSERT INTO `teacher_course` VALUES (132, '02100005', '100014', '2015020101', '01-202', '11');
INSERT INTO `teacher_course` VALUES (133, '02100005', '100014', '2015020101', '01-208', '21');
INSERT INTO `teacher_course` VALUES (134, '01100003', '100018', '2015020101', '01-110', '16');
INSERT INTO `teacher_course` VALUES (135, '02100004', '100014', '2015020301', '01-206', '08');
INSERT INTO `teacher_course` VALUES (136, '02100004', '100014', '2015020301', '01-101', '14');
INSERT INTO `teacher_course` VALUES (137, '02100002', '100014', '2015020301', '01-302', '23');
INSERT INTO `teacher_course` VALUES (138, '02100002', '100014', '2015020301', '01-302', '21');
INSERT INTO `teacher_course` VALUES (139, '02100003', '100013', '2015020301', '01-203', '17');
INSERT INTO `teacher_course` VALUES (140, '02100003', '100013', '2015020301', '01-205', '10');
INSERT INTO `teacher_course` VALUES (141, '01100003', '100018', '2015020301', '01-108', '20');
INSERT INTO `teacher_course` VALUES (142, '03100002', '100030', '2015030101', '01-108', '12');
INSERT INTO `teacher_course` VALUES (143, '03100002', '100030', '2015030101', '01-308', '17');
INSERT INTO `teacher_course` VALUES (144, '03100002', '100004', '2015030101', '01-310', '24');
INSERT INTO `teacher_course` VALUES (145, '03100002', '100004', '2015030101', '01-201', '25');
INSERT INTO `teacher_course` VALUES (146, '03100001', '100029', '2015030101', '01-302', '16');
INSERT INTO `teacher_course` VALUES (147, '03100001', '100029', '2015030101', '01-103', '14');
INSERT INTO `teacher_course` VALUES (148, '03100002', '100022', '2015040101', '05-306', '09');
INSERT INTO `teacher_course` VALUES (149, '04100002', '100012', '2015040101', '05-203', '21');
INSERT INTO `teacher_course` VALUES (150, '04100002', '100012', '2015040101', '05-205', '22');
INSERT INTO `teacher_course` VALUES (151, '04100003', '100022', '2015040101', '05-306', '19');
INSERT INTO `teacher_course` VALUES (152, '05100001', '100021', '2015050101', '09-103', '02');
INSERT INTO `teacher_course` VALUES (153, '05100001', '100021', '2015050101', '09-109', '03');
INSERT INTO `teacher_course` VALUES (154, '05100001', '100031', '2015050101', '03-306', '06');
INSERT INTO `teacher_course` VALUES (155, '05100001', '100031', '2015050101', '03-104', '08');
INSERT INTO `teacher_course` VALUES (156, '05100002', '100032', '2015050101', '03-206', '22');
INSERT INTO `teacher_course` VALUES (157, '05100002', '100032', '2015050101', '03-101', '18');
INSERT INTO `teacher_course` VALUES (158, '05100006', '100009', '2015050101', '03-107', '14');
INSERT INTO `teacher_course` VALUES (159, '05100006', '100009', '2015050101', '03-303', '04');
INSERT INTO `teacher_course` VALUES (160, '05100005', '100021', '2015050101', '09-107', '01');
INSERT INTO `teacher_course` VALUES (161, '05100005', '100021', '2015050101', '09-204', '11');
INSERT INTO `teacher_course` VALUES (162, '06100002', '100033', '2015060201', '03-105', '02');
INSERT INTO `teacher_course` VALUES (163, '06100002', '100033', '2015060201', '03-304', '08');
INSERT INTO `teacher_course` VALUES (164, '06100003', '100019', '2015060201', '03-206', '25');
INSERT INTO `teacher_course` VALUES (165, '06100003', '100019', '2015060201', '03-207', '16');
INSERT INTO `teacher_course` VALUES (166, '06100001', '100019', '2015060201', '03-302', '21');
INSERT INTO `teacher_course` VALUES (167, '06100001', '100019', '2015060201', '03-101', '17');
INSERT INTO `teacher_course` VALUES (168, '06100004', '100044', '2015060201', '03-206', '04');
INSERT INTO `teacher_course` VALUES (169, '06100004', '100044', '2015060201', '03-207', '10');
INSERT INTO `teacher_course` VALUES (170, '07100001', '100016', '2015070101', '07-206', '05');
INSERT INTO `teacher_course` VALUES (171, '07100001', '100016', '2015070101', '07-109', '24');
INSERT INTO `teacher_course` VALUES (172, '07100001', '100017', '2015070101', '07-108', '11');
INSERT INTO `teacher_course` VALUES (173, '07100001', '100017', '2015070101', '07-201', '01');
INSERT INTO `teacher_course` VALUES (174, '07100003', '100023', '2015070101', '07-209', '16');
INSERT INTO `teacher_course` VALUES (175, '07100003', '100023', '2015070101', '07-210', '02');
INSERT INTO `teacher_course` VALUES (176, '08100004', '100011', '2015080101', '06-102', '19');
INSERT INTO `teacher_course` VALUES (177, '08100004', '100011', '2015080101', '06-108', '09');
INSERT INTO `teacher_course` VALUES (178, '08100004', '100026', '2015080101', '06-301', '22');
INSERT INTO `teacher_course` VALUES (179, '01100002', '100001', '2015090101', '02-107', '02');
INSERT INTO `teacher_course` VALUES (180, '01100002', '100001', '2015090101', '02-102', '18');
INSERT INTO `teacher_course` VALUES (181, '09100001', '100035', '2015090101', '02-104', '13');
INSERT INTO `teacher_course` VALUES (182, '09100001', '100035', '2015090101', '02-102', '06');
INSERT INTO `teacher_course` VALUES (183, '09100001', '100036', '2015090101', '02-102', '08');
INSERT INTO `teacher_course` VALUES (184, '09100001', '100036', '2015090101', '02-203', '09');
INSERT INTO `teacher_course` VALUES (185, '01100002', '100001', '2015010101', '04-209', '05');
INSERT INTO `teacher_course` VALUES (186, '01100001', '100002', '2015010101', '04-102', '10');
INSERT INTO `teacher_course` VALUES (187, '01100001', '100002', '2015010101', '04-305', '09');
INSERT INTO `teacher_course` VALUES (188, '01100003', '100003', '2015010101', '04-110', '14');
INSERT INTO `teacher_course` VALUES (189, '02100003', '100013', '2015020101', '01-305', '05');
INSERT INTO `teacher_course` VALUES (190, '02100001', '100014', '2015020101', '01-302', '16');
INSERT INTO `teacher_course` VALUES (191, '02100001', '100014', '2015020101', '01-101', '19');
INSERT INTO `teacher_course` VALUES (192, '02100005', '100014', '2015020101', '01-201', '07');
INSERT INTO `teacher_course` VALUES (193, '02100005', '100014', '2015020101', '01-105', '02');
INSERT INTO `teacher_course` VALUES (194, '01100003', '100018', '2015020101', '01-204', '01');
INSERT INTO `teacher_course` VALUES (195, '02100004', '100014', '2015020301', '01-304', '08');
INSERT INTO `teacher_course` VALUES (196, '02100004', '100014', '2015020301', '01-302', '14');
INSERT INTO `teacher_course` VALUES (197, '02100002', '100014', '2015020301', '01-305', '04');
INSERT INTO `teacher_course` VALUES (198, '02100002', '100014', '2015020301', '01-202', '16');
INSERT INTO `teacher_course` VALUES (199, '02100003', '100013', '2015020301', '01-302', '25');
INSERT INTO `teacher_course` VALUES (200, '02100003', '100013', '2015020301', '01-302', '06');
INSERT INTO `teacher_course` VALUES (201, '01100003', '100018', '2015020301', '01-201', '01');
INSERT INTO `teacher_course` VALUES (202, '03100002', '100030', '2015030101', '01-204', '12');
INSERT INTO `teacher_course` VALUES (203, '03100002', '100030', '2015030101', '01-104', '17');
INSERT INTO `teacher_course` VALUES (204, '03100002', '100004', '2015030101', '01-109', '24');
INSERT INTO `teacher_course` VALUES (205, '03100002', '100004', '2015030101', '01-101', '25');
INSERT INTO `teacher_course` VALUES (206, '03100001', '100029', '2015030101', '01-203', '02');
INSERT INTO `teacher_course` VALUES (207, '03100001', '100029', '2015030101', '01-104', '09');
INSERT INTO `teacher_course` VALUES (208, '03100002', '100022', '2015040101', '05-301', '03');
INSERT INTO `teacher_course` VALUES (209, '04100002', '100012', '2015040101', '05-204', '02');
INSERT INTO `teacher_course` VALUES (210, '04100002', '100012', '2015040101', '05-202', '07');
INSERT INTO `teacher_course` VALUES (211, '04100003', '100022', '2015040101', '05-304', '13');
INSERT INTO `teacher_course` VALUES (212, '05100001', '100021', '2015050101', '09-204', '22');
INSERT INTO `teacher_course` VALUES (213, '05100001', '100021', '2015050101', '09-209', '07');
INSERT INTO `teacher_course` VALUES (214, '05100001', '100031', '2015050101', '03-109', '02');
INSERT INTO `teacher_course` VALUES (215, '05100001', '100031', '2015050101', '03-107', '09');
INSERT INTO `teacher_course` VALUES (216, '05100002', '100032', '2015050101', '03-303', '16');
INSERT INTO `teacher_course` VALUES (217, '05100002', '100032', '2015050101', '03-207', '04');
INSERT INTO `teacher_course` VALUES (218, '05100006', '100009', '2015050101', '03-203', '08');
INSERT INTO `teacher_course` VALUES (219, '05100006', '100009', '2015050101', '03-305', '11');
INSERT INTO `teacher_course` VALUES (220, '05100005', '100021', '2015050101', '09-202', '24');
INSERT INTO `teacher_course` VALUES (221, '05100005', '100021', '2015050101', '09-205', '23');
INSERT INTO `teacher_course` VALUES (222, '06100002', '100033', '2015060201', '03-208', '02');
INSERT INTO `teacher_course` VALUES (223, '06100002', '100033', '2015060201', '03-209', '08');
INSERT INTO `teacher_course` VALUES (224, '06100003', '100019', '2015060201', '03-308', '18');
INSERT INTO `teacher_course` VALUES (225, '06100003', '100019', '2015060201', '03-205', '22');
INSERT INTO `teacher_course` VALUES (226, '06100001', '100019', '2015060201', '03-105', '04');
INSERT INTO `teacher_course` VALUES (227, '06100001', '100019', '2015060201', '03-104', '23');
INSERT INTO `teacher_course` VALUES (228, '06100004', '100044', '2015060201', '03-210', '06');
INSERT INTO `teacher_course` VALUES (229, '06100004', '100044', '2015060201', '03-301', '20');
INSERT INTO `teacher_course` VALUES (230, '07100001', '100016', '2015070101', '07-204', '03');
INSERT INTO `teacher_course` VALUES (231, '07100001', '100016', '2015070101', '07-206', '16');
INSERT INTO `teacher_course` VALUES (232, '07100001', '100017', '2015070101', '07-201', '20');
INSERT INTO `teacher_course` VALUES (233, '07100001', '100017', '2015070101', '07-105', '19');
INSERT INTO `teacher_course` VALUES (234, '07100003', '100023', '2015070101', '07-207', '10');
INSERT INTO `teacher_course` VALUES (235, '07100003', '100023', '2015070101', '07-209', '05');
INSERT INTO `teacher_course` VALUES (236, '08100004', '100011', '2015080101', '06-205', '11');
INSERT INTO `teacher_course` VALUES (237, '08100004', '100011', '2015080101', '06-101', '06');
INSERT INTO `teacher_course` VALUES (238, '08100004', '100026', '2015080101', '06-310', '15');
INSERT INTO `teacher_course` VALUES (239, '01100002', '100001', '2015090101', '02-203', '02');
INSERT INTO `teacher_course` VALUES (240, '01100002', '100001', '2015090101', '02-201', '18');
INSERT INTO `teacher_course` VALUES (241, '09100001', '100035', '2015090101', '02-206', '21');
INSERT INTO `teacher_course` VALUES (242, '09100001', '100035', '2015090101', '02-108', '23');
INSERT INTO `teacher_course` VALUES (243, '09100001', '100036', '2015090101', '02-106', '01');
INSERT INTO `teacher_course` VALUES (244, '09100001', '100036', '2015090101', '02-207', '03');
INSERT INTO `teacher_course` VALUES (245, '01100002', '100001', '2015010101', '04-110', '01');
INSERT INTO `teacher_course` VALUES (246, '01100007', '100002', '2015010101', '04-206', '18');
INSERT INTO `teacher_course` VALUES (247, '01100007', '100002', '2015010101', '04-104', '25');
INSERT INTO `teacher_course` VALUES (248, '01100003', '100003', '2015010101', '04-305', '21');
INSERT INTO `teacher_course` VALUES (249, '02100003', '100013', '2015020101', '01-205', '05');
INSERT INTO `teacher_course` VALUES (250, '02100001', '100014', '2015020101', '01-208', '02');
INSERT INTO `teacher_course` VALUES (251, '02100001', '100014', '2015020101', '01-205', '01');
INSERT INTO `teacher_course` VALUES (252, '02100005', '100014', '2015020101', '01-101', '04');
INSERT INTO `teacher_course` VALUES (253, '02100005', '100014', '2015020101', '01-203', '18');
INSERT INTO `teacher_course` VALUES (254, '01100003', '100018', '2015020101', '01-308', '17');
INSERT INTO `teacher_course` VALUES (255, '02100004', '100014', '2015020301', '01-307', '08');
INSERT INTO `teacher_course` VALUES (256, '02100004', '100014', '2015020301', '01-302', '14');
INSERT INTO `teacher_course` VALUES (257, '02100002', '100014', '2015020301', '01-206', '16');
INSERT INTO `teacher_course` VALUES (258, '02100002', '100014', '2015020301', '01-106', '06');
INSERT INTO `teacher_course` VALUES (259, '02100003', '100013', '2015020301', '01-303', '17');
INSERT INTO `teacher_course` VALUES (260, '02100003', '100013', '2015020301', '01-310', '09');
INSERT INTO `teacher_course` VALUES (261, '01100003', '100018', '2015020301', '01-203', '10');
INSERT INTO `teacher_course` VALUES (262, '03100002', '100030', '2015030101', '01-305', '12');
INSERT INTO `teacher_course` VALUES (263, '03100002', '100030', '2015030101', '01-103', '17');
INSERT INTO `teacher_course` VALUES (264, '03100002', '100022', '2015040101', '05-304', '14');
INSERT INTO `teacher_course` VALUES (265, '04100002', '100012', '2015040101', '05-109', '17');
INSERT INTO `teacher_course` VALUES (266, '04100002', '100012', '2015040101', '05-208', '16');
INSERT INTO `teacher_course` VALUES (267, '04100003', '100022', '2015040101', '05-303', '20');
INSERT INTO `teacher_course` VALUES (268, '05100001', '100021', '2015050101', '09-307', '18');
INSERT INTO `teacher_course` VALUES (269, '05100001', '100021', '2015050101', '09-307', '10');
INSERT INTO `teacher_course` VALUES (270, '05100001', '100031', '2015050101', '03-205', '03');
INSERT INTO `teacher_course` VALUES (271, '05100001', '100031', '2015050101', '03-109', '12');
INSERT INTO `teacher_course` VALUES (272, '05100002', '100032', '2015050101', '03-101', '21');
INSERT INTO `teacher_course` VALUES (273, '05100002', '100032', '2015050101', '03-307', '02');
INSERT INTO `teacher_course` VALUES (274, '05100006', '100009', '2015050101', '03-202', '09');
INSERT INTO `teacher_course` VALUES (275, '05100006', '100009', '2015050101', '03-104', '16');
INSERT INTO `teacher_course` VALUES (276, '05100005', '100021', '2015050101', '09-204', '20');
INSERT INTO `teacher_course` VALUES (277, '05100005', '100021', '2015050101', '09-207', '14');
INSERT INTO `teacher_course` VALUES (278, '06100002', '100033', '2015060201', '03-203', '02');
INSERT INTO `teacher_course` VALUES (279, '06100002', '100033', '2015060201', '03-304', '08');
INSERT INTO `teacher_course` VALUES (280, '06100003', '100019', '2015060201', '03-305', '01');
INSERT INTO `teacher_course` VALUES (281, '06100003', '100019', '2015060201', '03-107', '13');
INSERT INTO `teacher_course` VALUES (282, '06100001', '100019', '2015060201', '03-304', '16');
INSERT INTO `teacher_course` VALUES (283, '06100001', '100019', '2015060201', '03-209', '11');
INSERT INTO `teacher_course` VALUES (284, '06100004', '100044', '2015060201', '03-302', '06');
INSERT INTO `teacher_course` VALUES (285, '06100004', '100044', '2015060201', '03-103', '09');
INSERT INTO `teacher_course` VALUES (286, '07100001', '100016', '2015070101', '07-203', '14');
INSERT INTO `teacher_course` VALUES (287, '07100001', '100016', '2015070101', '07-110', '22');
INSERT INTO `teacher_course` VALUES (288, '07100001', '100017', '2015070101', '07-203', '21');
INSERT INTO `teacher_course` VALUES (289, '07100001', '100017', '2015070101', '07-204', '05');
INSERT INTO `teacher_course` VALUES (290, '07100003', '100023', '2015070101', '07-205', '25');
INSERT INTO `teacher_course` VALUES (291, '07100003', '100023', '2015070101', '07-208', '20');
INSERT INTO `teacher_course` VALUES (292, '08100004', '100011', '2015080101', '06-207', '17');
INSERT INTO `teacher_course` VALUES (293, '08100004', '100011', '2015080101', '06-108', '01');
INSERT INTO `teacher_course` VALUES (294, '08100004', '100026', '2015080101', '06-306', '07');
INSERT INTO `teacher_course` VALUES (295, '01100002', '100001', '2015090101', '02-205', '02');
INSERT INTO `teacher_course` VALUES (296, '01100002', '100001', '2015090101', '02-203', '18');
INSERT INTO `teacher_course` VALUES (297, '09100001', '100035', '2015090101', '02-110', '03');
INSERT INTO `teacher_course` VALUES (298, '09100001', '100035', '2015090101', '02-109', '10');
INSERT INTO `teacher_course` VALUES (299, '09100001', '100036', '2015090101', '02-206', '25');
INSERT INTO `teacher_course` VALUES (300, '09100001', '100036', '2015090101', '02-102', '22');
INSERT INTO `teacher_course` VALUES (301, '01100002', '100001', '2015010101', '04-107', '01');
INSERT INTO `teacher_course` VALUES (302, '01100007', '100002', '2015010101', '04-308', '17');
INSERT INTO `teacher_course` VALUES (303, '01100007', '100002', '2015010101', '04-102', '21');
INSERT INTO `teacher_course` VALUES (304, '01100003', '100003', '2015010101', '04-203', '13');
INSERT INTO `teacher_course` VALUES (305, '02100003', '100013', '2015020101', '01-109', '05');
INSERT INTO `teacher_course` VALUES (306, '02100001', '100014', '2015020101', '01-304', '16');
INSERT INTO `teacher_course` VALUES (307, '02100001', '100014', '2015020101', '01-204', '01');
INSERT INTO `teacher_course` VALUES (308, '02100005', '100014', '2015020101', '01-206', '19');
INSERT INTO `teacher_course` VALUES (309, '02100005', '100014', '2015020101', '01-105', '06');
INSERT INTO `teacher_course` VALUES (310, '01100003', '100018', '2015020101', '01-210', '17');
INSERT INTO `teacher_course` VALUES (311, '02100004', '100014', '2015020301', '01-303', '08');
INSERT INTO `teacher_course` VALUES (312, '02100004', '100014', '2015020301', '01-308', '14');
INSERT INTO `teacher_course` VALUES (313, '02100002', '100014', '2015020301', '01-305', '23');
INSERT INTO `teacher_course` VALUES (314, '02100002', '100014', '2015020301', '01-107', '12');
INSERT INTO `teacher_course` VALUES (315, '02100003', '100013', '2015020301', '01-206', '20');
INSERT INTO `teacher_course` VALUES (316, '02100003', '100013', '2015020301', '01-308', '24');
INSERT INTO `teacher_course` VALUES (317, '01100003', '100018', '2015020301', '01-306', '22');
INSERT INTO `teacher_course` VALUES (318, '03100002', '100030', '2015030101', '01-101', '12');
INSERT INTO `teacher_course` VALUES (319, '03100002', '100030', '2015030101', '01-104', '17');
INSERT INTO `teacher_course` VALUES (320, '03100002', '100022', '2015040101', '05-310', '15');
INSERT INTO `teacher_course` VALUES (321, '04100002', '100012', '2015040101', '05-204', '10');
INSERT INTO `teacher_course` VALUES (322, '04100002', '100012', '2015040101', '05-201', '17');
INSERT INTO `teacher_course` VALUES (323, '04100003', '100022', '2015040101', '05-302', '08');
INSERT INTO `teacher_course` VALUES (324, '05100001', '100021', '2015050101', '09-309', '16');
INSERT INTO `teacher_course` VALUES (325, '05100001', '100021', '2015050101', '09-201', '13');
INSERT INTO `teacher_course` VALUES (326, '05100001', '100031', '2015050101', '03-104', '05');
INSERT INTO `teacher_course` VALUES (327, '05100001', '100031', '2015050101', '03-303', '23');
INSERT INTO `teacher_course` VALUES (328, '05100002', '100032', '2015050101', '03-108', '20');
INSERT INTO `teacher_course` VALUES (329, '05100002', '100032', '2015050101', '03-301', '15');
INSERT INTO `teacher_course` VALUES (330, '05100006', '100009', '2015050101', '03-207', '10');
INSERT INTO `teacher_course` VALUES (331, '05100006', '100009', '2015050101', '03-202', '24');
INSERT INTO `teacher_course` VALUES (332, '05100005', '100021', '2015050101', '09-205', '07');
INSERT INTO `teacher_course` VALUES (333, '05100005', '100021', '2015050101', '09-106', '06');
INSERT INTO `teacher_course` VALUES (334, '06100002', '100033', '2015060201', '03-302', '02');
INSERT INTO `teacher_course` VALUES (335, '06100002', '100033', '2015060201', '03-305', '08');
INSERT INTO `teacher_course` VALUES (336, '06100003', '100019', '2015060201', '03-308', '09');
INSERT INTO `teacher_course` VALUES (337, '06100003', '100019', '2015060201', '03-303', '12');
INSERT INTO `teacher_course` VALUES (338, '06100001', '100019', '2015060201', '03-101', '04');
INSERT INTO `teacher_course` VALUES (339, '06100001', '100019', '2015060201', '03-105', '24');
INSERT INTO `teacher_course` VALUES (340, '06100004', '100044', '2015060201', '03-306', '13');
INSERT INTO `teacher_course` VALUES (341, '06100004', '100044', '2015060201', '03-104', '07');
INSERT INTO `teacher_course` VALUES (342, '07100001', '100016', '2015070101', '07-106', '22');
INSERT INTO `teacher_course` VALUES (343, '07100001', '100016', '2015070101', '07-102', '04');
INSERT INTO `teacher_course` VALUES (344, '07100001', '100017', '2015070101', '07-204', '06');
INSERT INTO `teacher_course` VALUES (345, '07100001', '100017', '2015070101', '07-204', '03');
INSERT INTO `teacher_course` VALUES (346, '07100003', '100023', '2015070101', '07-301', '13');
INSERT INTO `teacher_course` VALUES (347, '07100003', '100023', '2015070101', '07-207', '09');
INSERT INTO `teacher_course` VALUES (348, '08100004', '100011', '2015080101', '06-108', '23');
INSERT INTO `teacher_course` VALUES (349, '08100004', '100011', '2015080101', '06-106', '20');
INSERT INTO `teacher_course` VALUES (350, '08100004', '100026', '2015080101', '06-302', '12');
INSERT INTO `teacher_course` VALUES (351, '01100002', '100001', '2015090101', '02-304', '02');
INSERT INTO `teacher_course` VALUES (352, '01100002', '100001', '2015090101', '02-207', '18');
INSERT INTO `teacher_course` VALUES (353, '09100001', '100035', '2015090101', '02-210', '08');
INSERT INTO `teacher_course` VALUES (354, '09100001', '100035', '2015090101', '02-210', '20');
INSERT INTO `teacher_course` VALUES (355, '09100001', '100036', '2015090101', '02-303', '06');
INSERT INTO `teacher_course` VALUES (356, '09100001', '100036', '2015090101', '02-206', '01');
INSERT INTO `teacher_course` VALUES (357, '01100001', '100001', '2015010101', '04-205', '04');
INSERT INTO `teacher_course` VALUES (358, '01100004', '100003', '2015010101', '04-104', '12');
INSERT INTO `teacher_course` VALUES (359, '01100005', '100002', '2015010101', '04-304', '09');
INSERT INTO `teacher_course` VALUES (360, '01100005', '100002', '2015010101', '04-101', '10');
INSERT INTO `teacher_course` VALUES (361, '02100003', '100013', '2015020101', '01-103', '05');
INSERT INTO `teacher_course` VALUES (362, '02100001', '100014', '2015020101', '01-101', '01');
INSERT INTO `teacher_course` VALUES (363, '02100001', '100014', '2015020101', '01-304', '21');
INSERT INTO `teacher_course` VALUES (364, '02100005', '100014', '2015020101', '01-207', '10');
INSERT INTO `teacher_course` VALUES (365, '02100005', '100014', '2015020101', '01-102', '03');
INSERT INTO `teacher_course` VALUES (366, '01100003', '100018', '2015020101', '01-106', '11');
INSERT INTO `teacher_course` VALUES (367, '02100004', '100014', '2015020301', '01-205', '08');
INSERT INTO `teacher_course` VALUES (368, '02100004', '100014', '2015020301', '01-309', '14');
INSERT INTO `teacher_course` VALUES (369, '02100002', '100014', '2015020301', '01-302', '10');
INSERT INTO `teacher_course` VALUES (370, '02100002', '100014', '2015020301', '01-104', '06');
INSERT INTO `teacher_course` VALUES (371, '02100003', '100013', '2015020301', '01-308', '12');
INSERT INTO `teacher_course` VALUES (372, '02100003', '100013', '2015020301', '01-108', '25');
INSERT INTO `teacher_course` VALUES (373, '01100003', '100018', '2015020301', '01-202', '03');
INSERT INTO `teacher_course` VALUES (374, '03100002', '100030', '2015030101', '01-207', '12');
INSERT INTO `teacher_course` VALUES (375, '03100002', '100030', '2015030101', '01-110', '17');
INSERT INTO `teacher_course` VALUES (376, '03100002', '100022', '2015040101', '05-301', '19');
INSERT INTO `teacher_course` VALUES (377, '04100002', '100012', '2015040101', '05-106', '04');
INSERT INTO `teacher_course` VALUES (378, '04100002', '100012', '2015040101', '05-103', '21');
INSERT INTO `teacher_course` VALUES (379, '04100003', '100022', '2015040101', '05-305', '17');
INSERT INTO `teacher_course` VALUES (380, '05100001', '100021', '2015050101', '09-304', '09');
INSERT INTO `teacher_course` VALUES (381, '05100001', '100021', '2015050101', '09-201', '03');
INSERT INTO `teacher_course` VALUES (382, '05100001', '100031', '2015050101', '03-209', '02');
INSERT INTO `teacher_course` VALUES (383, '05100001', '100031', '2015050101', '03-302', '25');
INSERT INTO `teacher_course` VALUES (384, '05100002', '100032', '2015050101', '03-104', '01');
INSERT INTO `teacher_course` VALUES (385, '05100002', '100032', '2015050101', '03-107', '23');
INSERT INTO `teacher_course` VALUES (386, '05100006', '100009', '2015050101', '03-303', '16');
INSERT INTO `teacher_course` VALUES (387, '05100006', '100009', '2015050101', '03-207', '21');
INSERT INTO `teacher_course` VALUES (388, '05100005', '100021', '2015050101', '09-207', '17');
INSERT INTO `teacher_course` VALUES (389, '05100005', '100021', '2015050101', '09-306', '04');
INSERT INTO `teacher_course` VALUES (390, '06100002', '100033', '2015060201', '03-202', '02');
INSERT INTO `teacher_course` VALUES (391, '06100002', '100033', '2015060201', '03-303', '08');
INSERT INTO `teacher_course` VALUES (392, '06100003', '100019', '2015060201', '03-104', '18');
INSERT INTO `teacher_course` VALUES (393, '06100003', '100019', '2015060201', '03-303', '12');
INSERT INTO `teacher_course` VALUES (394, '06100001', '100019', '2015060201', '03-209', '01');
INSERT INTO `teacher_course` VALUES (395, '06100001', '100019', '2015060201', '03-105', '13');
INSERT INTO `teacher_course` VALUES (396, '06100004', '100044', '2015060201', '03-206', '16');
INSERT INTO `teacher_course` VALUES (397, '06100004', '100044', '2015060201', '03-203', '06');
INSERT INTO `teacher_course` VALUES (398, '07100001', '100016', '2015070101', '07-206', '25');
INSERT INTO `teacher_course` VALUES (399, '07100001', '100016', '2015070101', '07-202', '07');
INSERT INTO `teacher_course` VALUES (400, '07100001', '100017', '2015070101', '07-103', '11');
INSERT INTO `teacher_course` VALUES (401, '07100001', '100017', '2015070101', '07-102', '23');
INSERT INTO `teacher_course` VALUES (402, '07100003', '100023', '2015070101', '07-304', '04');
INSERT INTO `teacher_course` VALUES (403, '07100003', '100023', '2015070101', '07-209', '22');
INSERT INTO `teacher_course` VALUES (404, '08100004', '100011', '2015080101', '06-202', '13');
INSERT INTO `teacher_course` VALUES (405, '08100004', '100011', '2015080101', '06-109', '14');
INSERT INTO `teacher_course` VALUES (406, '08100004', '100026', '2015080101', '06-306', '08');
INSERT INTO `teacher_course` VALUES (407, '01100002', '100001', '2015090101', '02-304', '02');
INSERT INTO `teacher_course` VALUES (408, '01100002', '100001', '2015090101', '02-104', '18');
INSERT INTO `teacher_course` VALUES (409, '09100001', '100035', '2015090101', '02-202', '06');
INSERT INTO `teacher_course` VALUES (410, '09100001', '100035', '2015090101', '02-104', '07');
INSERT INTO `teacher_course` VALUES (411, '09100001', '100036', '2015090101', '02-302', '17');
INSERT INTO `teacher_course` VALUES (412, '09100001', '100036', '2015090101', '02-105', '24');
INSERT INTO `teacher_course` VALUES (413, '02100003', '100013', '2015020101', '01-301', '05');
INSERT INTO `teacher_course` VALUES (414, '02100001', '100014', '2015020101', '01-306', '18');
INSERT INTO `teacher_course` VALUES (415, '02100001', '100014', '2015020101', '01-107', '10');
INSERT INTO `teacher_course` VALUES (416, '02100005', '100014', '2015020101', '01-305', '25');
INSERT INTO `teacher_course` VALUES (417, '02100005', '100014', '2015020101', '01-108', '22');
INSERT INTO `teacher_course` VALUES (418, '01100003', '100018', '2015020101', '01-301', '13');
INSERT INTO `teacher_course` VALUES (419, '02100004', '100014', '2015020301', '01-103', '08');
INSERT INTO `teacher_course` VALUES (420, '02100004', '100014', '2015020301', '01-108', '14');
INSERT INTO `teacher_course` VALUES (421, '02100002', '100014', '2015020301', '01-106', '20');
INSERT INTO `teacher_course` VALUES (422, '02100002', '100014', '2015020301', '01-107', '18');
INSERT INTO `teacher_course` VALUES (423, '02100003', '100013', '2015020301', '01-208', '06');
INSERT INTO `teacher_course` VALUES (424, '02100003', '100013', '2015020301', '01-305', '13');
INSERT INTO `teacher_course` VALUES (425, '01100003', '100018', '2015020301', '01-103', '15');
INSERT INTO `teacher_course` VALUES (426, '03100002', '100022', '2015040101', '05-306', '19');
INSERT INTO `teacher_course` VALUES (427, '04100002', '100012', '2015040101', '05-204', '09');
INSERT INTO `teacher_course` VALUES (428, '04100002', '100012', '2015040101', '05-206', '11');
INSERT INTO `teacher_course` VALUES (429, '04100003', '100022', '2015040101', '05-310', '25');
INSERT INTO `teacher_course` VALUES (430, '05100001', '100021', '2015050101', '09-308', '06');
INSERT INTO `teacher_course` VALUES (431, '05100001', '100021', '2015050101', '09-302', '15');
INSERT INTO `teacher_course` VALUES (432, '05100001', '100031', '2015050101', '03-104', '17');
INSERT INTO `teacher_course` VALUES (433, '05100001', '100031', '2015050101', '03-108', '05');
INSERT INTO `teacher_course` VALUES (434, '05100002', '100032', '2015050101', '03-109', '19');
INSERT INTO `teacher_course` VALUES (435, '05100002', '100032', '2015050101', '03-207', '10');
INSERT INTO `teacher_course` VALUES (436, '05100006', '100009', '2015050101', '03-207', '02');
INSERT INTO `teacher_course` VALUES (437, '05100006', '100009', '2015050101', '03-103', '11');
INSERT INTO `teacher_course` VALUES (438, '05100005', '100021', '2015050101', '09-302', '03');
INSERT INTO `teacher_course` VALUES (439, '05100005', '100021', '2015050101', '09-301', '01');
INSERT INTO `teacher_course` VALUES (440, '06100002', '100033', '2015060201', '03-305', '02');
INSERT INTO `teacher_course` VALUES (441, '06100002', '100033', '2015060201', '03-105', '08');
INSERT INTO `teacher_course` VALUES (442, '06100003', '100019', '2015060201', '03-205', '21');
INSERT INTO `teacher_course` VALUES (443, '06100003', '100019', '2015060201', '03-303', '17');
INSERT INTO `teacher_course` VALUES (444, '06100001', '100019', '2015060201', '03-307', '15');
INSERT INTO `teacher_course` VALUES (445, '06100001', '100019', '2015060201', '03-206', '13');
INSERT INTO `teacher_course` VALUES (446, '06100004', '100044', '2015060201', '03-109', '11');
INSERT INTO `teacher_course` VALUES (447, '06100004', '100044', '2015060201', '03-305', '24');
INSERT INTO `teacher_course` VALUES (448, '07100001', '100016', '2015070101', '07-104', '01');
INSERT INTO `teacher_course` VALUES (449, '07100001', '100016', '2015070101', '07-108', '11');
INSERT INTO `teacher_course` VALUES (450, '07100001', '100017', '2015070101', '07-204', '18');
INSERT INTO `teacher_course` VALUES (451, '07100001', '100017', '2015070101', '07-101', '20');
INSERT INTO `teacher_course` VALUES (452, '07100003', '100023', '2015070101', '07-208', '13');
INSERT INTO `teacher_course` VALUES (453, '07100003', '100023', '2015070101', '07-205', '02');
INSERT INTO `teacher_course` VALUES (454, '08100004', '100011', '2015080101', '06-207', '16');
INSERT INTO `teacher_course` VALUES (455, '08100004', '100011', '2015080101', '06-202', '24');
INSERT INTO `teacher_course` VALUES (456, '08100004', '100026', '2015080101', '06-307', '13');
INSERT INTO `teacher_course` VALUES (457, '01100002', '100001', '2015090101', '02-106', '02');
INSERT INTO `teacher_course` VALUES (458, '01100002', '100001', '2015090101', '02-204', '18');
INSERT INTO `teacher_course` VALUES (459, '09100001', '100035', '2015090101', '02-301', '07');
INSERT INTO `teacher_course` VALUES (460, '09100001', '100035', '2015090101', '02-110', '19');
INSERT INTO `teacher_course` VALUES (461, '09100001', '100036', '2015090101', '02-302', '17');
INSERT INTO `teacher_course` VALUES (462, '09100001', '100036', '2015090101', '02-206', '10');
INSERT INTO `teacher_course` VALUES (463, '01100003', '100002', '2015010101', '04-306', '09');
INSERT INTO `teacher_course` VALUES (464, '01100003', '100002', '2015010101', '04-210', '19');
INSERT INTO `teacher_course` VALUES (465, '01100001', '100001', '2015010101', '04-101', '12');
INSERT INTO `teacher_course` VALUES (466, '01100004', '100001', '2015010101', '04-106', '15');
INSERT INTO `teacher_course` VALUES (467, '02100003', '100013', '2015020101', '01-309', '05');
INSERT INTO `teacher_course` VALUES (468, '02100001', '100014', '2015020101', '01-108', '15');
INSERT INTO `teacher_course` VALUES (469, '02100001', '100014', '2015020101', '01-206', '17');
INSERT INTO `teacher_course` VALUES (470, '02100005', '100014', '2015020101', '01-302', '13');
INSERT INTO `teacher_course` VALUES (471, '02100005', '100014', '2015020101', '01-309', '09');
INSERT INTO `teacher_course` VALUES (472, '01100003', '100018', '2015020101', '01-209', '01');
INSERT INTO `teacher_course` VALUES (473, '02100004', '100014', '2015020301', '01-106', '08');
INSERT INTO `teacher_course` VALUES (474, '02100004', '100014', '2015020301', '01-202', '14');
INSERT INTO `teacher_course` VALUES (475, '02100002', '100014', '2015020301', '01-307', '09');
INSERT INTO `teacher_course` VALUES (476, '02100002', '100014', '2015020301', '01-308', '03');
INSERT INTO `teacher_course` VALUES (477, '02100003', '100013', '2015020301', '01-310', '10');
INSERT INTO `teacher_course` VALUES (478, '02100003', '100013', '2015020301', '01-308', '02');
INSERT INTO `teacher_course` VALUES (479, '01100003', '100018', '2015020301', '01-206', '12');
INSERT INTO `teacher_course` VALUES (480, '03100002', '100004', '2015030101', '01-106', '07');
INSERT INTO `teacher_course` VALUES (481, '03100002', '100004', '2015030101', '01-107', '25');
INSERT INTO `teacher_course` VALUES (482, '03100002', '100022', '2015040101', '05-305', '24');
INSERT INTO `teacher_course` VALUES (483, '04100002', '100012', '2015040101', '05-105', '14');
INSERT INTO `teacher_course` VALUES (484, '04100002', '100012', '2015040101', '05-110', '08');
INSERT INTO `teacher_course` VALUES (485, '04100003', '100022', '2015040101', '05-307', '15');
INSERT INTO `teacher_course` VALUES (486, '05100001', '100021', '2015050101', '09-304', '23');
INSERT INTO `teacher_course` VALUES (487, '05100001', '100021', '2015050101', '09-305', '04');
INSERT INTO `teacher_course` VALUES (488, '05100001', '100031', '2015050101', '03-306', '02');
INSERT INTO `teacher_course` VALUES (489, '05100001', '100031', '2015050101', '03-305', '20');
INSERT INTO `teacher_course` VALUES (490, '05100002', '100032', '2015050101', '03-202', '25');
INSERT INTO `teacher_course` VALUES (491, '05100002', '100032', '2015050101', '03-107', '07');
INSERT INTO `teacher_course` VALUES (492, '05100006', '100009', '2015050101', '03-106', '05');
INSERT INTO `teacher_course` VALUES (493, '05100006', '100009', '2015050101', '03-303', '06');
INSERT INTO `teacher_course` VALUES (494, '05100005', '100021', '2015050101', '09-108', '16');
INSERT INTO `teacher_course` VALUES (495, '05100005', '100021', '2015050101', '09-301', '21');
INSERT INTO `teacher_course` VALUES (496, '06100002', '100033', '2015060201', '03-303', '02');
INSERT INTO `teacher_course` VALUES (497, '06100002', '100033', '2015060201', '03-304', '08');
INSERT INTO `teacher_course` VALUES (498, '06100003', '100019', '2015060201', '03-109', '03');
INSERT INTO `teacher_course` VALUES (499, '06100003', '100019', '2015060201', '03-304', '24');
INSERT INTO `teacher_course` VALUES (500, '06100001', '100019', '2015060201', '03-306', '13');
INSERT INTO `teacher_course` VALUES (501, '06100001', '100019', '2015060201', '03-203', '16');
INSERT INTO `teacher_course` VALUES (502, '06100004', '100044', '2015060201', '03-105', '22');
INSERT INTO `teacher_course` VALUES (503, '06100004', '100044', '2015060201', '03-109', '10');
INSERT INTO `teacher_course` VALUES (504, '07100001', '100016', '2015070101', '07-110', '04');
INSERT INTO `teacher_course` VALUES (505, '07100001', '100016', '2015070101', '07-103', '25');
INSERT INTO `teacher_course` VALUES (506, '07100001', '100017', '2015070101', '07-104', '20');
INSERT INTO `teacher_course` VALUES (507, '07100001', '100017', '2015070101', '07-105', '15');
INSERT INTO `teacher_course` VALUES (508, '07100003', '100023', '2015070101', '07-303', '11');
INSERT INTO `teacher_course` VALUES (509, '07100003', '100023', '2015070101', '07-210', '12');
INSERT INTO `teacher_course` VALUES (510, '08100004', '100011', '2015080101', '06-108', '04');
INSERT INTO `teacher_course` VALUES (511, '08100004', '100011', '2015080101', '06-101', '01');
INSERT INTO `teacher_course` VALUES (512, '08100004', '100026', '2015080101', '06-307', '07');
INSERT INTO `teacher_course` VALUES (513, '01100002', '100001', '2015090101', '02-206', '02');
INSERT INTO `teacher_course` VALUES (514, '01100002', '100001', '2015090101', '02-102', '18');
INSERT INTO `teacher_course` VALUES (515, '09100001', '100035', '2015090101', '02-108', '24');
INSERT INTO `teacher_course` VALUES (516, '09100001', '100035', '2015090101', '02-204', '21');
INSERT INTO `teacher_course` VALUES (517, '09100001', '100036', '2015090101', '02-210', '14');
INSERT INTO `teacher_course` VALUES (518, '09100001', '100036', '2015090101', '02-102', '15');
INSERT INTO `teacher_course` VALUES (519, '01100007', '100048', '2015010301', '04-210', '05');
INSERT INTO `teacher_course` VALUES (520, '01100009', '100041', '2015010301', '04-106', '19');
INSERT INTO `teacher_course` VALUES (521, '01100009', '100041', '2015010301', '04-303', '23');
INSERT INTO `teacher_course` VALUES (522, '01100010', '100045', '2015010301', '04-209', '04');
INSERT INTO `teacher_course` VALUES (523, '01100010', '100045', '2015010301', '04-301', '24');
INSERT INTO `teacher_course` VALUES (524, '01100002', '100003', '2015010101', '04-208', '12');
INSERT INTO `teacher_course` VALUES (525, '01100002', '100001', '2015010101', '04-206', '02');
INSERT INTO `teacher_course` VALUES (526, '01100003', '100002', '2015010101', '04-103', '21');
INSERT INTO `teacher_course` VALUES (527, '01100003', '100002', '2015010101', '04-202', '24');
INSERT INTO `teacher_course` VALUES (528, '01100004', '100008', '2015010101', '04-303', '15');
INSERT INTO `teacher_course` VALUES (529, '01100004', '100008', '2015010101', '04-203', '08');
INSERT INTO `teacher_course` VALUES (530, '01100005', '100040', '2015010101', '04-209', '14');
INSERT INTO `teacher_course` VALUES (531, '01100005', '100040', '2015010101', '04-301', '10');
INSERT INTO `teacher_course` VALUES (532, '01100005', '100040', '2015010101', '04-102', '19');
INSERT INTO `teacher_course` VALUES (533, '02100003', '100013', '2015020101', '01-210', '05');
INSERT INTO `teacher_course` VALUES (534, '02100001', '100014', '2015020101', '01-107', '06');
INSERT INTO `teacher_course` VALUES (535, '02100001', '100014', '2015020101', '01-107', '19');
INSERT INTO `teacher_course` VALUES (536, '02100005', '100014', '2015020101', '01-306', '16');
INSERT INTO `teacher_course` VALUES (537, '02100005', '100014', '2015020101', '01-208', '01');
INSERT INTO `teacher_course` VALUES (538, '01100003', '100018', '2015020101', '01-305', '20');
INSERT INTO `teacher_course` VALUES (539, '02100004', '100014', '2015020301', '01-206', '08');
INSERT INTO `teacher_course` VALUES (540, '02100004', '100014', '2015020301', '01-305', '14');
INSERT INTO `teacher_course` VALUES (541, '02100002', '100014', '2015020301', '01-105', '25');
INSERT INTO `teacher_course` VALUES (542, '02100002', '100014', '2015020301', '01-306', '12');
INSERT INTO `teacher_course` VALUES (543, '02100003', '100013', '2015020301', '01-207', '17');
INSERT INTO `teacher_course` VALUES (544, '02100003', '100013', '2015020301', '01-207', '15');
INSERT INTO `teacher_course` VALUES (545, '01100003', '100018', '2015020301', '01-201', '20');
INSERT INTO `teacher_course` VALUES (546, '03100002', '100004', '2015030101', '01-206', '13');
INSERT INTO `teacher_course` VALUES (547, '03100002', '100004', '2015030101', '01-110', '05');
INSERT INTO `teacher_course` VALUES (548, '03100002', '100022', '2015040101', '05-304', '22');
INSERT INTO `teacher_course` VALUES (549, '04100002', '100012', '2015040101', '05-201', '06');
INSERT INTO `teacher_course` VALUES (550, '04100002', '100012', '2015040101', '05-106', '12');
INSERT INTO `teacher_course` VALUES (551, '04100003', '100022', '2015040101', '05-306', '17');
INSERT INTO `teacher_course` VALUES (552, '05100001', '100021', '2015050101', '09-101', '21');
INSERT INTO `teacher_course` VALUES (553, '05100001', '100021', '2015050101', '09-309', '06');
INSERT INTO `teacher_course` VALUES (554, '05100001', '100031', '2015050101', '03-303', '25');
INSERT INTO `teacher_course` VALUES (555, '05100001', '100031', '2015050101', '03-107', '03');
INSERT INTO `teacher_course` VALUES (556, '05100002', '100032', '2015050101', '03-201', '18');
INSERT INTO `teacher_course` VALUES (557, '05100002', '100032', '2015050101', '03-207', '12');
INSERT INTO `teacher_course` VALUES (558, '05100006', '100009', '2015050101', '03-206', '08');
INSERT INTO `teacher_course` VALUES (559, '05100006', '100009', '2015050101', '03-202', '13');
INSERT INTO `teacher_course` VALUES (560, '05100005', '100021', '2015050101', '09-107', '17');
INSERT INTO `teacher_course` VALUES (561, '05100005', '100021', '2015050101', '09-204', '15');
INSERT INTO `teacher_course` VALUES (562, '06100002', '100033', '2015060201', '03-108', '02');
INSERT INTO `teacher_course` VALUES (563, '06100002', '100033', '2015060201', '03-208', '08');
INSERT INTO `teacher_course` VALUES (564, '06100003', '100019', '2015060201', '03-110', '16');
INSERT INTO `teacher_course` VALUES (565, '06100003', '100019', '2015060201', '03-207', '05');
INSERT INTO `teacher_course` VALUES (566, '06100001', '100019', '2015060201', '03-206', '22');
INSERT INTO `teacher_course` VALUES (567, '06100001', '100019', '2015060201', '03-108', '21');
INSERT INTO `teacher_course` VALUES (568, '06100004', '100044', '2015060201', '03-103', '25');
INSERT INTO `teacher_course` VALUES (569, '06100004', '100044', '2015060201', '03-104', '06');
INSERT INTO `teacher_course` VALUES (570, '07100001', '100016', '2015070101', '07-203', '01');
INSERT INTO `teacher_course` VALUES (571, '07100001', '100016', '2015070101', '07-203', '09');
INSERT INTO `teacher_course` VALUES (572, '07100001', '100017', '2015070101', '07-202', '10');
INSERT INTO `teacher_course` VALUES (573, '07100001', '100017', '2015070101', '07-102', '03');
INSERT INTO `teacher_course` VALUES (574, '07100003', '100023', '2015070101', '07-207', '15');
INSERT INTO `teacher_course` VALUES (575, '07100003', '100023', '2015070101', '07-205', '24');
INSERT INTO `teacher_course` VALUES (576, '08100004', '100011', '2015080101', '06-109', '03');
INSERT INTO `teacher_course` VALUES (577, '08100004', '100011', '2015080101', '06-104', '17');
INSERT INTO `teacher_course` VALUES (578, '08100004', '100026', '2015080101', '06-310', '07');
INSERT INTO `teacher_course` VALUES (579, '01100002', '100001', '2015090101', '02-107', '02');
INSERT INTO `teacher_course` VALUES (580, '01100002', '100001', '2015090101', '02-103', '18');
INSERT INTO `teacher_course` VALUES (581, '09100001', '100035', '2015090101', '02-209', '16');
INSERT INTO `teacher_course` VALUES (582, '09100001', '100035', '2015090101', '02-102', '09');
INSERT INTO `teacher_course` VALUES (583, '09100001', '100036', '2015090101', '02-104', '12');
INSERT INTO `teacher_course` VALUES (584, '09100001', '100036', '2015090101', '02-108', '15');
INSERT INTO `teacher_course` VALUES (585, '01100007', '100048', '2015010301', '04-105', '05');
INSERT INTO `teacher_course` VALUES (586, '01100009', '100041', '2015010301', '04-208', '20');
INSERT INTO `teacher_course` VALUES (587, '01100009', '100041', '2015010301', '04-207', '11');
INSERT INTO `teacher_course` VALUES (588, '01100010', '100045', '2015010301', '04-108', '18');
INSERT INTO `teacher_course` VALUES (589, '01100010', '100045', '2015010301', '04-201', '24');
INSERT INTO `teacher_course` VALUES (590, '01100011', '100001', '2015010101', '04-208', '02');
INSERT INTO `teacher_course` VALUES (591, '01100003', '100002', '2015010101', '04-102', '19');
INSERT INTO `teacher_course` VALUES (592, '01100003', '100002', '2015010101', '04-104', '01');
INSERT INTO `teacher_course` VALUES (593, '01100004', '100008', '2015010101', '04-303', '22');
INSERT INTO `teacher_course` VALUES (594, '01100004', '100008', '2015010101', '04-208', '12');
INSERT INTO `teacher_course` VALUES (595, '01100005', '100040', '2015010101', '04-106', '10');
INSERT INTO `teacher_course` VALUES (596, '01100005', '100040', '2015010101', '04-302', '25');
INSERT INTO `teacher_course` VALUES (597, '01100005', '100040', '2015010101', '04-203', '24');
INSERT INTO `teacher_course` VALUES (598, '01100007', '100003', '2015010101', '04-107', '15');
INSERT INTO `teacher_course` VALUES (599, '02100003', '100013', '2015020101', '01-302', '05');
INSERT INTO `teacher_course` VALUES (600, '02100001', '100014', '2015020101', '01-103', '10');
INSERT INTO `teacher_course` VALUES (601, '02100001', '100014', '2015020101', '01-301', '08');
INSERT INTO `teacher_course` VALUES (602, '02100005', '100014', '2015020101', '01-103', '14');
INSERT INTO `teacher_course` VALUES (603, '02100005', '100014', '2015020101', '01-309', '03');
INSERT INTO `teacher_course` VALUES (604, '01100003', '100018', '2015020101', '01-201', '15');
INSERT INTO `teacher_course` VALUES (605, '02100004', '100014', '2015020301', '01-209', '08');
INSERT INTO `teacher_course` VALUES (606, '02100004', '100014', '2015020301', '01-307', '14');
INSERT INTO `teacher_course` VALUES (607, '02100002', '100014', '2015020301', '01-308', '19');
INSERT INTO `teacher_course` VALUES (608, '02100002', '100014', '2015020301', '01-106', '15');
INSERT INTO `teacher_course` VALUES (609, '02100003', '100013', '2015020301', '01-306', '03');
INSERT INTO `teacher_course` VALUES (610, '02100003', '100013', '2015020301', '01-210', '06');
INSERT INTO `teacher_course` VALUES (611, '01100003', '100018', '2015020301', '01-309', '24');
INSERT INTO `teacher_course` VALUES (612, '03100002', '100004', '2015030101', '01-105', '03');
INSERT INTO `teacher_course` VALUES (613, '03100002', '100004', '2015030101', '01-110', '14');
INSERT INTO `teacher_course` VALUES (614, '03100002', '100022', '2015040101', '05-301', '23');
INSERT INTO `teacher_course` VALUES (615, '04100002', '100012', '2015040101', '05-103', '01');
INSERT INTO `teacher_course` VALUES (616, '04100002', '100012', '2015040101', '05-204', '20');
INSERT INTO `teacher_course` VALUES (617, '04100003', '100022', '2015040101', '05-309', '03');
INSERT INTO `teacher_course` VALUES (618, '05100001', '100021', '2015050101', '09-309', '17');
INSERT INTO `teacher_course` VALUES (619, '05100001', '100021', '2015050101', '09-209', '13');
INSERT INTO `teacher_course` VALUES (620, '05100001', '100031', '2015050101', '03-103', '09');
INSERT INTO `teacher_course` VALUES (621, '05100001', '100031', '2015050101', '03-307', '06');
INSERT INTO `teacher_course` VALUES (622, '05100002', '100032', '2015050101', '03-305', '23');
INSERT INTO `teacher_course` VALUES (623, '05100002', '100032', '2015050101', '03-304', '03');
INSERT INTO `teacher_course` VALUES (624, '05100006', '100009', '2015050101', '03-206', '02');
INSERT INTO `teacher_course` VALUES (625, '05100006', '100009', '2015050101', '03-109', '04');
INSERT INTO `teacher_course` VALUES (626, '05100005', '100021', '2015050101', '09-203', '05');
INSERT INTO `teacher_course` VALUES (627, '05100005', '100021', '2015050101', '09-108', '21');
INSERT INTO `teacher_course` VALUES (628, '06100002', '100033', '2015060201', '03-302', '02');
INSERT INTO `teacher_course` VALUES (629, '06100002', '100033', '2015060201', '03-306', '08');
INSERT INTO `teacher_course` VALUES (630, '06100003', '100019', '2015060201', '03-206', '01');
INSERT INTO `teacher_course` VALUES (631, '06100003', '100019', '2015060201', '03-305', '04');
INSERT INTO `teacher_course` VALUES (632, '06100001', '100019', '2015060201', '03-106', '03');
INSERT INTO `teacher_course` VALUES (633, '06100001', '100019', '2015060201', '03-106', '18');
INSERT INTO `teacher_course` VALUES (634, '06100004', '100044', '2015060201', '03-308', '24');
INSERT INTO `teacher_course` VALUES (635, '06100004', '100044', '2015060201', '03-201', '05');
INSERT INTO `teacher_course` VALUES (636, '07100001', '100016', '2015070101', '07-105', '11');
INSERT INTO `teacher_course` VALUES (637, '07100001', '100016', '2015070101', '07-110', '21');
INSERT INTO `teacher_course` VALUES (638, '07100001', '100017', '2015070101', '07-202', '25');
INSERT INTO `teacher_course` VALUES (639, '07100001', '100017', '2015070101', '07-110', '19');
INSERT INTO `teacher_course` VALUES (640, '07100003', '100023', '2015070101', '07-304', '23');
INSERT INTO `teacher_course` VALUES (641, '07100003', '100023', '2015070101', '07-209', '22');
INSERT INTO `teacher_course` VALUES (642, '08100004', '100011', '2015080101', '06-105', '13');
INSERT INTO `teacher_course` VALUES (643, '08100004', '100011', '2015080101', '06-106', '11');
INSERT INTO `teacher_course` VALUES (644, '08100004', '100026', '2015080101', '06-307', '25');
INSERT INTO `teacher_course` VALUES (645, '01100002', '100001', '2015090101', '02-204', '02');
INSERT INTO `teacher_course` VALUES (646, '01100002', '100001', '2015090101', '02-106', '18');
INSERT INTO `teacher_course` VALUES (647, '09100001', '100035', '2015090101', '02-103', '19');
INSERT INTO `teacher_course` VALUES (648, '09100001', '100035', '2015090101', '02-206', '09');
INSERT INTO `teacher_course` VALUES (649, '09100001', '100036', '2015090101', '02-302', '04');
INSERT INTO `teacher_course` VALUES (650, '09100001', '100036', '2015090101', '02-301', '24');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacherName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(4) NULL DEFAULT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES (1, '01100001', '李小王', '01', 46, '教授');
INSERT INTO `teacher_info` VALUES (2, '01100002', '谢天', '01', 37, '讲师');
INSERT INTO `teacher_info` VALUES (3, '01100003', '张三丰', '01', 45, '副教授');
INSERT INTO `teacher_info` VALUES (4, '01100004', '郭广辉', '01', 48, '副教授');
INSERT INTO `teacher_info` VALUES (5, '01100005', '王益利', '01', 36, '讲师');
INSERT INTO `teacher_info` VALUES (6, '01100007', '刘思佳', '01', 34, '讲师');
INSERT INTO `teacher_info` VALUES (7, '02100001', '周玲', '02', 34, '讲师');
INSERT INTO `teacher_info` VALUES (8, '02100002', '黎佳果', '02', 45, '副教授');
INSERT INTO `teacher_info` VALUES (9, '02100003', '刘致希', '02', 48, '教授');
INSERT INTO `teacher_info` VALUES (10, '02100004', '杨逸庭', '02', 33, '讲师');
INSERT INTO `teacher_info` VALUES (11, '02100005', '唐影', '02', 43, '副教授');
INSERT INTO `teacher_info` VALUES (12, '02100006', '陈茜', '02', 47, '教授');
INSERT INTO `teacher_info` VALUES (13, '03100001', '李佳琳', '03', 40, '副教授');
INSERT INTO `teacher_info` VALUES (14, '03100002', '李霞', '03', 39, '讲师');
INSERT INTO `teacher_info` VALUES (15, '03100003', '李璐', '03', 32, '讲师');
INSERT INTO `teacher_info` VALUES (16, '03100004', '王鸿鑫', '03', 36, '讲师');
INSERT INTO `teacher_info` VALUES (17, '03100005', '文琳', '03', 33, '讲师');
INSERT INTO `teacher_info` VALUES (18, '03100007', '王晶', '03', 34, '讲师');
INSERT INTO `teacher_info` VALUES (19, '04100001', '龙利星', '04', 46, '教授');
INSERT INTO `teacher_info` VALUES (20, '04100002', '郭文峰', '04', 43, '副教授');
INSERT INTO `teacher_info` VALUES (21, '04100003', '李烁宇', '04', 35, '讲师');
INSERT INTO `teacher_info` VALUES (22, '04100004', '邓玉坤', '04', 49, '教授');
INSERT INTO `teacher_info` VALUES (23, '04100005', '丁赛', '04', 42, '讲师');
INSERT INTO `teacher_info` VALUES (24, '04100006', '王坤', '04', 43, '副教授');
INSERT INTO `teacher_info` VALUES (25, '04100007', '李星', '04', 42, '讲师');
INSERT INTO `teacher_info` VALUES (26, '05100001', '罗湘文', '05', 52, '教授');
INSERT INTO `teacher_info` VALUES (27, '05100002', '刘博', '05', 42, '讲师');
INSERT INTO `teacher_info` VALUES (28, '05100003', '刘湘', '05', 47, '讲师');
INSERT INTO `teacher_info` VALUES (29, '05100004', '付琦', '05', 48, '教授');
INSERT INTO `teacher_info` VALUES (30, '05100005', '李梦', '05', 48, '教授');
INSERT INTO `teacher_info` VALUES (31, '05100006', '阳向鸿', '05', 43, '讲师');
INSERT INTO `teacher_info` VALUES (32, '05100007', '阳辉', '05', 43, '讲师');
INSERT INTO `teacher_info` VALUES (33, '05100008', '严刑', '05', 51, '教授');
INSERT INTO `teacher_info` VALUES (34, '05100009', '刘辉', '05', 48, '副教授');
INSERT INTO `teacher_info` VALUES (35, '06100001', '刘呀', '06', 49, '教授');
INSERT INTO `teacher_info` VALUES (36, '06100002', '王二', '06', 43, '讲师');
INSERT INTO `teacher_info` VALUES (37, '06100003', '陈睿', '06', 46, '副教授');
INSERT INTO `teacher_info` VALUES (38, '06100004', '陈天骄', '06', 51, '教授');
INSERT INTO `teacher_info` VALUES (39, '06100005', '康阳', '06', 43, '讲师');
INSERT INTO `teacher_info` VALUES (40, '06100006', '邓香玲', '06', 46, '副教授');
INSERT INTO `teacher_info` VALUES (41, '07100001', '宫禧', '07', 48, '教授');
INSERT INTO `teacher_info` VALUES (42, '07100002', '阳茜', '07', 45, '副教授');
INSERT INTO `teacher_info` VALUES (43, '07100003', '欧阳锋', '07', 43, '讲师');
INSERT INTO `teacher_info` VALUES (44, '07100004', '程心', '07', 45, '副教授');
INSERT INTO `teacher_info` VALUES (45, '07100004', '程心', '07', 45, '副教授');
INSERT INTO `teacher_info` VALUES (46, '07100005', '刘旭', '07', 43, '讲师');
INSERT INTO `teacher_info` VALUES (47, '08100001', '伊脉', '08', 43, '讲师');
INSERT INTO `teacher_info` VALUES (48, '08100002', '游海霞', '08', 46, '副教授');
INSERT INTO `teacher_info` VALUES (49, '08100003', '章子秋', '08', 47, '副教授');
INSERT INTO `teacher_info` VALUES (50, '08100004', '唐慧玲', '08', 48, '教授');
INSERT INTO `teacher_info` VALUES (51, '08100005', '陈澄珏', '08', 47, '教授');
INSERT INTO `teacher_info` VALUES (52, '08100006', '廖维涵', '08', 43, '讲师');
INSERT INTO `teacher_info` VALUES (53, '09100001', '何耀文', '09', 37, '讲师');
INSERT INTO `teacher_info` VALUES (54, '09100002', '李月庭', '09', 40, '讲师');
INSERT INTO `teacher_info` VALUES (55, '09100003', '陈云婷', '09', 47, '教授');
INSERT INTO `teacher_info` VALUES (56, '09100004', '颜亚兰', '09', 43, '副教授');
INSERT INTO `teacher_info` VALUES (57, '09100005', '陈浩文', '09', 45, '副教授');
INSERT INTO `teacher_info` VALUES (58, '10100001', '陈敏怡', '10', 48, '教授');
INSERT INTO `teacher_info` VALUES (59, '10100002', '梁静仪', '10', 45, '讲师');
INSERT INTO `teacher_info` VALUES (60, '10100003', '徐雁鸿', '10', 43, '讲师');
INSERT INTO `teacher_info` VALUES (61, '10100004', '向飞鹏', '10', 45, '副教授');
INSERT INTO `teacher_info` VALUES (62, '10100005', '谷凯丽', '10', 47, '副教授');
INSERT INTO `teacher_info` VALUES (63, '10100006', '郭潘志', '10', 46, '副教授');
INSERT INTO `teacher_info` VALUES (64, '11100001', '罗阳', '11', 52, '教授');
INSERT INTO `teacher_info` VALUES (65, '11100002', '胡婷', '11', 45, '副教授');
INSERT INTO `teacher_info` VALUES (66, '11100003', '宁文琴', '11', 35, '讲师');
INSERT INTO `teacher_info` VALUES (67, '11100004', '李亚男', '11', 37, '讲师');
INSERT INTO `teacher_info` VALUES (68, '11100005', '罗天阳', '11', 43, '副教授');
INSERT INTO `teacher_info` VALUES (69, '11100006', '赵小娇', '11', 42, '讲师');
INSERT INTO `teacher_info` VALUES (70, '12100001', '邓雪乔', '12', 43, '副教授');
INSERT INTO `teacher_info` VALUES (71, '12100002', '赵雪', '12', 49, '教授');
INSERT INTO `teacher_info` VALUES (72, '12100003', '王华', '12', 41, '讲师');
INSERT INTO `teacher_info` VALUES (73, '12100004', '陈雪刚', '12', 43, '讲师');
INSERT INTO `teacher_info` VALUES (74, '12100005', '王小明', '12', 47, '副教授');
INSERT INTO `teacher_info` VALUES (75, '12100006', '王也', '12', 43, '讲师');
INSERT INTO `teacher_info` VALUES (76, '12100007', '陈乔', '12', 36, '讲师');
INSERT INTO `teacher_info` VALUES (77, '13100001', '田明金', '13', 42, '副教授');
INSERT INTO `teacher_info` VALUES (78, '13100002', '赵卓', '13', 46, '副教授');
INSERT INTO `teacher_info` VALUES (79, '13100003', '何柱铭', '13', 42, '讲师');
INSERT INTO `teacher_info` VALUES (80, '13100004', '徐娉婷', '13', 41, '讲师');
INSERT INTO `teacher_info` VALUES (81, '13100005', '李亿豪', '13', 48, '教授');
INSERT INTO `teacher_info` VALUES (82, '13100006', '肖禄', '13', 37, '讲师');
INSERT INTO `teacher_info` VALUES (83, '13100007', '王文康', '13', 39, '讲师');
INSERT INTO `teacher_info` VALUES (84, '14100001', '吴皖瑶', '14', 39, '教授');
INSERT INTO `teacher_info` VALUES (85, '14100002', '邓香玲', '14', 42, '副教授');
INSERT INTO `teacher_info` VALUES (86, '14100003', '蔡娥', '14', 46, '副教授');
INSERT INTO `teacher_info` VALUES (87, '14100004', '谭艳', '14', 42, '讲师');
INSERT INTO `teacher_info` VALUES (88, '14100005', '王娟', '14', 43, '讲师');
INSERT INTO `teacher_info` VALUES (89, '14100006', '赵娟', '14', 43, '讲师');
INSERT INTO `teacher_info` VALUES (90, '14100007', '王凯', '14', 45, '副教授');
INSERT INTO `teacher_info` VALUES (91, '15100001', '杨江南', '15', 41, '教授');
INSERT INTO `teacher_info` VALUES (92, '15100002', '朱登科', '15', 42, '教授');
INSERT INTO `teacher_info` VALUES (93, '15100003', '刘开郎', '15', 42, '讲师');
INSERT INTO `teacher_info` VALUES (94, '15100004', '曾上海', '15', 39, '讲师');
INSERT INTO `teacher_info` VALUES (95, '15100005', '汤旭煌', '15', 47, '副教授');
INSERT INTO `teacher_info` VALUES (96, '15100006', '何友情', '15', 43, '讲师');
INSERT INTO `teacher_info` VALUES (97, '15100007', '陈陪陪', '15', 46, '副教授');
INSERT INTO `teacher_info` VALUES (98, '15100008', '王帅', '15', 47, '副教授');
INSERT INTO `teacher_info` VALUES (99, '15100009', '将胜利', '15', 42, '讲师');
INSERT INTO `teacher_info` VALUES (100, '15100010', '严肃', '15', 45, '讲师');
INSERT INTO `teacher_info` VALUES (101, '01100008', '张华', '01', 37, '讲师');
INSERT INTO `teacher_info` VALUES (102, '01100009', '刘强', '01', 52, '教授');
INSERT INTO `teacher_info` VALUES (103, '01100010', '张忠周', '01', 43, '讲师');
INSERT INTO `teacher_info` VALUES (104, '01100011', '陈文福', '01', 37, '讲师');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '123456', '123456', '2');
INSERT INTO `user_info` VALUES (2, '000001', '123456', '1');
INSERT INTO `user_info` VALUES (3, '100001', '123456', '2');
INSERT INTO `user_info` VALUES (4, '100002', '123456', '2');
INSERT INTO `user_info` VALUES (5, '100003', '123456', '2');
INSERT INTO `user_info` VALUES (6, '100004', '123456', '2');

SET FOREIGN_KEY_CHECKS = 1;
