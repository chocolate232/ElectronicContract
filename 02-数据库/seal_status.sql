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

 Date: 05/06/2024 16:06:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for seal_status
-- ----------------------------
DROP TABLE IF EXISTS `seal_status`;
CREATE TABLE `seal_status`  (
                                `id` int unsigned NOT NULL AUTO_INCREMENT,
                                `status` varchar(255) CHARACTER SET utf8mb4 NULL DEFAULT '',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 ;

-- ----------------------------
-- Records of seal_status
-- ----------------------------
INSERT INTO `seal_status` VALUES (1, '激活');
INSERT INTO `seal_status` VALUES (2, '停用');
INSERT INTO `seal_status` VALUES (3, '过期');

SET FOREIGN_KEY_CHECKS = 1;
