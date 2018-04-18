<?php
require_once("sql.php");

$userid = $_GET["userid"];
$sortid = $_GET["sortid"];
$type = $_GET["type"];//0数据插入，1数据修改，2数据删除，3数据获取
switch ($type)
{
case 0:
  $content = $_GET["content"];
  $sql = "INSERT INTO `experience`(`userid`, `sortid`, `content`) VALUES ($userid,$sortid,'$content')";
  $list = inset($sql,$db);
  break;  
case 1:
  $id = $_GET["id"];
  $content = $_GET["content"];
  $sql = "UPDATE `experience` SET `content`='$content' WHERE `id`=$id";
  $list = inset($sql,$db);
  break;
case 2:
  $id = $_GET["id"];
  $sql = "DELETE FROM `experience` WHERE `id`=$id";
  $list = inset($sql,$db);
  break;
default:
  break;
}

$sql = "SELECT * FROM `experience` WHERE `userid`=$userid AND `sortid`=$sortid";

$list = m($sql,$db);

echo json_encode($list);

?>