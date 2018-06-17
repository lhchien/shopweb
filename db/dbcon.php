<?php
date_default_timezone_set('Asia/Saigon'); 

DEFINE('DATABASE_USER', 'root');
DEFINE('DATABASE_HOST', '127.0.0.1');
DEFINE('DATABASE_PASSWORD', '');
DEFINE('DATABASE_NAME', 'shop');
$con=mysql_connect(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD) or die("Lỗi! Không thể kết nối đến MySQL");
mysql_select_db(DATABASE_NAME, $con);
mysql_query("set names 'utf8'"); 
