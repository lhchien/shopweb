<?php
	class tintuc
	{
		function danh_sach()
		{
			$sql = "select * from tintuc ";
			$query = mysql_query($sql);
			return $query;
		}
		
		function kt_tontai($ten)
		{
			$sql = "select * from tintuc where tin_tieude ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($tieude,$mota,$noidung,$url)
		{
			$sql = "insert into tintuc (tin_tieude, tin_mota, tin_noidung, tin_hinhdd) values ('$tieude','$mota','$noidung','$url')";
			mysql_query($sql);
		}
		
		function get_edit($ma)
		{
			$sql = "select * from tintuc where tin_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		
		function set_edit($ma, $tieude, $mota, $noidung)
		{
			$sql = "update tintuc set tin_tieude ='$tieude' , tin_mota = '$mota', tin_noidung ='$noidung' where tin_ma =$ma ";
			mysql_query($sql);
		}
		
		function set_url($ma, $url)
		{
			$sql = "update tintuc set tin_hinhdd ='$url' where tin_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa ($ma)
		{
			$sql = "delete from tintuc where tin_ma = $ma";
			mysql_query($sql);
		}
	
	}
?>