<?php
require_once("sql.php");

$id = $_GET["id"];
$name = $_GET["name"];
$value = $_GET["value"];
$sql = "UPDATE `user` SET `$name`='$value' WHERE `id`=$id";
$list = inset($sql,$db);
$sql = "SELECT  * FROM user WHERE `id`='$id'";
$sql1 = "SELECT  * FROM page WHERE `userid`='$id' AND `scroe`='0'";
$list = m($sql,$db);
$list1 = m($sql1,$db);
$list[0]['pages'] = $list1;
echo json_encode($list);
?>