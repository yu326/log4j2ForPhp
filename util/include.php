<?php
/**
 * Created by PhpStorm.
 * User: koreyoshi
 * Date: 2017/7/19
 * Time: 17:53
 */

include_once("HttpUtil.php");
include_once("common.php");
include_once("db_mysql.class.php");
ini_set('include_path', realpath('../php_config'));
include_once("config.php");
include_once("database_conf.php");

ini_set('include_path', realpath('../service'));
include_once("creatIndexService.php");