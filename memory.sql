/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : memory

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-05 23:28:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_memo
-- ----------------------------
DROP TABLE IF EXISTS `m_memo`;
CREATE TABLE `m_memo` (
  `memo_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT ' 备忘编号',
  `catgory_id` int(10) DEFAULT '0',
  `memo_title` varchar(200) DEFAULT NULL,
  `memo_content` text,
  `tag_ids` varchar(200) DEFAULT '',
  `tag_names` varchar(500) DEFAULT '',
  PRIMARY KEY (`memo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='备忘记忆表';

-- ----------------------------
-- Table structure for m_tag
-- ----------------------------
DROP TABLE IF EXISTS `m_tag`;
CREATE TABLE `m_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tag编号',
  `tag_name` varchar(50) DEFAULT NULL COMMENT 'tag名称',
  `tag_num` int(10) DEFAULT '0' COMMENT 'tag子集数量',
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Table structure for m_tag_map
-- ----------------------------
DROP TABLE IF EXISTS `m_tag_map`;
CREATE TABLE `m_tag_map` (
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `memo_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`,`memo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签数据映射表';
