<?php
require_once("sql.php");

$id = $_GET["id"];

$sql = "SELECT  * FROM user WHERE `id`='$id'";
$sql1 = "SELECT  * FROM page WHERE `userid`='$id' AND `scroe`='0' ";

$list = m($sql,$db);
$list1 = m($sql1,$db);
$list[0]['pages'] = $list1;
echo json_encode($list);

?>