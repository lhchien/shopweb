<?php 
	if(isset($_GET['show']))
	{
		$show =$_GET['show'];
		$end = $_GET['show'] *20;
		$from = $end -20;
	}
	else 
	{
		$show = 1;
		$from = 0;
		$end = 20;
	}
	if(isset($_GET['order']))
	{
		switch($_GET['order'])
		{
			case 'asc':
			case 'desc':
				$sp_ = $main->danhmuc_sp_gia($_GET['dm_sp'],$from,$end,$_GET['order']);
			break;
			case 'buy':
				$sp_ = $main->danhmuc_sp_mua($_GET['dm_sp'],$from,$end);
			break;
		}
	}
	else
	$sp_ = $main->danhmuc_sp_ten($_GET['dm_sp'],$from,$end);
	$sp = $main->danhmuc_sp($_GET['dm_sp']);
    if(!$sp)
        echo "<script> window.location='?page=Trang-chu'; </script>";
    if(mysql_num_rows($sp)== 0)
        echo "<script> window.location='?page=Trang-chu'; </script>";
	$dm = mysql_fetch_array($main->danhmuc_sanpham_($_GET['dm_sp']));
?>
<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="?page=Trang-chu">Home</a></li>
								<li><a href="?page=san-pham&dm_sp=<?php echo $dm[0]?>">Sản Phẩm </a></li>
								<li class="active"><?php echo $dm[1];?></li>
							</ol>

							<h4 class="pull-left"><?php echo $dm[1]?></h4>

							<div class="btn-group pull-right">
							  	<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <span class="glyphicon glyphicon-filter"></span> Lọc <span class="caret"></span>
							  	</button>
							  	<ul class="dropdown-menu">
							    	<li><a href="?page=san-pham&dm_sp=<?php echo $dm[0]?>&show=<?php echo $show?>&order=asc">Giá từ thấp đến cao</a></li>
							    	<li><a href="?page=san-pham&dm_sp=<?php echo $dm[0]?>&show=<?php echo $show?>&order=desc">Giá từ cao đên thấp</a></li>
							    	<li><a href="?<?php echo $_SERVER["QUERY_STRING"]?>&order=buy">Được mua nhiều nhất</a></li>
							  	</ul>
							</div>
							<div class="clearfix"></div>
							<hr>
							
							<?php if(mysql_num_rows($sp)== 0)
							echo "<p> Hiện tại danh mục chưa có sản phẩm.";
							else
							{
							echo "	<p>".$dm[2]."</p>
						";
							?>
								<?php
								$i=0;
									$num_page = mysql_num_rows($sp);
									while($row=mysql_fetch_array($sp_)){ $i++;
								if($i==5) $i=1;
								if($i==1) echo"<div class='row'>";
								?>
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="?page=chi-tiet-san-pham&sp_ma=<?php echo $row[0];?>">
									    		<div class="well">
									    			<img src="<?php echo $row[8];?>" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small><?php echo $row[1];?></small></p>
									    	</a>
									    		<p class="txt-price"><?php echo number_format($row[2]);?>đ</p>
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
											<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
                                            <?php }
                                            else { ?>
                                                <button class="btn btn-warning btn-block"><span class="glyphicon glyphicon glyphicon-ok"></span> </button>
                                            <?php }?>
                                        </form>
											<!------------------------------------->
											
											</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->
								<?php
								if($i==4) echo "</div> 
								<hr class='sp-hr'>";
									}
								if($i<4 && $i >0) echo "</div><hr class='sp-hr'>";
								?>
									
								<nav class="text-center">
								  	<ul class="pagination">
								    	<li>
								      	<!--<a href="#" aria-label="Previous">
								        	<span aria-hidden="true">&laquo;</span>
								     	 </a>-->
								    <?php for($i=1;$i<=(floor($num_page/20))+1; $i++){ ?>
										<li id="page_<?php echo $i?>" <?php if($i == $show) echo "class='active'"?>fo> <a href="?<?php echo $_SERVER["QUERY_STRING"]?>&show=<?php echo $i?>" style="cursor:pointer"> <?php echo $i; ?> </a> </li>
									<?php } ?>
								      <!--	<a href="#" aria-label="Next">
								        	<span aria-hidden="true">&raquo;</span>
								     	 </a> -->
								    	</li>
								  	</ul>
								</nav>
							<?php } ?>
						</div><!-- End well -->
					</div>