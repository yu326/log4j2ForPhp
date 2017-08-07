<?php

function getIndexData()
{
    global $dsql, $logger;
    $sql = "select name,fieldIds from " . DATABASE_DOWNRELATION . " a inner join  " . DATABASE_DOWNGROUP . " b  on a.id = b.id";
    $qr = $dsql->ExecQuery($sql);
    if (!$qr) {
        $logger->error("log : " . __FUNCTION__ . " sqlerror:" . $sql . " - " . $dsql->GetError());
    } else {
        while ($r = $dsql->GetArray($qr)) {
            $fieldIds = $r['fieldIds'];
//            $logger->info("the fieldIds is:" . var_export($fieldIds, true));
            $sql1 = "select field,fieldName from downfields where id in ( " . $fieldIds . " )";
//            $logger->info("the sql1 is：".var_export($sql1,true));
            $qr1 = $dsql->ExecQuery($sql1);
            if (!$qr1) {
                $logger->error("log : " . __FUNCTION__ . " sqlerror:" . $sql . " - " . $dsql->GetError());
            } else {
                while ($r1 = $dsql->GetArray($qr1)) {
                    $fields[] = $r1['field'];
                    $fieldsName[] = $r1['fieldName'];
                }
            }
            $strFields = implode(",",$fields);
            $strFieldsName = implode(",",$fieldsName);
            unset($fields);
            unset($fieldsName);
            unset($r['fieldIds']);
//            $logger->info("the fields is:" . var_export($strFields, true));
//            $logger->info("the fields is:" . var_export($strFieldsName, true));
            $r['strFields'] = $strFields;
            $r['strFieldsName'] = $strFieldsName;
            $result[] = $r;
        }
    }
    $logger->info("log : getComment data is:" . var_export($result, true));
    return $result;


}


?>