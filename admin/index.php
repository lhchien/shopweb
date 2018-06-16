<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href = "../css/bootstrap.min.css" rel="stylesheet" />
<link href = "css/style.css" rel="stylesheet" />
<script src="ckeditor/ckeditor.js"></script>
<script src="../js/jquery.js"></script>
<title>Demo Admin System</title>
</head>

<html>
<body>
	<?php
	include_once "../db/dbcon.php";
	include_once "function/function.php";
	$page=isset($_GET['page']) ? $_GET['page'] : NULL;
	if(isset($_SESSION['admin'])){
		if(isset($_GET['page'])){
			include_once 'layout/menu.php';
			include_once 'module/'.$_GET['page'].".php";
		}
		else
			include_once 'layout/main.php';
	}
	else
		include_once 'layout/login.php';
	?>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.js"></script>

</body>
</html>
