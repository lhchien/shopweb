<?php
	class donhang
	{
		function danh_sach()
		{
			$sql = "select * from  dondathang where dh_trangthaithanhtoan > 0 order by dh_trangthaithanhtoan ";
			$query = mysql_query($sql);
			return $query;
		}
        function danh_sach_da_giao()
        {
            $sql = "select * from  dondathang where dh_trangthaithanhtoan > 0 and dh_trangthaithanhtoan = 2";
            $query = mysql_query($sql);
            return $query;
        }
        function danh_sach_chua_giao()
        {
            $sql = "select * from  dondathang where dh_trangthaithanhtoan > 0 and dh_trangthaithanhtoan = 1";
            $query = mysql_query($sql);
            return $query;
        }
        function danh_sach_si()
        {
            $sql = "select * from  dondathang a, sanpham_dondathang b where a.dh_ma = b.dh_ma
                and sp_dh_soluong =0 and dh_trangthaithanhtoan > 0 order by dh_trangthaithanhtoan ";
            $query = mysql_query($sql);
            return $query;
        }
        function danh_sach_le()
        {
            $sql = "select * from  dondathang a, sanpham_dondathang b where a.dh_ma = b.dh_ma
                and sp_dh_soluong !=0 and dh_trangthaithanhtoan > 0 order by dh_trangthaithanhtoan ";
            $query = mysql_query($sql);
            return $query;
        }
		function danh_sach_chi_tiet($ma)
		{
			$sql = "select * from sanpham_dondathang where dh_ma = $ma";
			$query = mysql_query($sql);
			return $query;
		}
		function tensanpham($ma)
		{
			$sql = "select * from sanpham where sp_ma=$ma";
			$query = mysql_query($sql);
			return $query;
		}
		
		function ds_loc($ma)
		{
			$sql = "select * from sanpham where lsp_ma = $ma and sp_trangthai =1";
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
		
		function khach_hang($ma)
		{
			$sql = "select * from khachhang where kh_tendangnhap = '$ma'";
			$query = mysql_query($sql);
			return $query;
		}
		
		function get_edit($ma)
		{
			$sql = "select * from dondathang where dh_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}

		function set_edit($ma)
		{
			$sql ="select * from dondathang where dh_ma = $ma";
			$query = mysql_query($sql);
			$status = mysql_fetch_array($query);
			if($status[4] == 2)
				$sql = "update dondathang set dh_trangthaithanhtoan =1 ,dh_ngaygiao = '' where dh_ma=$ma";
			else if($status[4] == 1)
				$sql = "update dondathang set dh_trangthaithanhtoan =2 ,dh_ngaygiao ='".strtotime('now')."'  where dh_ma=$ma";
			mysql_query($sql);
		}
		function set_url($ma, $url)
		{
			$sql = "update sanpham set sp_anhdd ='$url' where sp_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "update dondathang set dh_trangthaithanhtoan = 0 where dh_ma=$ma";
			mysql_query($sql);
		}
		function xoa_anh($ma)
		{
			$sql = "delete from hinhsanpham where hsp_ma= $ma";
			mysql_query($sql);
		}
	
	}
?>