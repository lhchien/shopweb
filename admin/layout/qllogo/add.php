<?php 
	if(isset($_POST['name']))
		if(!$logo ->kt_tontai($_POST['name']))
		{
			if($upload->upfile($_FILES['image'],"logo"))
				{
					$logo->them($_POST['name'],$upload->get_url(),$_POST['link']);
					header("Location:index.php?page=qllogo");
				}
		}
		else
			echo "<script> alert('Tên đối tác đã tồn tại!'); </script> ";
?>

<div class="container">
<form class="form-horizontal" action="index.php?page=qllogo&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-md-3"></div>
		
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-4 control-label" for="name">Tên logo<span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<input type="text" name="name" placeholder="Tên logo" id="name" class="form-control" value="<?php if(isset($_POST['name'])) echo $_POST['name']; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="image">Hình ảnh<span class="text-danger"><strong> (*)</strong></span></label>
						<div class="col-lg-8">
							<input type="file" name="image" id="image" class="form-control" value=<?php if(isset($_FILES['image'])) echo $_FILES['image']['name']; ?>>
							<i class="small"><b>Chiều cao ảnh thích hợp: 63px</b></i>
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label" for="name">Link liên kết <span class="text-danger"><strong></strong></span></label>
                        <div class="col-lg-8">
                            <input type="text" name="link" placeholder="link hình ảnh" id="link" class="form-control" value="<?php if(isset($_POST['link'])) echo $_POST['link']; ?>">
                        </div>
                    </div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qllogo"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>


		</div>
		
		<div class="col-md-3"></div>
		
	</div>

</form>

<script>
		CKEDITOR.replace('description');
</script>
</div>