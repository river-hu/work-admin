<?php
header('Access-Control-Allow-Origin:http://127.0.0.1:8080');
$db=mysqli_connect("127.0.0.1","root","root","work");

// mysql_select_db('work');

// mysql_query("set names utf8",$db);

function m($sql,$db){
    $re=mysqli_query($db,$sql);
    // while($row=mysql_fetch_assoc($re)){
    //     $list[]=$row;
    // }
  
    $list = mysqli_fetch_all($re,MYSQLI_ASSOC);

    return $list;

}
function inset($sql,$db){
    $re=mysqli_query($db,$sql);
    return $re;
}
?>