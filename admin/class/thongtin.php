<?php
	class thongtin
	{
		function nd_lienhe()
		{
			$sql = "select * from  lienhe where lh_loai =1";
			$query = mysql_query($sql);
			return $query;
		}
		
		function nd_gioithieu()
		{
			$sql = "select * from gioithieu";
			$query = mysql_query($sql);
			return $query;
		}
		function nd_huongdan()
		{
			$sql = "select * from huongdan";
			$query = mysql_query($sql);
			return $query;
		}
		function edit_lh($mota)
		{
			$sql = "update lienhe set lh_noidung = '$mota' where lh_loai =1 ";
			mysql_query($sql);
		}
	
		function edit_gt($mota)
		{
			$sql = "update gioithieu set gt_noidung = '$mota'";
			mysql_query($sql);
		}
	
		function edit_hd($mota)
		{
			$sql = "update huongdan set hd_noidung = '$mota'";
			mysql_query($sql);
		}
	
	}
?>