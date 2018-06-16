<?php 
	if(isset($_POST['title']))
		if(!$tintuc ->kt_tontai($_POST['title']))
		{
			if($upload->upfile($_FILES['image'],"tintuc"))
			{
				$tintuc->them($_POST['title'],$_POST['short'],$_POST['description'],$upload->get_url());
				header("Location:index.php?page=qltintuc");
			}
		}
		else
			echo "<script> alert('Tin đã tồn tại!'); </script> ";
?>

<div class="container">
<form class="form-horizontal" action="index.php?page=qltintuc&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-md-5">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-4 control-label" for="title">Tiêu đề tin <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<input type="text" name="title" placeholder="Tiêu đề tin" id="title" class="form-control" value="<?php ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="short">Mô tả ngắn <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<textarea name="short" id="short" class="form-control" rows="4"><?php ?></textarea>
						</div>
					</div>
					<!--
					<div class="form-group">
						<label class="col-lg-4 control-label" for="category">Loại tin <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<select name="category" class='form-control'>
								<option value="">Chọn loại</option>
								<option value="">Chọn loại</option>
								<option value="">Chọn loại</option>
							</select>
						</div>
					</div>
					-->
					<div class="form-group">
						<label class="col-lg-4 control-label" for="image">Ảnh Đ.diện</span></label>
						<div class="col-lg-8">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Kích thước ảnh: 300x350</b></i>
						</div>
					</div>

				</div>
			</div>

		</div>
		
		<div class="col-md-7">

			<div class="panel panel-default">
				<div class="panel-heading">Nội dung chi tiết tin tức</div>
				<div class="panel-body">
					<textarea name="description" id="description" class="form-control"><?php if (isset($description)) echo stripslashes(html_entity_decode($description)); ?></textarea>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qltintuc"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit" id="submit" >Đồng ý</button>
				</div>
			</div>

		</div>
		
	</div>

</form>

<script>
        CKEDITOR.replace('description', {
            'extraPlugins': 'showblocks,div,doksoft_backup,doksoft_stat',
            'filebrowserImageBrowseUrl': 'ckeditor/plugins/imgbrowse/imgbrowse.html?imgroot=codelayout/upload/tintuc/chitiet',
            'filebrowserImageUploadUrl': 'ckeditor/plugins/imgupload.php',
        });
</script>

<script>

		$('#submit').click(function() {
		var ib_title = $('#title').val().trim();
		var ib_short = $('#short').val().trim();
		var ib_file = $('#image').val();
			if(ib_title.length < 1)
			{
				alert("Tiêu đề không được để trống.");
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