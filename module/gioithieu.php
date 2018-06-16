<?php 
	$info = mysql_fetch_array($main->gioithieu());
?>		
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="main-index.html">Home</a></li>
								<li><a href="#">Giới thiệu</a></li>
							</ol>
							
							<div id="chi-tiet-tin-tuc">
								<div class="text-center">
								<h4>Bản đồ</h4>
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8174096351245!2d105.76675321419891!3d10.031921375237758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0883d0dac6b15%3A0xf6ae5b1bd18625!2sCan+Tho+University!5e0!3m2!1sen!2s!4v1467095820398" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
								</div>

								<?php echo $info[2];?>
							</div>
							
						</div><!-- End well -->
					</div><!--End #page-san-pham -->
				