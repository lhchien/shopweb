<?php
	//-------------------------
		include_once("class/tintuc.php");	
		$tintuc = new tintuc;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qltintuc/add.php";
		break;
	case "edit":
		include_once "layout/qltintuc/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qltintuc/index.php";
		break;
	default:
		include_once "layout/qltintuc/index.php";
		break;
}
?>