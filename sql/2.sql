-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.5.40 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 downloaddata 的数据库结构
CREATE DATABASE IF NOT EXISTS `downloaddata` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `downloaddata`;


-- 导出  表 downloaddata.downgroup 结构
CREATE TABLE IF NOT EXISTS `downgroup` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='下载字段组';

-- 正在导出表  downloaddata.downgroup 的数据：3 rows
/*!40000 ALTER TABLE `downgroup` DISABLE KEYS */;
INSERT IGNORE INTO `downgroup` (`id`, `name`) VALUES
	(1, '微博'),
	(2, '汽车'),
	(3, '电商');
/*!40000 ALTER TABLE `downgroup` ENABLE KEYS */;


-- 导出  表 downloaddata.downrelation 结构
CREATE TABLE IF NOT EXISTS `downrelation` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(4) NOT NULL DEFAULT '0',
  `fieldIds` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='下载组';

-- 正在导出表  downloaddata.downrelation 的数据：2 rows
/*!40000 ALTER TABLE `downrelation` DISABLE KEYS */;
INSERT IGNORE INTO `downrelation` (`id`, `groupid`, `fieldIds`) VALUES
	(1, 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19'),
	(2, 2, '1,3,5');
/*!40000 ALTER TABLE `downrelation` ENABLE KEYS */;


-- 导出  表 downloaddata.solrurlmapping 结构
CREATE TABLE IF NOT EXISTS `solrurlmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `solrUrl` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='solr对应的solr';

-- 正在导出表  downloaddata.solrurlmapping 的数据：0 rows
/*!40000 ALTER TABLE `solrurlmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `solrurlmapping` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
