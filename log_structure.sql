/*
 Navicat Premium Data Transfer

 Source Server         : Ervelia
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : log

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2022 14:50:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acce
-- ----------------------------
DROP TABLE IF EXISTS `acce`;
CREATE TABLE `acce`  (
  `pid` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `x` int(1) NOT NULL,
  `y` int(1) NOT NULL,
  `item_vnum` int(11) NOT NULL,
  `item_uid` int(11) NOT NULL,
  `item_count` smallint(3) NOT NULL,
  `item_abs_chance` smallint(3) NOT NULL,
  `success` varbinary(3) NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_general_cs ROW_FORMAT = FIXED;

-- ----------------------------
-- Table structure for ban_log
-- ----------------------------
DROP TABLE IF EXISTS `ban_log`;
CREATE TABLE `ban_log`  (
  `pid` int(24) UNSIGNED NOT NULL,
  `aid` int(24) UNSIGNED NOT NULL,
  `name` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gm_pid` int(24) NOT NULL,
  `gm_name` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` enum('BAN_LOG_TYPE_CHAT','BAN_LOG_TYPE_ACCOUNT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `duration` int(24) NOT NULL,
  `new_duration` int(24) NOT NULL,
  `reason` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `proof` varchar(512) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `increased_counter` int(24) NOT NULL,
  `date` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for bootlog
-- ----------------------------
DROP TABLE IF EXISTS `bootlog`;
CREATE TABLE `bootlog`  (
  `time` datetime NULL DEFAULT NULL,
  `hostname` varbinary(56) NULL DEFAULT NULL,
  `channel` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for change_empire
-- ----------------------------
DROP TABLE IF EXISTS `change_empire`;
CREATE TABLE `change_empire`  (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `change_count` int(11) NULL DEFAULT NULL,
  `data` datetime NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for change_name
-- ----------------------------
DROP TABLE IF EXISTS `change_name`;
CREATE TABLE `change_name`  (
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `old_name` varbinary(16) NULL DEFAULT NULL,
  `new_name` varbinary(16) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat_log
-- ----------------------------
DROP TABLE IF EXISTS `chat_log`;
CREATE TABLE `chat_log`  (
  `where` int(10) UNSIGNED NOT NULL,
  `who_id` int(10) UNSIGNED NOT NULL,
  `who_name` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `whom_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `whom_name` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` enum('NORMAL','WHISPER','PARTY','GUILD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `msg` varbinary(512) NOT NULL,
  `when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for command_log
-- ----------------------------
DROP TABLE IF EXISTS `command_log`;
CREATE TABLE `command_log`  (
  `userid` int(11) UNSIGNED NULL DEFAULT NULL,
  `server` int(11) NULL DEFAULT 999,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `port` int(11) UNSIGNED NULL DEFAULT NULL,
  `username` varbinary(16) NULL DEFAULT NULL,
  `command` varbinary(300) NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cube
-- ----------------------------
DROP TABLE IF EXISTS `cube`;
CREATE TABLE `cube`  (
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `x` int(11) UNSIGNED NULL DEFAULT NULL,
  `y` int(11) UNSIGNED NULL DEFAULT NULL,
  `item_vnum` int(11) UNSIGNED NULL DEFAULT NULL,
  `item_uid` int(11) UNSIGNED NULL DEFAULT NULL,
  `item_count` int(11) NULL DEFAULT NULL,
  `success` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dragon_slay_log
-- ----------------------------
DROP TABLE IF EXISTS `dragon_slay_log`;
CREATE TABLE `dragon_slay_log`  (
  `guild_id` int(11) UNSIGNED NOT NULL,
  `vnum` int(11) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for exchange_items
-- ----------------------------
DROP TABLE IF EXISTS `exchange_items`;
CREATE TABLE `exchange_items`  (
  `trade_id` int(11) NULL DEFAULT NULL,
  `toPlayer` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `vnum` int(11) NULL DEFAULT NULL,
  `count` int(3) NULL DEFAULT NULL,
  `socket0` int(10) UNSIGNED NULL DEFAULT 0,
  `socket1` int(10) UNSIGNED NULL DEFAULT 0,
  `socket2` int(10) UNSIGNED NULL DEFAULT 0,
  `socket3` int(10) UNSIGNED NULL DEFAULT 0,
  `socket4` int(10) UNSIGNED NULL DEFAULT 0,
  `socket5` int(10) UNSIGNED NULL DEFAULT 0,
  `attrtype0` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue0` smallint(6) NOT NULL DEFAULT 0,
  `attrtype1` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue1` smallint(6) NOT NULL DEFAULT 0,
  `attrtype2` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue2` smallint(6) NOT NULL DEFAULT 0,
  `attrtype3` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue3` smallint(6) NOT NULL DEFAULT 0,
  `attrtype4` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue4` smallint(6) NOT NULL DEFAULT 0,
  `attrtype5` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue5` smallint(6) NOT NULL DEFAULT 0,
  `attrtype6` tinyint(4) NOT NULL DEFAULT 0,
  `attrvalue6` smallint(6) NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for exchanges
-- ----------------------------
DROP TABLE IF EXISTS `exchanges`;
CREATE TABLE `exchanges`  (
  `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('EXCHANGE_TYPE_SHOP','EXCHANGE_TYPE_TRADE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'EXCHANGE_TYPE_TRADE',
  `playerA` int(11) NULL DEFAULT NULL,
  `playerB` int(11) NULL DEFAULT NULL,
  `goldA` int(11) NULL DEFAULT NULL,
  `goldB` int(11) NULL DEFAULT NULL,
  `x` int(24) NULL DEFAULT NULL,
  `y` int(24) NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  INDEX `PRIMARY KEY`(`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45282 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = 'trade log#1' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for fish_log
-- ----------------------------
DROP TABLE IF EXISTS `fish_log`;
CREATE TABLE `fish_log`  (
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map_index` tinyint(4) NOT NULL DEFAULT 0,
  `fish_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fishing_level` int(11) NOT NULL DEFAULT 0,
  `waiting_time` int(11) NOT NULL DEFAULT 0,
  `success` tinyint(4) NOT NULL DEFAULT 0,
  `size` smallint(6) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gametimelog
-- ----------------------------
DROP TABLE IF EXISTS `gametimelog`;
CREATE TABLE `gametimelog`  (
  `login` varbinary(16) NULL DEFAULT NULL,
  `type` int(11) UNSIGNED NULL DEFAULT NULL,
  `logon_time` datetime NULL DEFAULT NULL,
  `logout_time` datetime NULL DEFAULT NULL,
  `use_time` int(15) UNSIGNED NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `server` varbinary(56) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goldlog
-- ----------------------------
DROP TABLE IF EXISTS `goldlog`;
CREATE TABLE `goldlog`  (
  `date` date NULL DEFAULT NULL,
  `time` time NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `what` int(11) UNSIGNED NULL DEFAULT NULL,
  `how` varbinary(33) NULL DEFAULT NULL COMMENT 'contains: QUEST, BUY, SELL, SHOP_BUY, SHOP_SELL, EXCHANGE_TAKE, EXCHANGE_GIVE',
  `hint` varbinary(80) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hack_crc_log
-- ----------------------------
DROP TABLE IF EXISTS `hack_crc_log`;
CREATE TABLE `hack_crc_log`  (
  `time` datetime NULL DEFAULT NULL,
  `login` varbinary(16) NULL DEFAULT NULL,
  `name` varbinary(16) NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `server` varbinary(56) NULL DEFAULT NULL,
  `why` varbinary(33) NULL DEFAULT NULL,
  `crc` int(11) UNSIGNED NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hack_log
-- ----------------------------
DROP TABLE IF EXISTS `hack_log`;
CREATE TABLE `hack_log`  (
  `time` datetime NULL DEFAULT NULL,
  `login` varbinary(16) NULL DEFAULT NULL,
  `name` varbinary(16) NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `server` varbinary(56) NULL DEFAULT NULL,
  `why` varbinary(56) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hackshield_log
-- ----------------------------
DROP TABLE IF EXISTS `hackshield_log`;
CREATE TABLE `hackshield_log`  (
  `time` datetime NULL DEFAULT NULL,
  `account_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `login` varbinary(16) NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `name` varbinary(16) NULL DEFAULT NULL,
  `reason` int(11) UNSIGNED NULL DEFAULT NULL,
  `ip` int(11) UNSIGNED NULL DEFAULT NULL COMMENT 'inet_aton(\'%s\')'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for invalid_server_log
-- ----------------------------
DROP TABLE IF EXISTS `invalid_server_log`;
CREATE TABLE `invalid_server_log`  (
  `locale_type` int(11) UNSIGNED NULL DEFAULT NULL,
  `log_date` datetime NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `revision` varbinary(16) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itemshop_logs
-- ----------------------------
DROP TABLE IF EXISTS `itemshop_logs`;
CREATE TABLE `itemshop_logs`  (
  `dwPID` int(20) UNSIGNED NOT NULL DEFAULT 0,
  `dtTime` datetime NOT NULL,
  `sItemHash` varbinary(128) NOT NULL,
  `iPrice` int(20) NOT NULL DEFAULT 0,
  `iBalanceBefore` int(20) NOT NULL,
  `iBalanceAfter` int(20) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for levellog
-- ----------------------------
DROP TABLE IF EXISTS `levellog`;
CREATE TABLE `levellog`  (
  `name` varbinary(16) NULL DEFAULT NULL,
  `level` int(11) UNSIGNED NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `account_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL COMMENT 'contains REPLACE query!',
  `playtime` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `type` varbinary(20) NULL DEFAULT NULL COMMENT 'contains: CHARACTER, ITEM',
  `time` datetime NULL DEFAULT NULL,
  `who` int(11) UNSIGNED NULL DEFAULT NULL,
  `x` int(11) UNSIGNED NULL DEFAULT NULL,
  `y` int(11) UNSIGNED NULL DEFAULT NULL,
  `what` bigint(11) UNSIGNED NULL DEFAULT NULL,
  `how` varbinary(50) NULL DEFAULT NULL,
  `hint` varbinary(80) NULL DEFAULT NULL COMMENT 'snprintf with 80u size',
  `ip` varbinary(15) NULL DEFAULT NULL,
  `vnum` int(11) UNSIGNED NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog`  (
  `type` varbinary(20) NULL DEFAULT NULL COMMENT 'contains: LOGIN, LOGOUT',
  `time` datetime NULL DEFAULT NULL,
  `channel` int(11) NULL DEFAULT NULL,
  `account_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `job` int(11) NULL DEFAULT NULL,
  `playtime` int(11) UNSIGNED NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loginlog2
-- ----------------------------
DROP TABLE IF EXISTS `loginlog2`;
CREATE TABLE `loginlog2`  (
  `type` varbinary(20) NULL DEFAULT NULL COMMENT 'contains: VALID, INVALID',
  `is_gm` varbinary(20) NULL DEFAULT NULL COMMENT 'contains: Y, N',
  `login_time` datetime NULL DEFAULT NULL,
  `channel` int(11) NULL DEFAULT NULL,
  `account_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `ip` int(11) UNSIGNED NULL DEFAULT NULL COMMENT 'inet_aton(\'%s\')',
  `client_version` varbinary(11) NULL DEFAULT NULL COMMENT 'maybe 1215955205',
  `logout_time` datetime NULL DEFAULT NULL,
  `playtime` datetime NULL DEFAULT NULL,
  `id` int(11) NULL DEFAULT NULL COMMENT 'maybe primary'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for money_log
-- ----------------------------
DROP TABLE IF EXISTS `money_log`;
CREATE TABLE `money_log`  (
  `time` datetime NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `vnum` int(11) NULL DEFAULT NULL,
  `gold` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for offline_shop
-- ----------------------------
DROP TABLE IF EXISTS `offline_shop`;
CREATE TABLE `offline_shop`  (
  `owner_pid` int(11) NULL DEFAULT NULL,
  `shop_id` int(11) NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `buyer_pid` int(11) NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `vnum` int(11) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `gold` int(20) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pcbang_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `pcbang_loginlog`;
CREATE TABLE `pcbang_loginlog`  (
  `time` datetime NULL DEFAULT NULL,
  `pcbang_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `ip` varbinary(15) NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `play_time` int(11) UNSIGNED NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_reward_log
-- ----------------------------
DROP TABLE IF EXISTS `quest_reward_log`;
CREATE TABLE `quest_reward_log`  (
  `quest_name` varbinary(56) NULL DEFAULT NULL,
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `level` int(11) UNSIGNED NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT 'contains: EXP, ITEM',
  `how` int(11) UNSIGNED NULL DEFAULT NULL,
  `hint` int(11) UNSIGNED NULL DEFAULT NULL,
  `when` datetime NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for refinelog
-- ----------------------------
DROP TABLE IF EXISTS `refinelog`;
CREATE TABLE `refinelog`  (
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `item_name` varbinary(56) NULL DEFAULT NULL,
  `item_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `step` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `is_success` tinyint(1) NULL DEFAULT NULL,
  `setType` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'contains: HYUNIRON, POWER, SCROLL'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shout_log
-- ----------------------------
DROP TABLE IF EXISTS `shout_log`;
CREATE TABLE `shout_log`  (
  `when` datetime NULL DEFAULT NULL,
  `where` int(11) NULL DEFAULT NULL,
  `empire` int(11) NULL DEFAULT NULL,
  `message` varbinary(512) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for speed_hack
-- ----------------------------
DROP TABLE IF EXISTS `speed_hack`;
CREATE TABLE `speed_hack`  (
  `pid` int(11) UNSIGNED NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `x` int(11) NULL DEFAULT NULL,
  `y` int(11) NULL DEFAULT NULL,
  `hack_count` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for tombola_logs
-- ----------------------------
DROP TABLE IF EXISTS `tombola_logs`;
CREATE TABLE `tombola_logs`  (
  `dwPID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dtTime` datetime NOT NULL,
  `sAction` varbinary(24) NOT NULL,
  `dwVnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wCount` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `iCashBefore` int(10) NOT NULL DEFAULT 0,
  `iCashAfter` int(10) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for translation_error
-- ----------------------------
DROP TABLE IF EXISTS `translation_error`;
CREATE TABLE `translation_error`  (
  `type` enum('TRANSLATION_TYPE_SYSTEM','TRANSLATION_LOCALE_STRING','TRANSLATION_LOCALE_QUEST','TRANSLATION_ITEM_NAMES','TRANSLATION_MOB_NAMES') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'TRANSLATION_LOCALE_STRING',
  `lang_type` enum('TRANSLATION_ENGLISH','TRANSLATION_GERMANY','TRANSLATION_ROMANIA','TRANSLATION_POLAND','TRANSLATION_TURKISCH') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'TRANSLATION_ENGLISH',
  `lang_key` char(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `error` char(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  UNIQUE INDEX `type`(`type`, `lang_type`, `lang_key`, `error`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vcard_log
-- ----------------------------
DROP TABLE IF EXISTS `vcard_log`;
CREATE TABLE `vcard_log`  (
  `vcard_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `x` int(11) UNSIGNED NULL DEFAULT NULL,
  `y` int(11) UNSIGNED NULL DEFAULT NULL,
  `hostname` varbinary(56) NULL DEFAULT NULL,
  `giver_name` varbinary(16) NULL DEFAULT NULL,
  `giver_ip` varbinary(15) NULL DEFAULT NULL,
  `taker_name` varbinary(16) NULL DEFAULT NULL,
  `taker_ip` varbinary(15) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for whisper_log
-- ----------------------------
DROP TABLE IF EXISTS `whisper_log`;
CREATE TABLE `whisper_log`  (
  `sender` int(10) NULL DEFAULT 0,
  `sender_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '\"NONAME\"',
  `receiver` int(10) NULL DEFAULT 0,
  `receiver_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '\"NONAME\"',
  `text` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '\"--\"',
  `is_offline` int(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
