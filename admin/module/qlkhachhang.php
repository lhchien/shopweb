<?php
	//-------------------------
		include_once("class/khachhang.php");	
		$khachhang = new khachhang;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "detail":
		include_once "layout/qlkhachhang/detail.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qlkhachhang/index.php";
		break;
	default:
		include_once "layout/qlkhachhang/index.php";
		break;
}
?>