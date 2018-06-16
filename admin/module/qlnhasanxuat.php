<?php
	//-------------------------
		include_once("class/nhasx.php");	
		$nhasx = new nhasx;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qlnhasanxuat/add.php";
		break;
	case "edit":
		include_once "layout/qlnhasanxuat/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qlnhasanxuat/index.php";
		break;
	default:
		include_once "layout/qlnhasanxuat/index.php";
		break;
}
?>