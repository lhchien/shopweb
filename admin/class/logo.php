<?php
	class logo
	{
		function danh_sach()
		{
			$sql = "select * from  logo";
			$query = mysql_query($sql);
			return $query;
		}
		function kt_tontai($ten)
		{
			$sql = "select * from logo where lg_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$url,$link)
		{
			$sql = "insert into logo (lg_ten, lg_url, lg_link) value ('$ten','$url','$link')";
			mysql_query($sql);
		}
		function get_edit($ma)
		{
			$sql = "select * from logo where lg_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}

		function set_edit($ma, $ten, $mota, $link)
		{
			$sql = "update logo set lg_ten ='$ten' , lg_link = '$link' where lg_ma =$ma ";
			mysql_query($sql);
		}
		function set_url($ma, $url)
		{
			$sql = "update logo set lg_url ='$url' where lg_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "delete from logo where lg_ma=$ma";
			mysql_query($sql);
		}
	
	}
?>