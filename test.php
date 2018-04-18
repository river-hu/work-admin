<?php
require_once("sql.php");
$sql = "INSERT INTO `user`(`name`) VALUES ('tmde-1')";
  $list = inset($sql,$db);
  $sql = "SELECT `id` FROM `user` WHERE `name`='tmde-1'";
  $list = m($sql,$db);

  echo $list[0]['id'];