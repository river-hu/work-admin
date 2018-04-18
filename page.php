<?php
require_once("sql.php");
$sortid = $_GET["sortid"];
$id = $_GET["id"];
$pageid = $_GET["pageid"];
if($pageid=='-1'){
    if($sortid=='-2'){
        $sql = "SELECT  * FROM page WHERE `userid`='$id' AND `scroe`='1' AND `sortid`!='-1' ORDER BY `datein` DESC";
    }else{
        $sql = "SELECT  * FROM page WHERE `userid`='$id' AND `scroe`='1' AND `sortid`='$sortid' ORDER BY `datein` DESC";
    }
}else{
    $sql = "SELECT  * FROM page WHERE `id`='$pageid'";
}

$list= m($sql,$db);
$list= $list;
echo json_encode($list);

?>