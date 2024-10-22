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

 Date: 19/06/2024 16:32:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `role_id` int(0) NOT NULL,
  `menu_id` int(0) NOT NULL

) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (1, 1);
INSERT INTO `role_menu` VALUES (1, 2);
INSERT INTO `role_menu` VALUES (1, 3);
INSERT INTO `role_menu` VALUES (1, 4);
INSERT INTO `role_menu` VALUES (1, 5);
INSERT INTO `role_menu` VALUES (1, 6);
INSERT INTO `role_menu` VALUES (2, 1);
INSERT INTO `role_menu` VALUES (2, 4);
INSERT INTO `role_menu` VALUES (2, 7);
INSERT INTO `role_menu` VALUES (2, 8);
INSERT INTO `role_menu` VALUES (2, 9);
INSERT INTO `role_menu` VALUES (2, 10);
INSERT INTO `role_menu` VALUES (2, 11);

SET FOREIGN_KEY_CHECKS = 1;
