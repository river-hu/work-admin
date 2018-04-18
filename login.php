<?php
// header('Access-Control-Allow-Origin:http://127.0.0.1:8080');

require_once("sql.php");
$name = $_POST["name"];
$pass = $_POST["password"];
$pass = md5($pass+'tmd');
$sql = "SELECT  id FROM user WHERE `email`='$name'AND`password`='$pass'";
$list = m($sql,$db);
echo json_encode($list);
?>