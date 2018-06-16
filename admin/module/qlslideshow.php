<?php
	//-------------------------
		include_once("class/slideshow.php");	
		$slideshow = new slideshow;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qlslideshow/add.php";
		break;
	case "edit":
		include_once "layout/qlslideshow/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qlslideshow/index.php";
		break;
	default:
		include_once "layout/qlslideshow/index.php";
		break;
}
?>