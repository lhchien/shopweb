<?php
	//-------------------------
		include_once("class/loai_sp.php");	
		$loai_sp = new loai_sp;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qlloaisanpham/add.php";
		break;
	case "edit":
		include_once "layout/qlloaisanpham/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qlloaisanpham/index.php";
		break;
	default:
		include_once "layout/qlloaisanpham/index.php";
		break;
}
?>