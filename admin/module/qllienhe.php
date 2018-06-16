<?php
	//-------------------------
		include_once("class/lienhe.php");	
		$lienhe = new lienhe;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "add":
		include_once "layout/qllienhe/add.php";
		break;
	case "edit":
		include_once "layout/qllienhe/edit.php";
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qllienhe/index.php";
		break;
	default:
		include_once "layout/qllienhe/index.php";
		break;
}
?>