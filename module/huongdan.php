<?php 
	$info = mysql_fetch_array($main->huongdan());
?>		
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="main-index.html">Home</a></li>
								<li><a href="#">Giới thiệu</a></li>
							</ol>
							
							<div id="chi-tiet-tin-tuc">
								<p> <?php echo $info[1];?></p>
									
									<?php echo $info[2];?>
							</div>
							
						</div><!-- End well -->
					</div><!--End #page-san-pham -->
				