/*
 Navicat Premium Data Transfer

 Source Server         : Ervelia
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : account

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2022 14:49:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(24) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT '',
  `password` varchar(191) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(16) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT '',
  `social_id` varchar(13) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT '',
  `email` varchar(64) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT '',
  `phone1` varchar(16) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `phone2` varchar(16) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `address` varchar(128) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `zipcode` varchar(7) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT '',
  `create_time` datetime NULL DEFAULT NULL,
  `question1` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `answer1` varchar(48) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `question2` varchar(48) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `answer2` varchar(48) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `is_testor` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(8) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT 'OK',
  `securitycode` varchar(192) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT '',
  `newsletter` tinyint(1) NULL DEFAULT 0,
  `empire` tinyint(4) NOT NULL DEFAULT 0,
  `name_checked` tinyint(1) NOT NULL DEFAULT 0,
  `availDt` datetime NULL DEFAULT NULL,
  `mileage` int(11) NOT NULL DEFAULT 0,
  `cash` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gold_expire` datetime NULL DEFAULT NULL,
  `silver_expire` datetime NULL DEFAULT NULL,
  `safebox_expire` date NOT NULL DEFAULT '2030-01-01',
  `autoloot_expire` date NOT NULL DEFAULT '2030-01-01',
  `fish_mind_expire` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `marriage_fast_expire` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `money_drop_rate_expire` datetime NULL DEFAULT NULL,
  `alignment_rgb_pack` datetime NULL DEFAULT NULL,
  `last_play` datetime NULL DEFAULT NULL,
  `web_admin` int(1) NOT NULL DEFAULT 0,
  `web_ip` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `web_confirm` varchar(32) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newpassword` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `date_password_recover` datetime NULL DEFAULT NULL,
  `newcode` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newemail` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newpassword_hash` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newpassword_mag` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newpassword_mag_hash` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newemail_hash` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `newcode_hash` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `password_recover` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `active_hash` varchar(90) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `ban_by` int(11) NULL DEFAULT NULL,
  `ban_date` datetime NULL DEFAULT NULL,
  `ban_reason` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `warning_level` int(2) NULL DEFAULT NULL,
  `coins` int(5) UNSIGNED NULL DEFAULT 0,
  `return` int(2) NOT NULL DEFAULT 0,
  `pin` varchar(5) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT '0000',
  `last_activity` datetime NULL DEFAULT NULL,
  `p_reference_id` int(11) NULL DEFAULT NULL,
  `email_change_token` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `email_change_token_created_at` datetime NULL DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `password_reset_token_created_at` datetime NULL DEFAULT NULL,
  `last_ip` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `banned_by` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `reference_id` int(11) NULL DEFAULT NULL,
  `admin` tinyint(1) NULL DEFAULT 0,
  `has_reflink` tinyint(1) NULL DEFAULT 0,
  `reflink_count` int(11) NULL DEFAULT 0,
  `referal_id` int(11) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NOT NULL DEFAULT '0',
  `ref_done` tinyint(1) NULL DEFAULT 0,
  `email_verified_at` datetime NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `remind_token` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `ban_count` tinyint(5) NULL DEFAULT 0,
  `create_ip` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  `hardware_id` varchar(255) CHARACTER SET latin2 COLLATE latin2_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login`(`login`) USING BTREE,
  INDEX `social_id`(`social_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62823 CHARACTER SET = latin2 COLLATE = latin2_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for block_exception
-- ----------------------------
DROP TABLE IF EXISTS `block_exception`;
CREATE TABLE `block_exception`  (
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT ''
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gametime
-- ----------------------------
DROP TABLE IF EXISTS `gametime`;
CREATE TABLE `gametime`  (
  `UserID` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `paymenttype` tinyint(2) NOT NULL DEFAULT 1,
  `LimitTime` int(11) UNSIGNED NULL DEFAULT 0,
  `LimitDt` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `Scores` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gametimeip
-- ----------------------------
DROP TABLE IF EXISTS `gametimeip`;
CREATE TABLE `gametimeip`  (
  `ipid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  `startIP` int(11) NOT NULL DEFAULT 0,
  `endIP` int(11) NOT NULL DEFAULT 255,
  `paymenttype` tinyint(2) NOT NULL DEFAULT 1,
  `LimitTime` int(11) NOT NULL DEFAULT 0,
  `LimitDt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `readme` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ipid`) USING BTREE,
  UNIQUE INDEX `ip_uniq`(`ip`, `startIP`, `endIP`) USING BTREE,
  INDEX `ip_idx`(`ip`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gametimelog
-- ----------------------------
DROP TABLE IF EXISTS `gametimelog`;
CREATE TABLE `gametimelog`  (
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` enum('IP_FREE','FREE','IP_TIME','IP_DAY','TIME','DAY') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logon_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `use_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  `server` varchar(56) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  INDEX `login_key`(`login`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hardwareban
-- ----------------------------
DROP TABLE IF EXISTS `hardwareban`;
CREATE TABLE `hardwareban`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for iptocountry
-- ----------------------------
DROP TABLE IF EXISTS `iptocountry`;
CREATE TABLE `iptocountry`  (
  `IP_FROM` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IP_TO` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COUNTRY_NAME` varchar(56) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locale_en
-- ----------------------------
DROP TABLE IF EXISTS `locale_en`;
CREATE TABLE `locale_en`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varbinary(255) NULL DEFAULT NULL,
  `translation` varbinary(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 346 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8534 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varbinary(255) NULL DEFAULT NULL,
  `translation` varbinary(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1100 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for to_add
-- ----------------------------
DROP TABLE IF EXISTS `to_add`;
CREATE TABLE `to_add`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varbinary(255) NULL DEFAULT NULL,
  `translation` varbinary(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
