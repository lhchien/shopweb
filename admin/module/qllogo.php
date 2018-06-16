<?php
	//-------------------------
		include_once("class/logo.php");	
		$logo = new logo;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qllogo/add.php";
		break;
	case "edit":
		include_once "layout/qllogo/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qllogo/index.php";
		break;
	default:
		include_once "layout/qllogo/index.php";
		break;
}
?>