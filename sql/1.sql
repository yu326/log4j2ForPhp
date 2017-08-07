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


-- 导出  表 downloaddata.downfields 结构
CREATE TABLE IF NOT EXISTS `downfields` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `field` varchar(50) NOT NULL DEFAULT '0',
  `fieldName` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7124 DEFAULT CHARSET=utf8 COMMENT='下载字段表';

-- 正在导出表  downloaddata.downfields 的数据：19 rows
/*!40000 ALTER TABLE `downfields` DISABLE KEYS */;
INSERT IGNORE INTO `downfields` (`id`, `field`, `fieldName`) VALUES
	(2, 'userid', '用户id'),
	(5, 'page_url', '页面地址'),
	(14, 'verify', '认证'),
	(12, 'source_host', '数据来源'),
	(15, 'content_type', '数据类型'),
	(8, 'praises_count', '赞'),
	(13, 'sex', '性别'),
	(1, 'id', '微博id'),
	(9, 'read_count', '阅读数'),
	(6, 'reposts_count', '转发数'),
	(10, 'followers_count', '粉丝数'),
	(7, 'comments_count', '评论数'),
	(11, 'source', '发布平台'),
	(3, 'screen_name', '用户名'),
	(4, 'text', '微博内容'),
	(16, 'country_code', '国家'),
	(17, 'province_code', '省'),
	(18, 'city_code', '市'),
	(19, 'created_at', '发布时间');
/*!40000 ALTER TABLE `downfields` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
