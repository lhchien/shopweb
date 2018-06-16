<?php
	class taikhoan
	{
		function danh_sach($ma)
		{
			$sql = "select * from quantri where qt_tendangnhap != 'admin@gmail.com' and qt_tendangnhap !='$ma'";
			$query = mysql_query($sql);
			return $query;
		}
		
		function kt_tontai($ma)
		{
			$sql = "select * from quantri where qt_tendangnhap ='$ma'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ma,$pass,$ten,$quyen)
		{
			$sql = "insert into quantri (qt_tendangnhap, qt_matkhau, qt_ten, qt_quyen) value ('$ma','$pass','$ten',$quyen)";
			mysql_query($sql);
		}
		
		function get_edit($pass)
		{
			$sql = "select * from quantri where qt_matkhau = '$pass'";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		
		function set_edit($ma, $pass)
		{
			$sql = "update quantri set qt_matkhau ='$pass' where qt_ma = $ma ";
			mysql_query($sql);
		}
		
		function kt_xoa($ma, $pass)
		{
			$sql = "select * from quantri where qt_ma = $ma and qt_matkhau ='$pass'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
	
		function xoa ($ma)
		{
			$sql = "delete from quantri where qt_ma = '$ma'";
			mysql_query($sql);
		}

	    function ds_email()
        {
            $sql = "select * from mail";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }

        function change_mail($mail,$trangthai)
        {
            $sql ="update mail set mail_ten ='$mail' where mail_trangthai =$trangthai";
            mysql_query($sql);
        }
        function add_mail($mail,$trangthai)
        {
            $sql ="insert into  mail (mail_ten,mail_trangthai) values ('$mail',$trangthai)";
            mysql_query($sql);
        }
	}
?>