<?php
include_once("../util/include.php");
initLogger(LOGNAME_TEST);

if($_GET['name'] == "yu"){
    if (file_exists("../cache/index.html")) {
        header("location:../cache/index.html");
    } else {
        $dsql = new DB_MYSQL(DATABASE_SERVER, DATABASE_USERNAME, DATABASE_PASSWORD, DATABASE_YU, FALSE);
        $result = getIndexData();
        $logger->info("the result is:" . var_export($result, true));



    }
}else{
    echo "error request";
    $logger->info("the request is error");
}




?>