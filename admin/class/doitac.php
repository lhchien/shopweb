<?php
	class doitac
	{
		function danh_sach()
		{
			$sql = "select * from  doitac";
			$query = mysql_query($sql);
			return $query;
		}
		function kt_tontai($ten)
		{
			$sql = "select * from doitac where dt_ten ='$ten'";
			$query = mysql_query($sql);
			if($query)
				return mysql_num_rows($query)>0 ? 1 : 0;
			else
				return 0;
		}
		
		function them($ten,$url,$link)
		{
			$sql = "insert into doitac (dt_ten, dt_url, dt_link) value ('$ten','$url','$link')";
			mysql_query($sql);
		}
		function get_edit($ma)
		{
			$sql = "select * from doitac where dt_ma = $ma";
			$query = mysql_query($sql);
			return $query ? $query : 0;
		}

		function set_edit($ma, $ten, $mota, $link)
		{
			$sql = "update doitac set dt_ten ='$ten' , dt_link = '$link' where dt_ma =$ma ";
			mysql_query($sql);
		}
		function set_url($ma, $url)
		{
			$sql = "update doitac set dt_url ='$url' where dt_ma =$ma ";
			mysql_query($sql);
		}
	
		function xoa($ma)
		{
			$sql = "delete from doitac where dt_ma=$ma";
			mysql_query($sql);
		}
	
	}
?>