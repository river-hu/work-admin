<?php
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST');
require_once("sql.php");
$type = $_POST["type"];//0生成id，1数据插入，2邮箱查重，3多余数据删除

switch ($type)
{
case 0:
    $sql = "INSERT INTO `user`(`name`) VALUES ('tmde-1')";
    $list = inset($sql,$db);
    $sql = "SELECT `id` FROM `user` WHERE `name`='tmde-1'";
    $list = m($sql,$db);
    echo $list[0]['id'];
    break;  
case 1:
  $id = $_POST["id"];
  $name = $_POST["name"];
  $email = $_POST["email"];
  $city = $_POST["city"];
  $days = $_POST["days"];
  $sex = $_POST["sex"];
  $liker = $_POST["liker"];
  $dec = $_POST["dec"];
  $header = $_POST["header"];
  $password = md5($_POST["password"]+'tmd');
  $sql = "UPDATE `user` SET `name`='$name',`email`='$email',`city`='$city',`days`='$days',`sex`='$sex',`liker`='$liker',`dec`='$dec',`header`='$header',`password`='$password' WHERE `id`=$id";
  $list = inset($sql,$db);
  echo $list;
  break;
case 2:
    $name = $_POST["name"];
    $sql = "SELECT  id FROM user WHERE `email`='$name'";
    $list = m($sql,$db);
    echo json_encode($list);
  break;
case 3:
  $sql = "DELETE FROM `user` WHERE `name`='tmde-1'";
  $list = inset($sql,$db);
  break; 
default:
  break;
}
?>