<?php
	class sanpham
	{
		function danh_sach()
		{
			$sql = "select * from  sanpham where sp_trangthai =1";
			$query = mysql_query($sql);
			return $query;
		}
		function ds_loc($ma)
		{
			$sql = "select * from sanpham where lsp_ma = $ma and sp_trangthai =1";
			$query = mysql_query($sql);
			return $query;
		}
		function ds_hinh($ma)
		{
			$sql ="select * from hinhsanpham where sp_ma = $ma";
			$query = mysql_query($sql);
			return $query;
		}
		function hinh_sp($ma)
		{
			$sql = "select * from hinhsanpham where hsp_ma = $ma";
			$query = mysql_query($sql);
			return $query;
		}
		
		function kt_tontai($ten)
		{
			$sql = "select * from sanpham where sp_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$mota,$lsp,$nsx,$gia,$url,$chitiet,$dvtinh,$ngaycapnhat)
		{
			$sql = "insert into sanpham (sp_ten, sp_mota_ngan, lsp_ma, nsx_ma, sp_gia, sp_anhdd, sp_mota_chitiet, sp_trangthai, sp_donvitinh, sp_ngaycapnhat) value ('$ten','$mota',$lsp,$nsx,$gia,'$url','$chitiet',1,'$dvtinh','$ngaycapnhat')";
			mysql_query($sql);
		}
		
		function them_anh($ma,$url)
		{
			$sql = "insert into hinhsanpham (hsp_tentaptin, sp_ma) values ('$url',$ma)";
			mysql_query($sql);
		}
		
		function update_avata($ma,$url)
		{
			$sql = "update hinhsanpham set hsp_tentaptin = '$url' where hsp_ma = $ma";
			mysql_query($sql);
		}
		
		function get_edit($ma)
		{
			$sql = "select * from sanpham where sp_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}

		function set_edit($ma, $ten, $mota, $price ,$chitiet, $dvtinh,$ngaycapnhat)
		{
			$sql = "update sanpham set sp_ten ='$ten' , sp_mota_ngan = '$mota', sp_mota_chitiet = '$chitiet', sp_gia = $price, sp_donvitinh = '$dvtinh', sp_ngaycapnhat ='$ngaycapnhat' where sp_ma =$ma ";
			mysql_query($sql);
		}
		function set_url($ma, $url)
		{
			$sql = "update sanpham set sp_anhdd ='$url' where sp_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "update sanpham set sp_trangthai = 0 where sp_ma=$ma";
			mysql_query($sql);
		}
		function xoa_anh($ma)
		{
			$sql = "delete from hinhsanpham where hsp_ma= $ma";
			mysql_query($sql);
		}
	
	}
?>