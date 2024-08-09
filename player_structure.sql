/*
 Navicat Premium Data Transfer

 Source Server         : Ervelia
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : player

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2022 14:50:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affect
-- ----------------------------
DROP TABLE IF EXISTS `affect`;
CREATE TABLE `affect`  (
  `dwPID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `bApplyOn` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `lApplyValue` int(11) NOT NULL DEFAULT 0,
  `dwFlag` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lDuration` int(11) NOT NULL DEFAULT 0,
  `lSPCost` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwPID`, `bType`, `bApplyOn`, `lApplyValue`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for banword
-- ----------------------------
DROP TABLE IF EXISTS `banword`;
CREATE TABLE `banword`  (
  `word` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pass_ranking
-- ----------------------------
DROP TABLE IF EXISTS `battle_pass_ranking`;
CREATE TABLE `battle_pass_ranking`  (
  `iDiffLevel` tinyint(4) NULL DEFAULT NULL,
  `iMonth` tinyint(4) NULL DEFAULT NULL,
  `stPos` tinyint(4) NULL DEFAULT NULL,
  `sName` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ttTime` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for biolog_missions
-- ----------------------------
DROP TABLE IF EXISTS `biolog_missions`;
CREATE TABLE `biolog_missions`  (
  `mission` tinyint(2) UNSIGNED NOT NULL,
  `required_lvl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `required_item` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `required_item_count` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `cooldown` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for biolog_monsters
-- ----------------------------
DROP TABLE IF EXISTS `biolog_monsters`;
CREATE TABLE `biolog_monsters`  (
  `mission` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `mob_vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for biolog_rewards
-- ----------------------------
DROP TABLE IF EXISTS `biolog_rewards`;
CREATE TABLE `biolog_rewards`  (
  `mission` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `reward_item` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reward_item_count` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `apply_type0` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `apply_value0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `apply_type1` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `apply_value1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `apply_type2` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `apply_value2` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for dungeon_info_ranking
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_info_ranking`;
CREATE TABLE `dungeon_info_ranking`  (
  `sKey` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `iType` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wPos` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `wLevel` int(3) NULL DEFAULT NULL,
  `sName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lValue` int(11) UNSIGNED NULL DEFAULT NULL,
  UNIQUE INDEX `sKey`(`sKey`, `iType`, `wPos`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for find_letters
-- ----------------------------
DROP TABLE IF EXISTS `find_letters`;
CREATE TABLE `find_letters`  (
  `word` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`word`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fishing
-- ----------------------------
DROP TABLE IF EXISTS `fishing`;
CREATE TABLE `fishing`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vnum` int(11) NULL DEFAULT NULL,
  `dead_vnum` int(11) NULL DEFAULT NULL,
  `grilled_vnum` int(11) NULL DEFAULT NULL,
  `prob_min` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `prob_max` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `max_length` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for gaya_shop
-- ----------------------------
DROP TABLE IF EXISTS `gaya_shop`;
CREATE TABLE `gaya_shop`  (
  `num` tinyint(2) UNSIGNED NOT NULL,
  `slot_num` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `count` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `cost` bigint(12) UNSIGNED NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'snprintf(12u)',
  `sp` smallint(6) NOT NULL DEFAULT 1000,
  `master` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(2) NULL DEFAULT NULL,
  `exp` int(11) NULL DEFAULT NULL,
  `skill_point` tinyint(2) NOT NULL DEFAULT 0,
  `skill` tinyblob NULL,
  `win` int(11) NOT NULL DEFAULT 0,
  `draw` int(11) NOT NULL DEFAULT 0,
  `loss` int(11) NOT NULL DEFAULT 0,
  `ladder_point` int(11) NOT NULL DEFAULT 0,
  `gold` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 136 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_comment
-- ----------------------------
DROP TABLE IF EXISTS `guild_comment`;
CREATE TABLE `guild_comment`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notice` tinyint(4) NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aaa`(`notice`, `id`, `guild_id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_grade
-- ----------------------------
DROP TABLE IF EXISTS `guild_grade`;
CREATE TABLE `guild_grade`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `grade` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'strlen(s) <= 12',
  `auth` set('ADD_MEMBER','REMOVE_MEMEBER','NOTICE','USE_SKILL') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `grade`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `grade` tinyint(2) NULL DEFAULT NULL,
  `is_general` tinyint(1) NOT NULL DEFAULT 0,
  `offer` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `pid`) USING BTREE,
  UNIQUE INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_war
-- ----------------------------
DROP TABLE IF EXISTS `guild_war`;
CREATE TABLE `guild_war`  (
  `id_from` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_to` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_from`, `id_to`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_war_bet
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_bet`;
CREATE TABLE `guild_war_bet`  (
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `war_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`war_id`, `login`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_war_reservation
-- ----------------------------
DROP TABLE IF EXISTS `guild_war_reservation`;
CREATE TABLE `guild_war_reservation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `warprice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `initscore` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `started` tinyint(1) NOT NULL DEFAULT 0,
  `bet_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bet_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `winner` int(11) NOT NULL DEFAULT -1,
  `power1` int(11) NOT NULL DEFAULT 0,
  `power2` int(11) NOT NULL DEFAULT 0,
  `handicap` int(11) NOT NULL DEFAULT 0,
  `result1` int(11) NOT NULL DEFAULT 0,
  `result2` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for horse_name
-- ----------------------------
DROP TABLE IF EXISTS `horse_name`;
CREATE TABLE `horse_name`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME' COMMENT 'CHARACTER_NAME_MAX_LEN+1 so 24+null',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `window` enum('INVENTORY','EQUIPMENT','SAFEBOX','MALL','DRAGON_SOUL_INVENTORY','BELT_INVENTORY','SWITCHBOT','GROUND') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'INVENTORY',
  `pos` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `is_gm_owner` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket9` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
  `trans_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refine_element` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `owner_id_idx`(`owner_id`) USING BTREE,
  INDEX `item_vnum_index`(`vnum`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 430000032 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Table structure for item_attr
-- ----------------------------
DROP TABLE IF EXISTS `item_attr`;
CREATE TABLE `item_attr`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wrist` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `foots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `head` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shield` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ear` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_attr_belt
-- ----------------------------
DROP TABLE IF EXISTS `item_attr_belt`;
CREATE TABLE `item_attr_belt`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','BLEEDING_REDUCE','BLEEDING_PCT','ATT_BONUS_TO_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `belt` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_attr_rare
-- ----------------------------
DROP TABLE IF EXISTS `item_attr_rare`;
CREATE TABLE `item_attr_rare`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','BLEEDING_REDUCE','BLEEDING_PCT','ATT_BONUS_TO_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'MAX_HP',
  `prob` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wrist` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `foots` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `neck` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `head` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shield` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ear` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_body` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_hair` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `costume_weapon` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_award
-- ----------------------------
DROP TABLE IF EXISTS `item_award`;
CREATE TABLE `item_award`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `login` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT 'LOGIN_MAX_LEN=30',
  `vnum` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `given_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `taken_time` datetime NULL DEFAULT NULL,
  `item_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `why` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `socket0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mall` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid_idx`(`pid`) USING BTREE,
  INDEX `given_time_idx`(`given_time`) USING BTREE,
  INDEX `taken_time_idx`(`taken_time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_proto
-- ----------------------------
DROP TABLE IF EXISTS `item_proto`;
CREATE TABLE `item_proto`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varbinary(96) NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(96) NOT NULL DEFAULT 'Noname',
  `locale_name_tr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_ro` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pt` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pl` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_it` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_hu` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_gr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_fr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_es` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_en` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_cz` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_de` varbinary(50) NULL DEFAULT 'NoName',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `subtype` tinyint(2) NOT NULL DEFAULT 0,
  `weight` tinyint(3) NULL DEFAULT 0,
  `size` tinyint(3) NULL DEFAULT 0,
  `antiflag` int(11) UNSIGNED NULL DEFAULT 0,
  `flag` int(11) UNSIGNED NULL DEFAULT 0,
  `wearflag` int(11) UNSIGNED NULL DEFAULT 0,
  `immuneflag` set('PARA','CURSE','STUN','SLEEP','SLOW','POISON','TERROR') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint(16) NULL DEFAULT NULL,
  `shop_buy_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refined_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `magic_pct` tinyint(4) NOT NULL DEFAULT 0,
  `limittype0` tinyint(4) NULL DEFAULT 0,
  `limitvalue0` int(11) NULL DEFAULT 0,
  `limittype1` tinyint(4) NULL DEFAULT 0,
  `limitvalue1` int(11) NULL DEFAULT 0,
  `applytype0` tinyint(4) NULL DEFAULT 0,
  `applyvalue0` int(11) NULL DEFAULT 0,
  `applytype1` tinyint(4) NULL DEFAULT 0,
  `applyvalue1` int(11) NULL DEFAULT 0,
  `applytype2` tinyint(4) NULL DEFAULT 0,
  `applyvalue2` int(11) NULL DEFAULT 0,
  `value0` int(11) NULL DEFAULT 0,
  `value1` int(11) NULL DEFAULT 0,
  `value2` int(11) NULL DEFAULT 0,
  `value3` int(11) NULL DEFAULT 0,
  `value4` int(11) NULL DEFAULT 0,
  `value5` int(11) NULL DEFAULT 0,
  `socket0` tinyint(4) NULL DEFAULT -1,
  `socket1` tinyint(4) NULL DEFAULT -1,
  `socket2` tinyint(4) NULL DEFAULT -1,
  `socket3` tinyint(4) NULL DEFAULT -1,
  `socket4` tinyint(4) NULL DEFAULT -1,
  `socket5` tinyint(4) NULL DEFAULT -1,
  `specular` tinyint(4) NOT NULL DEFAULT 0,
  `socket_pct` tinyint(4) NOT NULL DEFAULT 0,
  `addon_type` smallint(6) NOT NULL DEFAULT 0,
  `dwVirtualWindow` tinyint(4) NOT NULL DEFAULT 0,
  `dwEquipmentSet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for item_proto_copy1
-- ----------------------------
DROP TABLE IF EXISTS `item_proto_copy1`;
CREATE TABLE `item_proto_copy1`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varbinary(96) NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(96) NOT NULL DEFAULT 'Noname',
  `locale_name_tr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_ro` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pt` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pl` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_it` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_hu` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_gr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_fr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_es` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_en` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_cz` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_de` varbinary(50) NULL DEFAULT 'NoName',
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `subtype` tinyint(2) NOT NULL DEFAULT 0,
  `weight` tinyint(3) NULL DEFAULT 0,
  `size` tinyint(3) NULL DEFAULT 0,
  `antiflag` int(11) UNSIGNED NULL DEFAULT 0,
  `flag` int(11) UNSIGNED NULL DEFAULT 0,
  `wearflag` int(11) UNSIGNED NULL DEFAULT 0,
  `immuneflag` set('PARA','CURSE','STUN','SLEEP','SLOW','POISON','TERROR') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` bigint(16) NULL DEFAULT NULL,
  `shop_buy_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refined_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `refine_set2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `magic_pct` tinyint(4) NOT NULL DEFAULT 0,
  `limittype0` tinyint(4) NULL DEFAULT 0,
  `limitvalue0` int(11) NULL DEFAULT 0,
  `limittype1` tinyint(4) NULL DEFAULT 0,
  `limitvalue1` int(11) NULL DEFAULT 0,
  `applytype0` tinyint(4) NULL DEFAULT 0,
  `applyvalue0` int(11) NULL DEFAULT 0,
  `applytype1` tinyint(4) NULL DEFAULT 0,
  `applyvalue1` int(11) NULL DEFAULT 0,
  `applytype2` tinyint(4) NULL DEFAULT 0,
  `applyvalue2` int(11) NULL DEFAULT 0,
  `value0` int(11) NULL DEFAULT 0,
  `value1` int(11) NULL DEFAULT 0,
  `value2` int(11) NULL DEFAULT 0,
  `value3` int(11) NULL DEFAULT 0,
  `value4` int(11) NULL DEFAULT 0,
  `value5` int(11) NULL DEFAULT 0,
  `socket0` tinyint(4) NULL DEFAULT -1,
  `socket1` tinyint(4) NULL DEFAULT -1,
  `socket2` tinyint(4) NULL DEFAULT -1,
  `socket3` tinyint(4) NULL DEFAULT -1,
  `socket4` tinyint(4) NULL DEFAULT -1,
  `socket5` tinyint(4) NULL DEFAULT -1,
  `specular` tinyint(4) NOT NULL DEFAULT 0,
  `socket_pct` tinyint(4) NOT NULL DEFAULT 0,
  `addon_type` smallint(6) NOT NULL DEFAULT 0,
  `dwVirtualWindow` tinyint(4) NOT NULL DEFAULT 0,
  `dwEquipmentSet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for itemshop_categories
-- ----------------------------
DROP TABLE IF EXISTS `itemshop_categories`;
CREATE TABLE `itemshop_categories`  (
  `categoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `categoryName` varbinary(255) NOT NULL,
  PRIMARY KEY (`categoryID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itemshop_discounts
-- ----------------------------
DROP TABLE IF EXISTS `itemshop_discounts`;
CREATE TABLE `itemshop_discounts`  (
  `discountType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `additionalArg` varbinary(100) NOT NULL,
  `discountValue` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `discountDuration` int(25) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itemshop_items
-- ----------------------------
DROP TABLE IF EXISTS `itemshop_items`;
CREATE TABLE `itemshop_items`  (
  `categoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `itemVnum` int(15) UNSIGNED NOT NULL DEFAULT 0,
  `itemCount` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `itemPrice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket0` int(10) NOT NULL DEFAULT 0,
  `socket1` int(10) NOT NULL DEFAULT 0,
  `socket2` int(10) NOT NULL DEFAULT 0,
  `socket3` int(10) NOT NULL DEFAULT 0,
  `socket4` int(10) NOT NULL DEFAULT 0,
  `socket5` int(10) NOT NULL DEFAULT 0,
  `socket6` int(10) NOT NULL DEFAULT 0,
  `socket7` int(10) NOT NULL DEFAULT 0,
  `socket8` int(10) NOT NULL DEFAULT 0,
  `socket9` int(10) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for itemshop_special_offers
-- ----------------------------
DROP TABLE IF EXISTS `itemshop_special_offers`;
CREATE TABLE `itemshop_special_offers`  (
  `eType` tinyint(2) UNSIGNED NOT NULL,
  `stValue` int(24) UNSIGNED NOT NULL DEFAULT 0,
  `itemVnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemPrice` int(10) NOT NULL DEFAULT 0,
  `socket0` int(10) NOT NULL DEFAULT 0,
  `socket1` int(10) NOT NULL DEFAULT 0,
  `socket2` int(10) NOT NULL DEFAULT 0,
  `socket3` int(10) NOT NULL DEFAULT 0,
  `socket4` int(10) NOT NULL DEFAULT 0,
  `socket5` int(10) NOT NULL DEFAULT 0,
  `socket6` int(10) NOT NULL DEFAULT 0,
  `socket7` int(10) NOT NULL DEFAULT 0,
  `socket8` int(10) NOT NULL DEFAULT 0,
  `socket9` int(10) NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for land
-- ----------------------------
DROP TABLE IF EXISTS `land`;
CREATE TABLE `land`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `map_index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `y` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `guild_level_limit` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enable` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 293 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lotto_list
-- ----------------------------
DROP TABLE IF EXISTS `lotto_list`;
CREATE TABLE `lotto_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `server` varchar(56) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'server%s=get_table_postfix(); std::string so dunno; at least 6',
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for marble_creator
-- ----------------------------
DROP TABLE IF EXISTS `marble_creator`;
CREATE TABLE `marble_creator`  (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `marble_vnum` int(11) UNSIGNED NULL DEFAULT 0,
  `required_count` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `extanded_required_count` int(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for marriage
-- ----------------------------
DROP TABLE IF EXISTS `marriage`;
CREATE TABLE `marriage`  (
  `is_married` tinyint(4) NOT NULL DEFAULT 0,
  `pid1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `love_point` int(11) UNSIGNED NULL DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid1`, `pid2`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for messenger_list
-- ----------------------------
DROP TABLE IF EXISTS `messenger_list`;
CREATE TABLE `messenger_list`  (
  `account` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT '24 at maximum',
  `companion` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' COMMENT '24 at maximum',
  PRIMARY KEY (`account`, `companion`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mob_proto
-- ----------------------------
DROP TABLE IF EXISTS `mob_proto`;
CREATE TABLE `mob_proto`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `locale_name_dn` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_tr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_ro` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pt` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_pl` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_it` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_hu` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_gr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_fr` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_es` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_en` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_de` varbinary(50) NULL DEFAULT 'NoName',
  `locale_name_cz` varbinary(50) NULL DEFAULT 'NoName',
  `rank` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `battle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `size` enum('SMALL','MEDIUM','BIG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SMALL',
  `ai_flag` set('AGGR','NOMOVE','COWARD','NOATTSHINSU','NOATTCHUNJO','NOATTJINNO','ATTMOB','BERSERK','STONESKIN','GODSPEED','DEATHBLOW','REVIVE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mount_capacity` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `setRaceFlag` set('ANIMAL','UNDEAD','DEVIL','HUMAN','ORC','MILGYO','INSECT','FIRE','ICE','DESERT','TREE','ATT_ELEC','ATT_FIRE','ATT_ICE','ATT_WIND','ATT_EARTH','ATT_DARK','ATT_CZ') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setImmuneFlag` set('STUN','SLOW','FALL','CURSE','POISON','TERROR','REFLECT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `empire` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `folder` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `on_click` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `st` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `dx` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ht` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `iq` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_min` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_max` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `regen_cycle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `regen_percent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gold_min` bigint(16) NULL DEFAULT NULL,
  `gold_max` bigint(16) NULL DEFAULT NULL,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `def` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `attack_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `move_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `aggressive_hp_pct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `aggressive_sight` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `attack_range` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `drop_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resurrection_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_curse` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_slow` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_poison` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_stun` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_critical` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_penetrate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `resist_sword` tinyint(4) NOT NULL DEFAULT 0,
  `resist_twohand` tinyint(4) NOT NULL DEFAULT 0,
  `resist_dagger` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bell` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fan` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bow` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fire` tinyint(4) NOT NULL DEFAULT 0,
  `resist_elect` tinyint(4) NOT NULL DEFAULT 0,
  `resist_magic` tinyint(4) NOT NULL DEFAULT 0,
  `resist_wind` tinyint(4) NOT NULL DEFAULT 0,
  `resist_poison` tinyint(4) NOT NULL DEFAULT 0,
  `dam_multiply` float NULL DEFAULT NULL,
  `summon` int(11) NULL DEFAULT NULL,
  `drain_sp` int(11) NULL DEFAULT NULL,
  `mob_color` int(10) UNSIGNED NULL DEFAULT NULL,
  `polymorph_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_level0` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum0` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level1` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum1` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level2` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum2` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level3` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum3` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level4` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum4` int(10) UNSIGNED NULL DEFAULT NULL,
  `sp_berserk` tinyint(4) NOT NULL DEFAULT 0,
  `sp_stoneskin` tinyint(4) NOT NULL DEFAULT 0,
  `sp_godspeed` tinyint(4) NOT NULL DEFAULT 0,
  `sp_deathblow` tinyint(4) NOT NULL DEFAULT 0,
  `sp_revive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for mob_proto_lang
-- ----------------------------
DROP TABLE IF EXISTS `mob_proto_lang`;
CREATE TABLE `mob_proto_lang`  (
  `vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `locale_name` varbinary(24) NOT NULL DEFAULT 'Noname',
  `rank` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `battle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `size` enum('SMALL','MEDIUM','BIG') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'SMALL',
  `ai_flag` set('AGGR','NOMOVE','COWARD','NOATTSHINSU','NOATTCHUNJO','NOATTJINNO','ATTMOB','BERSERK','STONESKIN','GODSPEED','DEATHBLOW','REVIVE') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mount_capacity` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `setRaceFlag` set('ANIMAL','UNDEAD','DEVIL','HUMAN','ORC','MILGYO','INSECT','FIRE','ICE','DESERT','TREE','ATT_ELEC','ATT_FIRE','ATT_ICE','ATT_WIND','ATT_EARTH','ATT_DARK','ATT_CZ') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setImmuneFlag` set('STUN','SLOW','FALL','CURSE','POISON','TERROR','REFLECT') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `empire` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `folder` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `on_click` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `st` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `dx` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ht` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `iq` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_min` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `damage_max` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `regen_cycle` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `regen_percent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `gold_min` bigint(16) NULL DEFAULT NULL,
  `gold_max` bigint(16) NULL DEFAULT NULL,
  `exp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `def` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `attack_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `move_speed` smallint(6) UNSIGNED NOT NULL DEFAULT 100,
  `aggressive_hp_pct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `aggressive_sight` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `attack_range` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `drop_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `resurrection_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_curse` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_slow` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_poison` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_stun` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_critical` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `enchant_penetrate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `resist_sword` tinyint(4) NOT NULL DEFAULT 0,
  `resist_twohand` tinyint(4) NOT NULL DEFAULT 0,
  `resist_dagger` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bell` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fan` tinyint(4) NOT NULL DEFAULT 0,
  `resist_bow` tinyint(4) NOT NULL DEFAULT 0,
  `resist_fire` tinyint(4) NOT NULL DEFAULT 0,
  `resist_elect` tinyint(4) NOT NULL DEFAULT 0,
  `resist_magic` tinyint(4) NOT NULL DEFAULT 0,
  `resist_wind` tinyint(4) NOT NULL DEFAULT 0,
  `resist_poison` tinyint(4) NOT NULL DEFAULT 0,
  `dam_multiply` float NULL DEFAULT NULL,
  `summon` int(11) NULL DEFAULT NULL,
  `drain_sp` int(11) NULL DEFAULT NULL,
  `mob_color` int(10) UNSIGNED NULL DEFAULT NULL,
  `polymorph_item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_level0` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum0` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level1` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum1` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level2` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum2` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level3` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum3` int(10) UNSIGNED NULL DEFAULT NULL,
  `skill_level4` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `skill_vnum4` int(10) UNSIGNED NULL DEFAULT NULL,
  `sp_berserk` tinyint(4) NOT NULL DEFAULT 0,
  `sp_stoneskin` tinyint(4) NOT NULL DEFAULT 0,
  `sp_godspeed` tinyint(4) NOT NULL DEFAULT 0,
  `sp_deathblow` tinyint(4) NOT NULL DEFAULT 0,
  `sp_revive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for monarch
-- ----------------------------
DROP TABLE IF EXISTS `monarch`;
CREATE TABLE `monarch`  (
  `empire` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NULL DEFAULT NULL,
  `windate` datetime NULL DEFAULT NULL,
  `money` bigint(20) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`empire`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for monarch_candidacy
-- ----------------------------
DROP TABLE IF EXISTS `monarch_candidacy`;
CREATE TABLE `monarch_candidacy`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `windate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for monarch_election
-- ----------------------------
DROP TABLE IF EXISTS `monarch_election`;
CREATE TABLE `monarch_election`  (
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selectedpid` int(10) UNSIGNED NULL DEFAULT 0,
  `electiondata` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for myshop_pricelist
-- ----------------------------
DROP TABLE IF EXISTS `myshop_pricelist`;
CREATE TABLE `myshop_pricelist`  (
  `owner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `item_vnum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `list_id`(`owner_id`, `item_vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for object
-- ----------------------------
DROP TABLE IF EXISTS `object`;
CREATE TABLE `object`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `land_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map_index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `x_rot` float NOT NULL DEFAULT 0,
  `y_rot` float NOT NULL DEFAULT 0,
  `z_rot` float NOT NULL DEFAULT 0,
  `life` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 168 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for object_proto
-- ----------------------------
DROP TABLE IF EXISTS `object_proto`;
CREATE TABLE `object_proto`  (
  `vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `materials` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `upgrade_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `upgrade_limit_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `life` int(11) NOT NULL DEFAULT 0,
  `reg_1` int(11) NOT NULL DEFAULT 0,
  `reg_2` int(11) NOT NULL DEFAULT 0,
  `reg_3` int(11) NOT NULL DEFAULT 0,
  `reg_4` int(11) NOT NULL DEFAULT 0,
  `npc` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `group_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dependent_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for offline_shop
-- ----------------------------
DROP TABLE IF EXISTS `offline_shop`;
CREATE TABLE `offline_shop`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `owner_pid` bigint(20) UNSIGNED NOT NULL,
  `owner_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name_change_time` int(155) NOT NULL DEFAULT 0,
  `channel` int(11) UNSIGNED NOT NULL,
  `map_index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `deco_race` int(11) NULL DEFAULT 0,
  `deco_board` int(11) NULL DEFAULT 0,
  `opening_time` int(32) NULL DEFAULT NULL,
  `gold` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `owner_pid`(`owner_pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for offline_shop_item
-- ----------------------------
DROP TABLE IF EXISTS `offline_shop_item`;
CREATE TABLE `offline_shop_item`  (
  `owner_pid` bigint(20) UNSIGNED NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `transmutation` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refineElement` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket5` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `owner_pid`(`owner_pid`, `position`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pcbang_ip
-- ----------------------------
DROP TABLE IF EXISTS `pcbang_ip`;
CREATE TABLE `pcbang_ip`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pcbang_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '000.000.000.000',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ip`(`ip`) USING BTREE,
  INDEX `pcbang_id`(`pcbang_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `item_id` bigint(255) NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NoName',
  `level` int(30) NOT NULL DEFAULT 0,
  `exp` int(30) NOT NULL DEFAULT 0,
  `lifetime` int(30) NOT NULL DEFAULT 0,
  `stamina_recover` int(30) NOT NULL DEFAULT 0,
  `stamina` int(30) NOT NULL DEFAULT 0,
  `stamina_level` int(30) NOT NULL DEFAULT 0,
  `attrtype1` int(30) NOT NULL DEFAULT 0,
  `attrlevel1` int(30) NOT NULL DEFAULT 0,
  `attrtype2` int(30) NOT NULL DEFAULT 0,
  `attrlevel2` int(30) NOT NULL DEFAULT 0,
  `attrtype3` int(30) NOT NULL DEFAULT 0,
  `attrlevel3` int(30) NOT NULL DEFAULT 0,
  `exorcism_active` int(30) NOT NULL DEFAULT 0,
  `concentrated_active` int(30) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pet_attr_proto
-- ----------------------------
DROP TABLE IF EXISTS `pet_attr_proto`;
CREATE TABLE `pet_attr_proto`  (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA','ATTBONUS_WARRIOR','ATTBONUS_ASSASSIN','ATTBONUS_SURA','ATTBONUS_SHAMAN','ATTBONUS_MONSTER','MALL_ATTBONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATTBONUS_PER','MELEE_MAGIC_ATTBONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','ANTI_CRITICAL_PCT','ANTI_PENETRATE_PCT','BLEEDING_PCT','BLEEDING_REDUCE','ATTBONUS_WOLFMAN','RESIST_WOLFMAN','RESIST_CLAW','RESIST_MAGIC_REDUCTION','ATTBONUS_SEFI','ATTBONUS_METINE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','ATTBONUS_SWORD','ATTBONUS_TWOHAND','ATTBONUS_DAGGER','ATTBONUS_BELL','ATTBONUS_FAN','ATTBONUS_BOW','ATTBONUS_CLAW','RESIST_HUMAN','RESIST_MOUNT_FALL','ATTBONUS_HYDRA') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `start_value` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_value` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for pet_evolve_proto
-- ----------------------------
DROP TABLE IF EXISTS `pet_evolve_proto`;
CREATE TABLE `pet_evolve_proto`  (
  `level` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NoName',
  `refine_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `scale` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '0,0',
  `active_skill_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `passive_skill_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `stamina_recover_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for pet_skill
-- ----------------------------
DROP TABLE IF EXISTS `pet_skill`;
CREATE TABLE `pet_skill`  (
  `item_id` bigint(255) NOT NULL DEFAULT 0,
  `index` int(30) NOT NULL DEFAULT 0,
  `vnum` int(30) NOT NULL DEFAULT 0,
  `level` int(30) NOT NULL DEFAULT 0,
  `cooldown_time` int(30) NOT NULL DEFAULT 0,
  `cooldown_full` int(30) NOT NULL DEFAULT 0,
  `next_read` int(30) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pet_skill_proto
-- ----------------------------
DROP TABLE IF EXISTS `pet_skill_proto`;
CREATE TABLE `pet_skill_proto`  (
  `skill` enum('EQUIPMENT_BUFF','AGGRESSIVE_POSE','HEAL','GOLDSMITH','DEADLY_ATTACK','DESTRUCTION','SUPPORT','INTOXICATION','ILLUSION','REANIMATION','MONSTER_HUNTER','METIN_HUNTER','BOSS_HUNTER','FIGHTER','IMMORTAL','DEFENDER','HINDRANCE','BERSERK','ACCELERATION','FOCUS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `flag` set('PASSIVE','SELFONLY','NOTSELF','TOGGLE_AFFECT','TOGGLE_PULSING','AFFECT_PARTY','REMOVE_BAD_AFFECT','APPLY_RANDOM','UNUSABLE_ALIVE','USABLE_DEAD','ATTACK','ATTACK_STUN','ATTACK_POISON','NO_PLAYER_TARGET','NO_MELEE_TARGET','NO_RANGE_TARGET') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `apply1` enum('NONE','MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'NONE',
  `value1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `apply2` enum('NONE','MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'NONE',
  `value2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `apply3` enum('NONE','MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'NONE',
  `value3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `apply4` enum('NONE','MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE_BONUS','MAGIC_DEF_GRADE_BONUS','CURSE_PCT','MAX_STAMINA','ATT_BONUS_TO_WARRIOR','ATT_BONUS_TO_ASSASSIN','ATT_BONUS_TO_SURA','ATT_BONUS_TO_SHAMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS','MALL_DEFBONUS','MALL_EXPBONUS','MALL_ITEMBONUS','MALL_GOLDBONUS','MAX_HP_PCT','MAX_SP_PCT','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','SKILL_DEFEND_BONUS','NORMAL_HIT_DEFEND_BONUS','PC_BANG_EXP_BONUS','PC_BANG_DROP_BONUS','EXTRACT_HP_PCT','RESIST_WARRIOR','RESIST_ASSASSIN','RESIST_SURA','RESIST_SHAMAN','ENERGY','DEF_GRADE','COSTUME_ATTR_BONUS','MAGIC_ATT_BONUS_PER','MELEE_MAGIC_ATT_BONUS_PER','RESIST_ICE','RESIST_EARTH','RESIST_DARK','RESIST_CRITICAL','RESIST_PENETRATE','ACCEDRAIN_RATE','ENCHANT_ELECT','ENCHANT_FIRE','ENCHANT_ICE','ENCHANT_WIND','ENCHANT_EARTH','ENCHANT_DARK','ATTBONUS_INSECT','ATTBONUS_DESERT','ATTBONUS_CZ','RESIST_ALL','ATTBONUS_METIN','ATTBONUS_BOSS','RESIST_MONSTER','RESIST_BOSS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'NONE',
  `value4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '',
  `cost_type` enum('COST_NONE','COST_GOLD') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'COST_NONE',
  `cost` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `duration` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `cooltime` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `range` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `success_prob` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for pet_stamina_proto
-- ----------------------------
DROP TABLE IF EXISTS `pet_stamina_proto`;
CREATE TABLE `pet_stamina_proto`  (
  `level` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `max_stamina` bigint(255) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `voice` tinyint(1) NOT NULL DEFAULT 0,
  `dir` tinyint(2) NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `z` int(11) NOT NULL DEFAULT 0,
  `map_index` int(11) NOT NULL DEFAULT 0,
  `exit_x` int(11) NOT NULL DEFAULT 0,
  `exit_y` int(11) NOT NULL DEFAULT 0,
  `exit_map_index` int(11) NOT NULL DEFAULT 0,
  `hp` int(11) NOT NULL DEFAULT 0,
  `mp` int(11) NOT NULL DEFAULT 0,
  `stamina` smallint(6) NOT NULL DEFAULT 0,
  `random_hp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `random_sp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `playtime` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `level_step` tinyint(1) NOT NULL DEFAULT 0,
  `st` smallint(3) NOT NULL DEFAULT 0,
  `ht` smallint(3) NOT NULL DEFAULT 0,
  `dx` smallint(3) NOT NULL DEFAULT 0,
  `iq` smallint(3) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL DEFAULT 0,
  `gold` bigint(16) NULL DEFAULT NULL,
  `stat_point` smallint(3) NOT NULL DEFAULT 0,
  `skill_point` smallint(3) NOT NULL DEFAULT 0,
  `quickslot` tinyblob NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0',
  `part_main` mediumint(6) NOT NULL DEFAULT 0,
  `part_base` tinyint(4) NOT NULL DEFAULT 0,
  `part_hair` mediumint(4) NOT NULL DEFAULT 0,
  `part_sash` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_group` tinyint(4) NOT NULL DEFAULT 0,
  `skill_level` blob NULL,
  `alignment` int(11) NOT NULL DEFAULT 0,
  `last_play` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_name` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `stat_reset_count` tinyint(4) NOT NULL DEFAULT 0,
  `horse_hp` smallint(4) NOT NULL DEFAULT 0,
  `horse_stamina` smallint(4) NOT NULL DEFAULT 0,
  `horse_level` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `horse_hp_droptime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `horse_riding` tinyint(1) NOT NULL DEFAULT 0,
  `horse_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `gaya_coins` int(11) NOT NULL DEFAULT 0,
  `costume_options` int(2) NOT NULL DEFAULT 0,
  `gm_invisible` int(2) NOT NULL DEFAULT 0,
  `chatban_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `biolog_mission` tinyint(3) NOT NULL DEFAULT 0,
  `biolog_collected` int(3) NOT NULL DEFAULT 0,
  `biolog_cooldown_reminder` tinyint(1) NOT NULL DEFAULT 0,
  `biolog_cooldown` int(11) NOT NULL DEFAULT 0,
  `marble_mission` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `marble_extanded_count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `marble_killed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `letter_slots` blob NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id_idx`(`account_id`) USING BTREE,
  INDEX `name_idx`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_deleted
-- ----------------------------
DROP TABLE IF EXISTS `player_deleted`;
CREATE TABLE `player_deleted`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONAME',
  `job` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `voice` tinyint(1) NOT NULL DEFAULT 0,
  `dir` tinyint(2) NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `y` int(11) NOT NULL DEFAULT 0,
  `z` int(11) NOT NULL DEFAULT 0,
  `map_index` int(11) NOT NULL DEFAULT 0,
  `exit_x` int(11) NOT NULL DEFAULT 0,
  `exit_y` int(11) NOT NULL DEFAULT 0,
  `exit_map_index` int(11) NOT NULL DEFAULT 0,
  `hp` int(11) NOT NULL DEFAULT 0,
  `mp` int(11) NOT NULL DEFAULT 0,
  `stamina` smallint(6) NOT NULL DEFAULT 0,
  `random_hp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `random_sp` smallint(5) NOT NULL DEFAULT 0 COMMENT 'if lvl 0, it will be negative',
  `playtime` int(11) NOT NULL DEFAULT 0,
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `level_step` tinyint(1) NOT NULL DEFAULT 0,
  `st` smallint(3) NOT NULL DEFAULT 0,
  `ht` smallint(3) NOT NULL DEFAULT 0,
  `dx` smallint(3) NOT NULL DEFAULT 0,
  `iq` smallint(3) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL DEFAULT 0,
  `gold` bigint(16) NULL DEFAULT NULL,
  `stat_point` smallint(3) NOT NULL DEFAULT 0,
  `skill_point` smallint(3) NOT NULL DEFAULT 0,
  `quickslot` tinyblob NULL,
  `ip` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0.0.0.0',
  `part_main` mediumint(6) NOT NULL DEFAULT 0,
  `part_base` tinyint(4) NOT NULL DEFAULT 0,
  `part_hair` mediumint(4) NOT NULL DEFAULT 0,
  `part_acce` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_group` tinyint(4) NOT NULL DEFAULT 0,
  `skill_level` blob NULL,
  `alignment` int(11) NOT NULL DEFAULT 0,
  `last_play` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_name` tinyint(1) NOT NULL DEFAULT 0,
  `mobile` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `stat_reset_count` tinyint(4) NOT NULL DEFAULT 0,
  `horse_hp` smallint(4) NOT NULL DEFAULT 0,
  `horse_stamina` smallint(4) NOT NULL DEFAULT 0,
  `horse_level` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `horse_hp_droptime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `horse_riding` tinyint(1) NOT NULL DEFAULT 0,
  `horse_skill_point` smallint(3) NOT NULL DEFAULT 0,
  `gaya_coins` int(11) NOT NULL DEFAULT 0,
  `costume_options` int(2) NOT NULL DEFAULT 0,
  `gm_invisible` int(2) NOT NULL DEFAULT 0,
  `chatban_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `biolog_mission` tinyint(3) NOT NULL DEFAULT 0,
  `biolog_collected` int(3) NOT NULL DEFAULT 0,
  `biolog_cooldown_reminder` tinyint(1) NOT NULL DEFAULT 0,
  `biolog_cooldown` int(11) NOT NULL DEFAULT 0,
  `marble_mission` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `marble_extanded_count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `marble_killed` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `letter_slots` blob NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id_idx`(`account_id`) USING BTREE,
  INDEX `name_idx`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_index
-- ----------------------------
DROP TABLE IF EXISTS `player_index`;
CREATE TABLE `player_index`  (
  `id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pid4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `empire` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid1_key`(`pid1`) USING BTREE,
  INDEX `pid2_key`(`pid2`) USING BTREE,
  INDEX `pid3_key`(`pid3`) USING BTREE,
  INDEX `pid4_key`(`pid4`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest`  (
  `dwPID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `szName` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szState` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `lValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwPID`, `szName`, `szState`) USING BTREE,
  INDEX `pid_idx`(`dwPID`) USING BTREE,
  INDEX `name_idx`(`szName`) USING BTREE,
  INDEX `state_idx`(`szState`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for refine_proto
-- ----------------------------
DROP TABLE IF EXISTS `refine_proto`;
CREATE TABLE `refine_proto`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vnum0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count0` smallint(6) NOT NULL DEFAULT 0,
  `vnum1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count1` smallint(6) NOT NULL DEFAULT 0,
  `vnum2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count2` smallint(6) NOT NULL DEFAULT 0,
  `vnum3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count3` smallint(6) NOT NULL DEFAULT 0,
  `vnum4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count4` smallint(6) NOT NULL DEFAULT 0,
  `cost` int(11) NOT NULL DEFAULT 0,
  `src_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `result_vnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `prob` smallint(6) NOT NULL DEFAULT 100,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2105 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for safebox
-- ----------------------------
DROP TABLE IF EXISTS `safebox`;
CREATE TABLE `safebox`  (
  `account_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `gold` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `vnum` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Noname',
  `npc_vnum` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_item
-- ----------------------------
DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `shop_vnum` int(11) NOT NULL DEFAULT 0,
  `item_vnum` int(11) NOT NULL DEFAULT 0,
  `count` tinyint(4) UNSIGNED NOT NULL DEFAULT 1
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Table structure for shopsearch_sold_items
-- ----------------------------
DROP TABLE IF EXISTS `shopsearch_sold_items`;
CREATE TABLE `shopsearch_sold_items`  (
  `vnum` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for skill_proto
-- ----------------------------
DROP TABLE IF EXISTS `skill_proto`;
CREATE TABLE `skill_proto`  (
  `dwVnum` int(11) NOT NULL DEFAULT 0,
  `szName` varbinary(32) NOT NULL DEFAULT '',
  `bType` tinyint(4) NOT NULL DEFAULT 0,
  `bLevelStep` tinyint(4) NOT NULL DEFAULT 0,
  `bMaxLevel` tinyint(4) NOT NULL DEFAULT 0,
  `bLevelLimit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `szPointOn` enum('NONE','MAX_HP','MAX_SP','HP_REGEN','SP_REGEN','BLOCK','HP','SP','ATT_GRADE','DEF_GRADE','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','BOW_DISTANCE','MOV_SPEED','ATT_SPEED','POISON_PCT','RESIST_RANGE','RESIST_MELEE','CASTING_SPEED','REFLECT_MELEE','ATT_BONUS','DEF_BONUS','RESIST_NORMAL','DODGE','KILL_HP_RECOVER','KILL_SP_RECOVER','HIT_HP_RECOVER','HIT_SP_RECOVER','CRITICAL','MANASHIELD','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','ATT_BONUS_TO_HUMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS_TO_STONES','ATT_BONUS_TO_BOSS','RESIST_MONSTER_BONUS','RESIST_BOSS_BONUS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE',
  `szPointPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szCooldownPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szMasterBonusPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szAttackGradePoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setFlag` set('ATTACK','USE_MELEE_DAMAGE','COMPUTE_ATTGRADE','SELFONLY','USE_MAGIC_DAMAGE','USE_HP_AS_COST','COMPUTE_MAGIC_DAMAGE','SPLASH','GIVE_PENALTY','USE_ARROW_DAMAGE','PENETRATE','IGNORE_TARGET_RATING','ATTACK_SLOW','ATTACK_STUN','HP_ABSORB','SP_ABSORB','ATTACK_FIRE_CONT','REMOVE_BAD_AFFECT','REMOVE_GOOD_AFFECT','CRUSH','ATTACK_POISON','TOGGLE','DISABLE_BY_POINT_UP','CRUSH_LONG','ATTACK_WIND','ATTACK_ELEC','ATTACK_FIRE','ATTACK_BLEEDING','PARTY') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setAffectFlag` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','DUNGEON_UNIQUE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIND','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','JEUNGRYEOK','TANHWAN_DASH','PABEOP','CHEONGEUN_WITH_FALL','POLYMORPH','WAR_FLAG1','WAR_FLAG2','WAR_FLAG3','CHINA_FIREWORK','HAIR','GERMANY','RAMADAN_RING','BLEEDING','RED_POSSESSION','BLUE_POSSESSION') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YMIR',
  `szPointOn2` enum('NONE','MAX_HP','MAX_SP','HP_REGEN','SP_REGEN','BLOCK','HP','SP','ATT_GRADE','DEF_GRADE','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','BOW_DISTANCE','MOV_SPEED','ATT_SPEED','POISON_PCT','RESIST_RANGE','RESIST_MELEE','CASTING_SPEED','REFLECT_MELEE','ATT_BONUS','DEF_BONUS','RESIST_NORMAL','DODGE','KILL_HP_RECOVER','KILL_SP_RECOVER','HIT_HP_RECOVER','HIT_SP_RECOVER','CRITICAL','MANASHIELD','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','ATT_BONUS_TO_HUMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS_TO_STONES','ATT_BONUS_TO_BOSS','RESIST_MONSTER_BONUS','RESIST_BOSS_BONUS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE',
  `szPointPoly2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `setAffectFlag2` enum('YMIR','INVISIBILITY','SPAWN','POISON','SLOW','STUN','DUNGEON_READY','DUNGEON_UNIQUE','BUILDING_CONSTRUCTION_SMALL','BUILDING_CONSTRUCTION_LARGE','BUILDING_UPGRADE','MOV_SPEED_POTION','ATT_SPEED_POTION','FISH_MIND','JEONGWIHON','GEOMGYEONG','CHEONGEUN','GYEONGGONG','EUNHYUNG','GWIGUM','TERROR','JUMAGAP','HOSIN','BOHO','KWAESOK','MANASHIELD','MUYEONG','REVIVE_INVISIBLE','FIRE','GICHEON','JEUNGRYEOK','TANHWAN_DASH','PABEOP','CHEONGEUN_WITH_FALL','POLYMORPH','WAR_FLAG1','WAR_FLAG2','WAR_FLAG3','CHINA_FIREWORK','HAIR','GERMANY','RAMADAN_RING','BLEEDING','RED_POSSESSION','BLUE_POSSESSION') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'YMIR',
  `szPointOn3` enum('NONE','MAX_HP','MAX_SP','HP_REGEN','SP_REGEN','BLOCK','HP','SP','ATT_GRADE','DEF_GRADE','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','BOW_DISTANCE','MOV_SPEED','ATT_SPEED','POISON_PCT','RESIST_RANGE','RESIST_MELEE','CASTING_SPEED','REFLECT_MELEE','ATT_BONUS','DEF_BONUS','RESIST_NORMAL','DODGE','KILL_HP_RECOVER','KILL_SP_RECOVER','HIT_HP_RECOVER','HIT_SP_RECOVER','CRITICAL','MANASHIELD','SKILL_DAMAGE_BONUS','NORMAL_HIT_DAMAGE_BONUS','ATT_BONUS_TO_HUMAN','ATT_BONUS_TO_MONSTER','ATT_BONUS_TO_STONES','ATT_BONUS_TO_BOSS','RESIST_MONSTER_BONUS','RESIST_BOSS_BONUS') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NONE',
  `szPointPoly3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szDurationPoly3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `szGrandMasterAddSPCostPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `prerequisiteSkillVnum` int(11) NOT NULL DEFAULT 0,
  `prerequisiteSkillLevel` int(11) NOT NULL DEFAULT 0,
  `eSkillType` enum('NORMAL','MELEE','RANGE','MAGIC') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'NORMAL',
  `iMaxHit` tinyint(4) NOT NULL DEFAULT 0,
  `szSplashAroundDamageAdjustPoly` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `dwTargetRange` int(11) NOT NULL DEFAULT 1000,
  `dwSplashRange` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`dwVnum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sms_pool
-- ----------------------------
DROP TABLE IF EXISTS `sms_pool`;
CREATE TABLE `sms_pool`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `receiver` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `mobile` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sent` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `msg` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sent_idx`(`sent`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for string
-- ----------------------------
DROP TABLE IF EXISTS `string`;
CREATE TABLE `string`  (
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teleport_categories
-- ----------------------------
DROP TABLE IF EXISTS `teleport_categories`;
CREATE TABLE `teleport_categories`  (
  `categoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `categoryName` varbinary(255) NOT NULL,
  `adminMode` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`categoryID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teleport_items
-- ----------------------------
DROP TABLE IF EXISTS `teleport_items`;
CREATE TABLE `teleport_items`  (
  `categoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mapID` int(11) NULL DEFAULT 0,
  `minLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `maxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `entrancex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entrancey` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for temp_table
-- ----------------------------
DROP TABLE IF EXISTS `temp_table`;
CREATE TABLE `temp_table`  (
  `owner_pid` bigint(20) UNSIGNED NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `vnum` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `socket5` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `owner_pid`(`owner_pid`, `position`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for tombola
-- ----------------------------
DROP TABLE IF EXISTS `tombola`;
CREATE TABLE `tombola`  (
  `id` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `iPool` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `dwVnum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wCount` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `iProb` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for whisper_offline
-- ----------------------------
DROP TABLE IF EXISTS `whisper_offline`;
CREATE TABLE `whisper_offline`  (
  `sender` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `target` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sender_level` int(3) NULL DEFAULT NULL,
  `sent_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_time` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
