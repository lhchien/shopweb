<?php
	class slideshow
	{
		function danh_sach()
		{
			$sql = "select * from  slide";
			$query = mysql_query($sql);
			return $query;
		}
		function kt_tontai($ten)
		{
			$sql = "select * from slide where ss_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$mota,$uutien,$url,$link)
		{
			$sql = "insert into slide (ss_ten, ss_mota, ss_uutien, ss_url, ss_link) value ('$ten','$mota',$uutien,'$url','$link')";
			mysql_query($sql);
		}
		function get_edit($ma)
		{
			$sql = "select * from slide where ss_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}

		function set_edit($ma, $ten, $mota, $link)
		{
			$sql = "update slide set ss_ten ='$ten' , ss_mota = '$mota', ss_link = '$link' where ss_ma =$ma ";
			mysql_query($sql);
		}
		function set_url($ma, $url)
		{
			$sql = "update slide set ss_url ='$url' where ss_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "delete from slide where ss_ma=$ma";
			mysql_query($sql);
		}
	
	}
?>