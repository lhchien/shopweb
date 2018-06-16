<?php
	$tintuc = $main->tintuckhac();
?>
<div id="left-module">
	<div class="panel panel-warning tt">
		<div class="panel-heading">Tin Tức</div>
		<div class="panel-body">
			<div class="row">
			<?php
				$i =0;
				while($row= mysql_fetch_array($tintuc)) { $i++;
                    if($i==3) break;
			?>
				<div class="col-sm-3 news">
					<div class="well">
						<a href="?page=chi-tiet-tin-tuc&tin_ma=<?php echo $row[0]?>">
							<img src="<?php echo $row[4];?>" class="img-resposive">
							<p class="news-title"><?php echo $row[1];?></p>
						</a>
						<p class="news-info"><?php echo $row[2];?></p>
					</div>
				</div>
			<?php
				} 
			?>
				
				<div class="col-sm-6 news">
					<div class="list-group">
					<?php
                    $j=0;
					$tintuc = $main->tintuckhac();
					while($row2=mysql_fetch_array($tintuc))
						{
                            $j++;
                            if($j <3) continue;
					?>	
						<a href="?page=chi-tiet-tin-tuc&tin_ma=<?php echo $row2[0];?>" class="list-group-item"><span class="glyphicon glyphicon-play"></span> <?php echo $row2[1];?></a>
					<?php 
						}
					?>
						
					</div>
				</div>

			</div><!-- End row -->
			<div class="row">
				<div class="read-more col-sm-12 text-right read-more-fix">
					<a href="?page=tin-tuc"><small>Xem Thêm</small></a> <span class="glyphicon glyphicon-play"></span>
				</div>
			</div>
		</div>
	</div><!-- End Panel-->
</div>