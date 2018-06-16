<?php
	class giohang
	{
		function them_sp($ma)
		{
			$_SESSION['giohang']['sp_'.$ma] =1;
		}
		function them_sl($ma,$soluong)
		{
			$_SESSION["giohang"]['sp_'.$ma]= $soluong;
		}
		function xoa_sp($ma)
		{
			$val = '_'.$ma;
			$_SESSION["giohang"][$val]=0;
		}
		function dat_hang($ngaylap,$noigiao,$user)
		{
			$sql ="insert into dondathang (dh_ngaylap,dh_noigiao,kh_tendangnhap,dh_trangthaithanhtoan) values ('$ngaylap','$noigiao','$user',1)";
			return mysql_query($sql);
		}
		function dat_hang_moi($ngaylap,$noigiao,$ten,$diachi,$dienthoai)
		{
			$sql ="insert into dondathang (dh_ngaylap,dh_noigiao,kh_ten,kh_diachi,kh_sdt, dh_trangthaithanhtoan) values ('$ngaylap','$noigiao','$ten','$diachi','$dienthoai',1)";
			return mysql_query($sql);
		}
		function san_pham_dat($dh_ma,$sp_ma,$sp_soluong,$dongia)
		{
			$sql ="insert into sanpham_dondathang (dh_ma,sp_ma,sp_dh_soluong,sp_dh_dongia) values($dh_ma,$sp_ma,$sp_soluong,$dongia)";
			return mysql_query($sql);
		}
		function get_dh_ma()
		{
			$sql = "select max(dh_ma) from dondathang";
			return mysql_query($sql);
		}
	}
?>