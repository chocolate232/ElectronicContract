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

 Date: 05/06/2024 13:17:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for seal
-- ----------------------------
DROP TABLE IF EXISTS `seal`;
CREATE TABLE `seal`  (
                         `id` int  NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) CHARACTER SET utf8mb4  NOT NULL DEFAULT '',
                         `creator` int  NOT NULL DEFAULT 0,
                         `file_id` int  NOT NULL DEFAULT 0,
                         `seal_state` int  NOT NULL DEFAULT 0,
                         `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
                         `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                         `is_delete` bool NOT NULL default false,
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
