SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract`  (
                             `id` int unsigned NOT NULL AUTO_INCREMENT,
                             `file_id` int unsigned NOT NULL,
                             `title` varchar(255) CHARACTER SET utf8mb4  NOT NULL,
                             `creator` int unsigned NOT NULL,
                             `receiver` int unsigned NOT NULL,
                             `contract_state` int unsigned NOT NULL ,
                             sign_time      datetime    NOT NULL ,
                             `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ,
                             `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                             `is_delete` bool NOT NULL default false,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 ;

SET FOREIGN_KEY_CHECKS = 1;
