/*
 Navicat Premium Data Transfer

 Source Server         : Ervelia
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : common

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2022 14:50:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exp_table
-- ----------------------------
DROP TABLE IF EXISTS `exp_table`;
CREATE TABLE `exp_table`  (
  `level` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gmconfig
-- ----------------------------
DROP TABLE IF EXISTS `gmconfig`;
CREATE TABLE `gmconfig`  (
  `authority` enum('IMPLEMENTOR','GOD','WIZARD','LOW_WIZARD','HIGH_WIZARD','PLAYER','VIP') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `general_allow` set('GM_ALLOW_DROP_PLAYER_ITEM','GM_ALLOW_DROP_GM_ITEM','GM_ALLOW_EXCHANGE_PLAYER_ITEM_TO_GM','GM_ALLOW_EXCHANGE_PLAYER_ITEM_TO_PLAYER','GM_ALLOW_EXCHANGE_GOLD_TO_PLAYER','GM_ALLOW_EXCHANGE_GM_ITEM_TO_GM','GM_ALLOW_EXCHANGE_GM_ITEM_TO_PLAYER','GM_ALLOW_EXCHANGE_GOLD_TO_GM','GM_ALLOW_EXCHANGE_TO_GM','GM_ALLOW_EXCHANGE_TO_PLAYER','GM_ALLOW_EXCHANGE_ANTIGIVE','GM_ALLOW_BUY_PRIVATE_ITEM','GM_ALLOW_CREATE_PRIVATE_SHOP','GM_ALLOW_USE_SAFEBOX','GM_ALLOW_CREATE_PLAYER','GM_ALLOW_DELETE_PLAYER','GM_ALLOW_ADMIN_MANAGER','GM_ALLOW_MODIFY_OTHERS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `manager_allow` set('ALLOW_VIEW_ONLINE_LIST','ALLOW_VIEW_ONLINE_COUNT','ALLOW_GM_TRADE_BLOCK_OPTION','ALLOW_MAPVIEWER','ALLOW_VIEW_MAPVIEWER_NPC','ALLOW_VIEW_MAPVIEWER_STONE','ALLOW_VIEW_MAPVIEWER_MONSTER','ALLOW_VIEW_MAPVIEWER_PLAYER','ALLOW_OBSERVER','ALLOW_VIEW_OBSERVER_GOLD','ALLOW_VIEW_OBSERVER_SKILL','ALLOW_VIEW_OBSERVER_EQUIPMENT','ALLOW_VIEW_OBSERVER_INVENTORY','ALLOW_OBSERVER_CHATBAN','ALLOW_OBSERVER_ACCOUNTBAN','ALLOW_OBSERVER_PERMA_ACCOUNTBAN','ALLOW_BAN','ALLOW_VIEW_BAN_CHAT','ALLOW_VIEW_BAN_CHAT_LOG','ALLOW_BAN_CHAT','ALLOW_VIEW_BAN_ACCOUNT','ALLOW_VIEW_BAN_ACCOUNT_LOG','ALLOW_BAN_ACCOUNT','ALLOW_ITEM','ALLOW_VIEW_ITEM') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for gmhost
-- ----------------------------
DROP TABLE IF EXISTS `gmhost`;
CREATE TABLE `gmhost`  (
  `mIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mIP`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gmlist
-- ----------------------------
DROP TABLE IF EXISTS `gmlist`;
CREATE TABLE `gmlist`  (
  `mID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mAccount` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mName` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mContactIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mServerIP` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'ALL',
  `mAuthority` enum('IMPLEMENTOR','HIGH_WIZARD','GOD','LOW_WIZARD','PLAYER') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'PLAYER',
  PRIMARY KEY (`mID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1002 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for locale
-- ----------------------------
DROP TABLE IF EXISTS `locale`;
CREATE TABLE `locale`  (
  `mKey` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mValue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mKey`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for priv_settings
-- ----------------------------
DROP TABLE IF EXISTS `priv_settings`;
CREATE TABLE `priv_settings`  (
  `priv_type` enum('PLAYER','GUILD','EMPIRE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'EMPIRE' COMMENT 'GUILD and PLAYER are untested.',
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'this is for empire_id, player_id or guild_id',
  `type` int(10) UNSIGNED NOT NULL DEFAULT 4 COMMENT '1:item_drop, 2:gold_drop, 3:gold10_drop, 4:exp (1~4)',
  `value` int(11) NOT NULL DEFAULT 0 COMMENT '0~1000%',
  `duration` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`priv_type`, `id`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spam_db
-- ----------------------------
DROP TABLE IF EXISTS `spam_db`;
CREATE TABLE `spam_db`  (
  `word` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `score` int(3) NOT NULL DEFAULT 1,
  `type` enum('SPAM','MAPS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SPAM',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
