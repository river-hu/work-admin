<?php
header('Access-Control-Allow-Origin:http://127.0.0.1:8080');
$file = $_FILES['file'];//得到传输的数据
//得到文件名称
$name = $file['name'];
$id = $_POST["id"];
$type = strtolower(substr($name,strrpos($name,'.')+1)); //得到文件类型，并且都转化成小写
$allow_type = array('jpg','jpeg','gif','png'); //定义允许上传的类型
//判断文件类型是否被允许上传
if(!in_array($type, $allow_type)){
  //如果不被允许，则直接停止程序运行
  return ;
}
//判断是否是通过HTTP POST上传的
if(!is_uploaded_file($file['tmp_name'])){
  //如果不是通过HTTP POST上传的
  return ;
}
$upload_path = $_SERVER['DOCUMENT_ROOT']."workphp/img/$id/"; //上传文件的存放路径
//开始移动文件到相应的文件夹
is_dir($upload_path) OR mkdir($upload_path, 0777, true);
$imgname = rand(1,1000).$file['name'];
$header =$upload_path.$imgname;
if(move_uploaded_file($file['tmp_name'],$header)){
  echo $imgname;
}else{
  echo "Failed!";
}
?>