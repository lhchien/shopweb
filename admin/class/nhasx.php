<?php
	class nhasx
	{
		function danh_sach()
		{
			$sql = "select * from  nhasanxuat";
			$query = mysql_query($sql);
			return $query;
		}
		
		function kt_tontai($ten)
		{
			$sql = "select * from nhasanxuat where nsx_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$mota)
		{
			$sql = "insert into nhasanxuat (nsx_ten, nsx_mota) value ('$ten','$mota')";
			mysql_query($sql);
		}
		
		function get_edit($ma)
		{
			$sql = "select * from nhasanxuat where nsx_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		
		function set_edit($ma, $ten, $mota)
		{
			$sql = "update nhasanxuat set nsx_ten ='$ten' , nsx_mota = '$mota' where nsx_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "delete from nhasanxuat where nsx_ma = $ma";
			mysql_query($sql);
		}
	
	}
?>