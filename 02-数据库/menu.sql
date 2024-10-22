/*
 Navicat Premium Data Transfer

 Source Server         : Local instance
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : becs

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 19/06/2024 16:20:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `URL` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `father` int(0)  NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '个人管理', '/userindex', 12);
INSERT INTO `menu` VALUES (2, '用户列表', '/user', 12);
INSERT INTO `menu` VALUES (3, '合同列表', '/contract', 13);
INSERT INTO `menu` VALUES (4, '合同模板', '/demo', 13);
INSERT INTO `menu` VALUES (5, '合同审核', '/audit', 13);
INSERT INTO `menu` VALUES (6, '印章列表', '/seal', 14);
INSERT INTO `menu` VALUES (7, '持有印章', '/myseal', 14);
INSERT INTO `menu` VALUES (8, '全部合同', '/usercontract', 15);
INSERT INTO `menu` VALUES (9, '待处理合同', '/proces', 15);
INSERT INTO `menu` VALUES (10, '用户手册', '/book', 16);
INSERT INTO `menu` VALUES (11, '常见问题解答', '/answer', 16);
INSERT INTO `menu` VALUES (12, '用户管理', '', 0);
INSERT INTO `menu` VALUES (13, '合同管理', '', 0);
INSERT INTO `menu` VALUES (14, '印章管理', '', 0);
INSERT INTO `menu` VALUES (15, '我的合同', '', 0);
INSERT INTO `menu` VALUES (16, '帮助和支持', '', 0);

SET FOREIGN_KEY_CHECKS = 1;
