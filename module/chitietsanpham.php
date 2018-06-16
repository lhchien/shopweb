<?php
	$sp = $main->ds_sanpham($_GET['sp_ma']);
    if(!$sp)
        echo "<script> window.location='?page=Trang-chu'; </script>";
    if(mysql_num_rows($sp)== 0)
        echo "<script> window.location='?page=Trang-chu'; </script>";
	$row = mysql_fetch_array($sp);
	$lsp = mysql_fetch_array($main->danhmuc_sanpham_($row[6]));
	$sptt = $main->danhmuc_sp($lsp[0]);
?>
<div id="page-san-pham">
	<div class="well">
		<ol class="breadcrumb">
			<li><a href="?page=Trang-chu">Home</a></li>
			<li><a href="?page=san-pham&dm_sp=<?php echo $lsp[0]?>">Sản Phẩm</a></li>
			<li><a href="?page=san-pham&dm_sp=<?php echo $lsp[0];?>"><?php echo $lsp[1]; ?></a></li>
			<li class="active"><?php echo $row[1];?></li>
		</ol>
		
		<div class="row" id="chi-tiet-sp">
			<div class="col-sm-6">
				<img src="<?php echo $row[8];?>" class="img-resposive img-thumbnail">	
			</div>
			<div class="col-sm-6">
				<h4 class="text-uppercase"><?php echo $row[1];?></h4>
				<hr>
				<p><?php echo $row[3]?></p>
				<div class="gia-ban text-uppercase">giá bán: <?php echo number_format($row[2])."/" .$row[10];?></div>
				<!---------------------------------------->
										<form method="post" action="">
										<input type="hidden" value="<?php echo $row[0];?>" name="giohang">
											<?php $show =1;
											if(isset($_SESSION["giohang"]))
											for($k=0;$k<count($_SESSION['giohang']);$k++)
											foreach($_SESSION['giohang'] as $key => $value)
												if($key == 'sp_'.$row[0])
													if($value != 0)
													$show = 0;
											?>
											<?php if($show){ ?>
											<button class="btn btn-success btn-lg" data-toggle="modal" data-target="#put-shopping-cart"><span class="glyphicon glyphicon-shopping-cart"></span> BỎ VÀO GIỎ HÀNG</button>
                                            <?php }
                                            else { ?>
                                                <button class="btn btn-warning btn-block"><span class="glyphicon glyphicon glyphicon-ok"></span> </button>
                                            <?php }?>
										</form>
											<!------------------------------------->
				
							</div><!--End Col-sm-6 --> 
							<div class="clearfix"></div>
							<ul class="nav nav-tabs kc-sp">
							  <li role="presentation" class="active"><a href="#">Thông Tin Sản Phẩm</a></li>
							</ul>

								<div class="info-product">
									<p class="text-uppercase"><b><?php echo $row[1];?></b></p>
									<p> <?php echo $row[4];?></p>
								</div>
						</div>
						<div id="sp-khac">
							<h4>Sản phẩm tương tự</h4>
							<hr>

							<div class="row">
							<?php $i=0; while($row2 = mysql_fetch_array($sptt)){ $i++; if($i==5) break;?>
								<div class="col-sm-3">
									<div class="sp third-effect">
										<a href="?page=chi-tiet-sp&sp_ma=<?php echo $row2[0]?>">
											<div class="well">
												<img src="<?php echo $row2[8]?>" alt="..." class="img-resposive img-thumbnail">
											</div>
											<p class="txt-title"><small><?php echo $row2[1];?></small></p>
										</a>
										<p class="txt-price"><?php echo number_format($row2[2]);?>đ</p>
									</div><!-- End .sp -->
								</div>
							<?php } ?>
							</div>
						</div>
						
					</div><!-- End well -->
				</div><!--End #page-san-pham -->
			