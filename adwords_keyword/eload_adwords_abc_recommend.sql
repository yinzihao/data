/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-06 19:04:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eload_adwords_abc_recommend
-- ----------------------------
DROP TABLE IF EXISTS `eload_adwords_abc_recommend`;
CREATE TABLE `eload_adwords_abc_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'A-z词库关键词id',
  `keyword_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adwords 关键词id',
  `sub_keyword_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adwords扩展词id',
  `keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '关键词',
  `s_keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '关键词搜索',
  `sub_word` varchar(100) NOT NULL DEFAULT '' COMMENT '扩展推荐词',
  `monthly_volume` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '月流量',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间,供增量索引',
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '多语言标识0:英语1:法语',
  PRIMARY KEY (`id`),
  KEY `last_update_time` (`last_update_time`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=2824 DEFAULT CHARSET=utf8 COMMENT='GoogleKeyword匹配A-z词库,推荐词表';

-- ----------------------------
-- Records of eload_adwords_abc_recommend
-- ----------------------------
