<?php
require_once("sql.php");

$id = $_GET["id"];
$sortid = $_GET["sortid"];
$sortname = $_GET["sortname"];
$scroe = $_GET["scroe"];
if($scroe=="1"){
    $img = $_GET["img"];
    $content = $_GET["content"];
    $dec = $_GET["dec"];
    $sql = "INSERT INTO `page`( `userid`, `scroe`, `title`, `img`, `content`, `pagedec`,`sortid`) VALUES ($id,1,'$sortname','$img','$content','$dec','$sortid')";
    $list = inset($sql,$db);
    echo $list;

}else{
    $sql = "INSERT INTO `page`(`userid`, `scroe`, `title`) VALUES ($id,0,'$sortname')";
    $list = inset($sql,$db);
    $sql1 = "SELECT  * FROM page WHERE `userid`='$id' AND `scroe`='0'";
    $list1 = m($sql1,$db);
    echo json_encode($list1);
    
}

?>