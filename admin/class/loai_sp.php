<?php
	class loai_sp
	{
		function danh_sach()
		{
			$sql = "select * from loaisanpham ";
			$query = mysql_query($sql);
			return $query;
		}
		
		function kt_tontai($ten)
		{
			$sql = "select * from loaisanpham where lsp_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$mota,$status, $url)
		{
			$sql = "insert into loaisanpham (lsp_ten, lsp_mota, lsp_trangthai, lsp_anhdd) value ('$ten','$mota',$status,'$url')";
			mysql_query($sql);
		}
		
		function get_edit($ma)
		{
			$sql = "select * from loaisanpham where lsp_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		
		function set_edit($ma, $ten, $mota)
		{
			$sql = "update loaisanpham set lsp_ten ='$ten' , lsp_mota = '$mota' where lsp_ma =$ma ";
			mysql_query($sql);
		}
		
		function set_url($ma, $url)
		{
			$sql = "update loaisanpham set lsp_anhdd ='$url' where lsp_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa ($ma)
		{
			$sql = "delete from loaisanpham where lsp_ma = $ma";
			mysql_query($sql);
		}
	
	}
?>