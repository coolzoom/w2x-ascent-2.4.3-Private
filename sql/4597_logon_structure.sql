/*
MySQL Data Transfer
Source Host: localhost
Source Database: test_logon
Target Host: localhost
Target Database: test_logon
Date: 15.06.2008 01:08:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `acct` int(10) unsigned NOT NULL auto_increment COMMENT 'Unique ID',
  `login` varchar(32) collate utf8_unicode_ci NOT NULL COMMENT 'Login username',
  `password` varchar(32) collate utf8_unicode_ci NOT NULL COMMENT 'Login password',
  `encrypted_password` varchar(42) collate utf8_unicode_ci NOT NULL default '',
  `gm` varchar(32) collate utf8_unicode_ci NOT NULL default '' COMMENT 'Game permissions',
  `banned` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Account Standing',
  `lastlogin` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'Last login timestamp',
  `lastip` varchar(16) collate utf8_unicode_ci NOT NULL default '' COMMENT 'Last remote address',
  `email` varchar(64) collate utf8_unicode_ci NOT NULL default '' COMMENT 'Contact e-mail address',
  `flags` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Client flags',
  `forceLanguage` varchar(5) collate utf8_unicode_ci NOT NULL default 'enUS',
  `muted` int(30) NOT NULL default '0',
  PRIMARY KEY  (`acct`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Account Information';

-- ----------------------------
-- Table structure for ipbans
-- ----------------------------
DROP TABLE IF EXISTS `ipbans`;
CREATE TABLE `ipbans` (
  `ip` varchar(16) collate utf8_unicode_ci NOT NULL default '' COMMENT 'Remote host',
  `expire` int(30) NOT NULL default '0' COMMENT 'Expiry time (s)',
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IPBanner';

-- ----------------------------
-- Records 
-- ----------------------------
