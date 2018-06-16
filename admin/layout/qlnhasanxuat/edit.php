<?php 
	//==============================================
	if(isset($_POST['name']))
	{
			$nhasx->set_edit($_POST['id'],$_POST['name'],$_POST['short']);
	}
	if(!$nhasx -> get_edit($_GET['nsx_ma']))
			header("Location:index.php?page=qlnhasanxuat");
	else
		if(mysql_num_rows($nhasx -> get_edit($_GET['nsx_ma'])) == 0)
			header("Location:index.php?page=qlnhasanxuat");
		else
		{
			$info = mysql_fetch_array($nhasx -> get_edit($_GET['nsx_ma']));
	//==============================================
?>
<div class="container">
<form class="form-horizontal" action="index.php?page=qlnhasanxuat&act=edit" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Nhập thông tin</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="name">Tên Nhà SX <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="hidden" name="id" value="<?php echo $info[0]; ?>">
							<input type="text" name="name" placeholder="Tên nhà sản xuất..." id="name" class="form-control" value="<?php echo $info[1]; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="short">Mô tả ngắn</label>
						<div class="col-lg-9">
							<textarea name="short" id="short" class="form-control" rows="4"><?php echo $info[2]; ?></textarea>
						</div>
					</div>
				
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlnhasanxuat"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
		<div class="col-lg-2"></div>
	</div>

</form>

<script>

		$('.btn-success').click(function() {
		var ib_name = $('#name').val().trim();
		var ib_short = $('#short').val().trim();
			if(ib_name.length < 1)
			{
				alert("Tên không được để trống.");
				return false;
			} else
			if(ib_short.length < 1)
			{
				alert("Mô tả không được để trống.");
				return false;
			} else
			return true;
			
		});
</script>
</div>
<?php
	}
?>