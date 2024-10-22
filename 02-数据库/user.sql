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

 Date: 15/05/2024 14:46:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
  `role` int(0) NOT NULL DEFAULT 2 ,
  `create_data` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_del` bool NOT NULL DEFAULT false,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_email_unique` (`username`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
