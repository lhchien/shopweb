<?php
	//-------------------------
		include_once("class/doitac.php");	
		$doitac = new doitac;
		include_once("class/upload.php");
		$upload = new upload;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qldoitac/add.php";
		break;
	case "edit":
		include_once "layout/qldoitac/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qldoitac/index.php";
		break;
	default:
		include_once "layout/qldoitac/index.php";
		break;
}
?>