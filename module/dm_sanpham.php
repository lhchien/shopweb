	<div id="right-module">
		<div class="panel panel-warning">
			<div class="panel-heading">Danh Mục Sản Phẩm</div>
			<div class="panel-body">
<?php
	$dm_sp = $main->danhmuc_sanpham();
	while($row= mysql_fetch_array($dm_sp))
	{
?>
				<div class="well sp">
					<a href="?page=san-pham&dm_sp=<?php echo $row[0]; ?>">
					<img src="<?php echo $row[4];?>" alt="" class="img-responsive" />
					<div class="panel-contain">
						<p><?php echo $row[1];?></p>
						<div class="shadow"></div>
					</div>
					</a>
				</div>
<?php
	}
?>
			</div>
		</div>
	</div>