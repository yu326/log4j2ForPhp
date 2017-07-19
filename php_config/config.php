<?php
/**
 * Created by PhpStorm.
 * User: koreyoshi
 * Date: 2017/7/19
 * Time: 17:49
 */





//配置文件根定义
define('CONFIG_DIR', 'U:/log4j2ForPhp');
define('LOG4PHP_DIR', CONFIG_DIR . '/util/log4php');//日志控件地址
//日志名定义
define("LOGNAME_TEST", "test");
define("LOGNAME_SUIXIN", "suixin");
define("LOGNAME_SOLR", "solr");
//引入log4php
include_once(LOG4PHP_DIR . "/Logger.php");
Logger::configure(CONFIG_DIR . "/php_config/log4php.xml");


define('DATABASE_SERVER', 'localhost:3306');    //数据库server
define('DATABASE_USERNAME', 'root');    //用户名
define('DATABASE_PASSWORD', 'root');    //密码


//默认状态
define('COMMENT_ISSHOW', 0);
define('COMMENT_LEVEL', 1);


?>