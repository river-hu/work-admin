<?php
require_once("sql.php");
$userid = $_GET["userid"];
$sortid = $_GET["sortid"];
$type = $_GET["type"];//0数据插入，1数据修改，2数据删除，3数据获取
switch ($type)
{
case 0:
  $content = $_GET["content"];
  $sql = "INSERT INTO `imgmsg`(`userid`, `sortid`, `content`) VALUES ($userid,$sortid,'$content')";
  $list = inset($sql,$db);
  break;  
case 1:
  $id = $_GET["id"];
  $name = $_GET["name"];
  updata($id,$name,$db);
  break;
case 2:
  $id = $_GET["id"];
  $sql = "DELETE FROM `imgmsg` WHERE `id`=$id";
  $list = inset($sql,$db);
  break;
case 3:
  $content = $_GET["content"];
  $name = $_GET["name"];
  $sql = "INSERT INTO `imgmsg`(`userid`, `sortid`, `content`,`name`) VALUES ($userid,$sortid,'$content','$name')";
  $list = inset($sql,$db);
  break; 
default:
  break;
}

$sql = "SELECT * FROM `imgmsg` WHERE `userid`=$userid AND `sortid`=$sortid";

$list = m($sql,$db);

echo json_encode($list);

function updata($id,$name,$db){
    $sql = "UPDATE `imgmsg` SET `name`='$name' WHERE `id`=$id";
    $list = inset($sql,$db);
}

?>