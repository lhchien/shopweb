<div id="sp-ban-chay">
<?php
	$sp_banchay = $main->sanpham_banchay();
	if(mysql_num_rows($sp_banchay) >0)
	{
?>
<div class="panel panel-warning">
							<div class="panel-heading">Sản phẩm bán chạy</div>
							<div class="panel-body">
								<div class="owl-carousel">
								<?php 
									while($row = mysql_fetch_array($sp_banchay)) {
									$sp = mysql_fetch_array($main->ds_sanpham($row[1]));
                                        if($sp['sp_trangthai']==0) continue;
								?>
								    <div class="item view third-effect sp">
								    	<a href="?page=chi-tiet-san-pham&sp_ma=<?php echo $row[1];?>">
								    		<div class="well">
								    			<img src="<?php echo $sp[8];?>" alt="..." class="img-resposive">
								    		<div class="mask"></div>
								    		</div>
								    		<p class="txt-title"><small><?php echo $sp[1]; ?></small></p>
								    	</a>
								    		<p class="txt-price"><?php echo number_format($sp[2]);?>đ</p>
								    		<!---------------------------------------->
										<form method="post" action="">
										<input type="hidden" value="<?php echo $sp[0];?>" name="giohang">
											<?php $show =1;
											if(isset($_SESSION["giohang"]))
											for($k=0;$k<count($_SESSION['giohang']);$k++)
											foreach($_SESSION['giohang'] as $key => $value)
												if($key == 'sp_'.$sp[0])
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
											</div>
								<?php
									}
								?>
								</div>
							</div>
						</div>
<?php
	}
?>
</div>