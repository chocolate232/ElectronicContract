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

 Date: 27/05/2024 11:23:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
                         `id` int(0) NOT NULL AUTO_INCREMENT,
                         `identity` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
                         `hash` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '' COMMENT '文件的唯一标识',
                         `name` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
                         `path` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
                         `size` int unsigned NOT NULL DEFAULT 0,
                         `type` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
                         `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         `is_delete` tinyint(1) NOT NULL DEFAULT 0,
                         PRIMARY KEY (`id`) USING BTREE,
                         UNIQUE INDEX `hash`(`hash`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
