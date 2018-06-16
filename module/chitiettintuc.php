<?php
	$tintuc = $main->ct_tintuc($_GET['tin_ma']);
    if(!$tintuc)
        echo "<script> window.location='?page=Trang-chu'; </script>";
    if(mysql_num_rows($tintuc)== 0)
        echo "<script> window.location='?page=Trang-chu'; </script>";
	$row = mysql_fetch_array($tintuc);
?>
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="?page=Trang-chu">Home</a></li>
								<li><a href="?page=tin-tuc">Tin Tức</a></li>
								<li class="active"><?php echo $row[1];?></li>
							</ol>
							<div id="chi-tiet-tin-tuc">
                                <h4> <?php echo $row[1];?></h4>
                                <blockquote><small><b><?php echo $row[2];?></b></small></blockquote>
                                <div class="text-center" style="padding-bottom:15px;"><img src="<?php echo $row[4]; ?>" class="img-thumbnail img-fix-size";/></div>
                                <div class="clearfix"></div>
                                
								<?php echo $row[3];?>
							</div>
							<div id="sp-khac">
								<h4>Tin tức khác</h4>
								<hr>
							<?php $tin = $main->tintuckhac();
								$i=0;
							?>
								<div class="row">
									<?php
									while($row = mysql_fetch_array($tin)){ $i++;
									if($i==4) break;
									?>
									<div class="col-sm-4 news">
										<div class="well">
											<a href="?page=chi-tiet-tin-tuc&tin_ma=<?php echo $row[0];?>">
												<img src="<?php echo $row[4];?>" class="img-resposive">
												<p class="news-title"><?php echo $row[1];?></p>
											</a>
											<p class="news-info"><?php echo $row[2];?></p>
										</div>
									</div><!-- End col-sm-4 -->
								<?php } ?>
									
								</div>
							</div>
							
						</div><!-- End well -->
					</div><!--End #page-san-pham -->