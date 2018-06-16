<?php
date_default_timezone_set('Asia/Saigon'); 

DEFINE('DATABASE_USER', 'b4_17470257');
DEFINE('DATABASE_HOST', 'sql307.byethost4.com');
DEFINE('DATABASE_PASSWORD', 'ttpt2309');
DEFINE('DATABASE_NAME', 'b4_17470257_shop');
$con=mysql_connect(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD) or die("Lỗi! Không thể kết nối đến MySQL");
mysql_select_db(DATABASE_NAME, $con);
mysql_query("set names 'utf8'"); 
