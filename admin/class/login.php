<?php
	class login
	{
		function check_user($user,$pass)
		{
			$sql = "select * from quantri where qt_tendangnhap = '".$user."' and qt_matkhau ='".md5($pass)."'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query);
			else
				return 0;
		}
		
		function log_in($user , $pass)
		{
			$sql = "select * from quantri where qt_tendangnhap = '$user' and qt_matkhau ='".md5($pass)."'";
			$query = mysql_query($sql);
			return mysql_fetch_array($query);
		}
		
	}
?>