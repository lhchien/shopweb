<?php
	//-------------------------
		include_once("class/taikhoan.php");	
		$taikhoan = new taikhoan;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qltaikhoan/add.php";
		break;
	case "edit":
		include_once "layout/qltaikhoan/edit.php";
		break;
	case "changepass":
		include_once "layout/qltaikhoan/changepass.php";
		break;
	case "email":
		include_once "layout/qltaikhoan/email.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qltaikhoan/index.php";
		break;
	default:
		include_once "layout/qltaikhoan/index.php";
		break;
}
?>