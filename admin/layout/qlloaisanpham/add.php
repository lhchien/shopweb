<?php 
	if(isset($_POST['name']))
		if(!$loai_sp ->kt_tontai($_POST['name']))
		{
			if($upload->upfile($_FILES['image'],"loaisanpham"))
			{
				$loai_sp->them($_POST['name'],$_POST['short'],1,$upload->get_url());
				header("Location:index.php?page=qlloaisanpham");
			}
		}
		else
			echo "<script> alert('Loại sản phẩm đã tồn tại!'); </script> ";
?>


<div class="container">
<form class="form-horizontal" action="index.php?page=qlloaisanpham&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Nhập thông tin</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="name">Tên loại SP <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="text" name="name" placeholder="Tên loại sản phẩm..." id="name" class="form-control" 
																value="<?php if(isset($_POST['name'])) echo $_POST['name']; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="short">Mô tả loại SP</label>
						<div class="col-lg-9">
							<textarea name="short" id="short" class="form-control" rows="4"><?php if(isset($_POST['short'])) echo $_POST['short']; ?></textarea>
						</div>
					</div>
				
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Ảnh Đ.diện<span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Kích thước ảnh: 700x400</b></i>
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlloaisanpham"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit" id="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
		<div class="col-lg-2"></div>
	</div>

</form>

<script>

		$('#submit').click(function() {
		var ib_name = $('#name').val().trim();
		var ib_short = $('#short').val().trim();
		var ib_file = $('#image').val();
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
			if(ib_file == "")
			{
				alert("Ảnh không được để trống.");
				return false;
			} else
			return true;
			
		});
</script>
</div>
