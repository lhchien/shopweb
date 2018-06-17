<?php 
	session_start();
	include "db/dbcon.php";
	include "class/function.php";
	include "class/giohang.php";
    include "include/captcha/simple-php-captcha.php";
    $_SESSION['captcha'] = simple_php_captcha();
	$main = new sanpham;
    $mail = $main->mail();
    $mail_nhan ="";
    $mail_gui ="";
    if($mail)
        while($row = mysql_fetch_array($mail))
        {
            if($row[2]==1) $mail_nhan = $row[1];
            if($row[2]==2) $mail_gui = $row[1];
        }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- CSS Bootstrap -->
<link href = "css/bootstrap.min.css" rel="stylesheet" />
<!-- Main CSS -->
<link href = "css/styles.css" rel="stylesheet" />
<!-- CSS Owl Carousel -->
<link href = "css/owl.carousel.css" rel="stylesheet" />
<link href = "css/owl.theme.default.min.css" rel="stylesheet" />

<script src="js/jquery.js"></script>

    <script src="include/jquery-ui.js" ></script>
    <link rel="stylesheet" href="include/jquery-ui.css">
<title></title>
</head>

<html>
<body>
	<div class="row center">
			<?php 
				include "include/header.php";
						$page ="trang-chu";
						if(isset($_GET['page']))
						$page = $_GET['page'];
			?>
			<?php 
				include "include/menu.php";
			?>
			<!-- End row menu -->


			<div class="row" id="contain">
				<div class="col-sm-9" id="left">
					<?php
						//echo $_SERVER['QUERY_STRING'];
						if(isset($_POST['giohang']))
						include_once "module/giohang.php";
						
						
						if($page =='dang-nhap')
							include "module/dangnhap.php";
						if($page =='dang-xuat')
						{
							session_destroy();
							echo "<script> window.location='index.php' </script>";
						}
						if($page =='san-pham')
							include "module/sanpham.php";
						else if($page =='chi-tiet-san-pham')
							include "module/chitietsanpham.php";
						else if($page =='tim-kiem')
							include "module/timkiem.php";
						else if($page =='gioi-thieu')
							include "module/gioithieu.php";
						else if($page =='lien-he')
							include "module/lienhe.php";
						else if($page =='huong-dan')
							include "module/huongdan.php";
						else if($page =='dang-ky')
							include "module/dangky.php";
						else if($page =='thong-tin-tai-khoan')
							include "module/thongtin.php";
						else if($page =='cap-nhat-tai-khoan')
							include "module/capnhatthongtin.php";
						else if($page =='tin-tuc')
							include "module/tintuc_.php";
						else if($page =='chi-tiet-tin-tuc')
							include "module/chitiettintuc.php";
						else if($page =='gio-hang')
							include "module/chitietgiohang.php";
						else if($page =='ql-gio-hang')
							include "module/giohang.php";
						else if($page =='thanh-toan')
							include "module/thanhtoan.php";
						else if($page =='doi-mat-khau')
							include "module/changepass.php";
                        else if($page =='danh-sach-don-hang')
                            include "module/dsdonhang.php";
                        else if($page =='chi-tiet-don-hang')
                            include "module/chitietdonhang.php";
						else{
					?>
					<!-- Slide Image -->
					<?php
						include "module/slideshow.php";
					?>
					<!--end Slide-Image-->					
                	<!-- San Pham Ban Chay -->
						<?php
							include "module/sp_banchay.php";
						?>
					<!--End #left Module -->
					<!-- MAT ONG HOA RUNG -->
					<!-- End #left Module-->
						<?php 
							include "module/danhmuc_sanpham.php";
						?>
					<!-- SAN PHAM KHAC -->
					<!-- End #left Module-->
					<!-- TIN TUC -->
						<?php 
							include "module/tintuc.php";
						?>
					<!-- End left- module TIN TUC -->
						<?php
						}
						?>
				</div><!-- End LEFT -->

				<div class="col-sm-3" id="right">
					<!-- Danh Muc San Pham -->
						<?php 
							include "module/dm_sanpham.php";
						?>
					<!--End Danh Mục San Pham -->
					

					<!-- LIEN HE -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">Liên Hệ</div>
                            <div class="panel-body">
                            <ul class="list-group text-center">
                                <?php
                                $dt_lienhe = $main->dt_lienhe();
                                if($dt_lienhe)
                                while($row = mysql_fetch_array($dt_lienhe))
                                {
                                ?>
                            	<li class="list-group-item"><span class="glyphicon glyphicon-earphone"></span> <?php echo $row[1];?></li>
							  	<li class="list-group-item"><h4><?php echo $row[2];?></h4></li>
                                <?php
                                }
                                ?>
							</ul>
                            </div>
                        </div>
                    </div><!-- End Lien He -->

                    <!-- FACEBOOK PAGE -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">facebook page</div>
                            <div class="panel-body">
                            	<div class="well">
                            		<img src="images/facebook-page.jpg" class="img-resposive">
                            	</div>
                            </div>
                        </div>
                    </div><!-- End facebook page -->

					<!-- ĐỐI TÁC -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">đối tác</div>
                            <div class="panel-body">
                            	<div>
                                    <?php
                                    if($main->doitac())
                                    {
                                        $ds = $main->doitac();
                                        while($row = mysql_fetch_array($ds)) {
                                    ?>
                                           <a href="<?php echo $row[3];?>">
                                               <img src = "<?php echo $row[2];?>" class="img-resposive" >
                                           </a>
                                        <?php
                                        }
                                    }
                                    ?>
                            	</div>
                            </div>
                        </div>
                    </div><!-- End facebook page -->

				</div><!-- End right -->

			</div><!-- End contain -->	

	</div><!--  End center row -->
<?php 
	include "include/footer.php";
?>
	
<!--   SCRIPT   -->

<!-- Jquery -->
<script src="js/jquery.min.js"></script>
<!-- Jquery Bootstrap -->    
<script src="js/bootstrap.js"></script>
<!-- Jquery Carousel -->  
<script src="js/owl.carousel.js"></script>
<!-- Main Jquery  -->  
<script src="js/main.js"></script>


<script src="include/jquery-ui.js" ></script>
<link rel="stylesheet" href="include/jquery-ui.css">




    </body>
</html>
