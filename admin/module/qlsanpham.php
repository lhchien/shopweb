<?php
	//-------------------------
		include_once("class/sanpham.php");	
		$sanpham = new sanpham;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qlsanpham/add.php";
		break;
	case "edit":
		include_once "layout/qlsanpham/edit.php";
		break;
	case "editimg":
		//$confirm="yes";
		include_once "layout/qlsanpham/editimg.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qlsanpham/index.php";
		break;
	default:
		include_once "layout/qlsanpham/index.php";
		break;
}
?>