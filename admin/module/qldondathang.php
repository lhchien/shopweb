<?php
	//-------------------------
		include_once("class/donhang.php");	
		$donhang = new donhang;
	//-------------------------
$act = isset($_GET['act']) ? $_GET['act'] : '';
switch ($act) {
	case "detail":
		include_once "layout/qldondathang/detail.php";
		break;
	case "edit":
		show_success("Đang update trạng thái. Chuyển trang trong 3s");
		include_once "layout/qldondathang/index.php";
		redirect ("?page=qldondathang",3);
		break;
	case "delete":
		$confirm="yes";
		include_once "layout/qldondathang/index.php";
		break;
	default:
		include_once "layout/qldondathang/index.php";
		break;
}
?>