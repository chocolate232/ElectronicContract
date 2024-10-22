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

 Date: 29/05/2024 19:47:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contract_state
-- ----------------------------
DROP TABLE IF EXISTS `contract_state`;
CREATE TABLE `contract_state`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
