<?php
	class sanpham
	{
		function danhmuc_sanpham()
		{
			$sql = "select * from loaisanpham";
			$query = mysql_query($sql);
			return $query;
		}
		function danhmuc_sanpham_($ma)
		{
			$sql = "select * from loaisanpham where lsp_ma = $ma";
			$query = mysql_query($sql);
			return $query;
		}
		function slideshow()
		{
			$sql = "select * from slide order by ss_uutien desc ";
			$query = mysql_query($sql);
			return $query;
		}
		function sanpham_banchay()
		{
			$sql = " select sum(sp_dh_soluong),sp_ma from sanpham_dondathang group by sp_ma order by sum(sp_dh_soluong)";
			$query = mysql_query($sql);
			return $query;
		}
		function ds_sanpham($ma)
		{
			$sql ="select * from sanpham where sp_ma = $ma and sp_trangthai = 1 order by sp_ma desc";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		function danhmuc_sp($ma)
		{
			$sql ="select * from sanpham where lsp_ma = $ma and sp_trangthai = 1 order by sp_ma desc";
			$query = mysql_query($sql);
			return $query;
		}	
		//=========================================
		function danhmuc_sp_ten($ma,$from, $end)
		{
			$sql ="select * from sanpham where lsp_ma = $ma and sp_trangthai = 1 order by sp_ma desc limit $from,$end";
			$query = mysql_query($sql);
            return $query ? $query : 0;
		}
		function danhmuc_sp_gia($ma,$from,$end,$order)
		{
			$sql ="select * from sanpham where lsp_ma = $ma and sp_trangthai = 1 order by sp_gia $order limit $from,$end";
			$query = mysql_query($sql);
            return $query ? $query : 0;
		}
		function danhmuc_sp_mua($ma,$from,$end)
		{
			$sql ="select *, count(b.sp_ma) from sanpham a, sanpham_dondathang b where a.sp_ma = b.sp_ma and a.lsp_ma =$ma and sp_trangthai = 1 GROUP BY a.sp_ma ORDER by COUNT(b.sp_ma)desc limit $from, $end ";
			$query = mysql_query($sql);
            return $query ? $query : 0;
		}
		//============================================
		function tintuc($from,$end)
		{
			$sql ="select * from tintuc order by tin_ma desc limit $from,$end ";
			$query = mysql_query($sql);
			return $query;
		}
        function tintuckhac()
		{
			$sql ="select * from tintuc order by tin_ma desc ";
			$query = mysql_query($sql);
			return $query;
		}
		function ct_tintuc($ma)
		{
			$sql ="select * from tintuc where tin_ma=$ma order by tin_ma desc";
			$query = mysql_query($sql);
            return $query ? $query : 0;
		}
		function timkiem($key)
		{
			$sql ="select * from sanpham where sp_ten like '%$key%'";
			$query = mysql_query($sql);
			return $query;
		}
		function timkiem_($key,$from,$end)
		{
			$sql ="select * from sanpham where sp_ten like '%$key%' limit $from,$end";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		function dangnhap($user,$pass)
		{
			$sql ="select * from khachhang where kh_tendangnhap = '$user' and kh_matkhau = '".md5($pass)."'";
			$query = mysql_query($sql);
			return $query;
		}
		function lienhe()
		{
			$sql ="select * from lienhe";
			$query = mysql_query($sql);
			return $query;
		}
		function gioithieu()
		{
			$sql ="select * from gioithieu";
			$query = mysql_query($sql);
			return $query;
		}
		function huongdan()
		{
			$sql ="select * from huongdan";
			$query = mysql_query($sql);
			return $query;
		}
		function kt_email($email)
		{
			$sql ="select * from khachhang where kh_email= '$email'";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		function kt_cmnd($cmnd)
		{
			$sql ="select * from khachhang where kh_email= '$cmnd'";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}
		function dangky($email,$pass,$name,$sex,$address,$phone,$email2,$cmnd)
		{
			$sql ="insert into khachhang (kh_tendangnhap,kh_matkhau,kh_ten,kh_gioitinh,kh_diachi,kh_dienthoai,kh_email,kh_cmnd,kh_trangthai) values ('$email','$pass','$name',$sex,'$address','$phone','$email2','$cmnd',1)";
			return mysql_query($sql);
		}
		function edit_profile($ma,$name,$phone,$address,$sex)
		{
			$sql = "update khachhang set kh_ten ='$name' , kh_dienthoai ='$phone', kh_diachi ='$address', kh_gioitinh=$sex where kh_tendangnhap ='$ma'";
			return mysql_query($sql);
		}
		function set_edit($ma, $pass)
		{
			$sql = "update khachhang set kh_matkhau ='$pass' where kh_tendangnhap = '$ma' ";
			mysql_query($sql);
		}
		
		function kt_xoa($ma, $pass)
		{
			$sql = "select * from khachhang where kh_tendangnhap = '$ma' and kh_matkhau ='$pass'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
        function dsdonhang($kh_ma)
        {
            $sql = "select * from dondathang where kh_tendangnhap ='$kh_ma'";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function chitietdonhang($dh_ma)
        {
            $sql = "select * from sanpham_dondathang where dh_ma=$dh_ma";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function thongtindonhang ($dh_ma)
        {
            $sql = "select * from dondathang where dh_ma =$dh_ma";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function logo()
        {
            $sql ="select * from logo";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function doitac()
        {
            $sql ="select * from doitac";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function mail()
        {
            $sql = "select * from mail";
            $query = mysql_query($sql);
            return $query ? $query : 0;
        }
        function dt_lienhe()
        {
            $sql = "select * from lienhe where lh_loai =2";
            $query = mysql_query($sql);
            return $query? $query : 0;
        }
	}
?>