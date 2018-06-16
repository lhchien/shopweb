<?php
class lienhe
{
    function danh_sach()
    {
        $sql = "select * from  lienhe where lh_loai =2";
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
        $sql = "insert into lienhe (lh_tieude, lh_noidung, lh_loai) value ('$ten','$mota',2)";
        mysql_query($sql);
    }

    function get_edit($ma)
    {
        $sql = "select * from lienhe where lh_ma = $ma and lh_loai = 2";
        $query = mysql_query($sql);
        return $query ? $query : 0;
    }

    function set_edit($ma, $ten, $mota)
    {
        $sql = "update lienhe set lh_tieude ='$ten' , lh_noidung = '$mota' where lh_ma =$ma and lh_loai = 2 ";
        mysql_query($sql);
    }

    function xoa($ma)
    {
        $sql = "delete from lienhe where lh_ma = $ma and lh_loai = 2";
        mysql_query($sql);
    }

}
?>