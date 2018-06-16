<?php
	//-------------------------
		include_once("class/thongtin.php");	
		$thongtin = new thongtin;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "edit":
		include_once "layout/qlthongtin/edit.php";
		break;
	default:
		include_once "layout/qlthongtin/index.php";
		break;
}
?>