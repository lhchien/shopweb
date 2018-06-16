<?php
	$dm_sp = $main->danhmuc_sanpham();
	while($row= mysql_fetch_array($dm_sp))
	{
?>
<div id="left-module">
						<div class="panel panel-warning">
							<div class="panel-heading"><?php echo $row[1]; ?></div>
							<div class="panel-body">
								<div class="row">
								<?php 
									$ds_sp = $main->danhmuc_sp($row[0]); $i=0;
									while($row2 = mysql_fetch_array($ds_sp)){$i++;
									if($i==5) break;
								?>
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="?page=chi-tiet-san-pham&sp_ma=<?php echo $row2[0];?>">
									    		<div class="well">
									    			<img src="<?php echo $row2[8];?>" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small><?php echo $row2[1];?></small></p>
									    	</a>
									    		<p class="txt-price"><?php echo number_format($row2[2]);?> vnđ</p>
										<!---------------------------------------->
										<form method="post" action="">
										<input type="hidden" value="<?php echo $row2[0];?>" name="giohang">
											<?php $show =1;
											if(isset($_SESSION["giohang"]))
											for($k=0;$k<count($_SESSION['giohang']);$k++)
											foreach($_SESSION['giohang'] as $key => $value)
												if($key == 'sp_'.$row2[0])
													if($value != 0)
													$show = 0;
											?>
											<?php if($show){ ?>
											<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
                                            <?php }
                                            else { ?>
                                                <button class="btn btn-warning btn-block"><span class="glyphicon glyphicon glyphicon-ok"> </span> </button>
                                            <?php } ?>
                                            </form>
                                            <!------------------------------------->
									</div><!-- End .sp -->
										
									</div><!-- End col-sm-3 -->
								<?php
									}
								?><!-- End col-sm-3 -->

								</div><!-- End row -->

								<div class="row">
									<div class="read-more col-sm-12 text-right">
										<a href="?page=san-pham&dm_sp=<?php echo $row[0];?>"><small>Xem Thêm</small></a> <span class="glyphicon glyphicon-play"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
<?php
	}
?>