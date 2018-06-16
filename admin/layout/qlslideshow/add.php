<?php 
	if(isset($_POST['name']))
		if(!$slideshow ->kt_tontai($_POST['name']))
		{
			if($upload->upfile($_FILES['image'],"slideshow"))
				{
					$slideshow->them($_POST['name'],$_POST['short'],$_POST['slPriority'],$upload->get_url(),$_POST['link']);
					header("Location:index.php?page=qlslideshow");
				}
		}
		else
			echo "<script> alert('Tên ảnh đã tồn tại!'); </script> ";
?>

<div class="container">
<form class="form-horizontal" action="index.php?page=qlslideshow&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-md-3"></div>
		
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-4 control-label" for="name">Tên hình ảnh <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<input type="text" name="name" placeholder="Tên hình ảnh" id="name" class="form-control" value="<?php if(isset($_POST['name'])) echo $_POST['name']; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="short">Mô tả ngắn <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<textarea name="short" id="short" class="form-control" rows="4"><?php if(isset($_POST['short'])) echo $_POST['short']; ?></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-4 control-label" for="slPriority">Độ ưu tiên </span></label>
						<div class="col-lg-8">
							<select class="form-control" name="slPriority" id="slPriority">
								<option value="0">Chọn thứ tự</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==1) echo "selected";?> >1</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==2) echo "selected";?> >2</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==3) echo "selected";?> >3</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==4) echo "selected";?> >4</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==5) echo "selected";?> >5</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==6) echo "selected";?> >6</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="image">Hình ảnh<span class="text-danger"><strong> (*)</strong></span></label>
						<div class="col-lg-8">
							<input type="file" name="image" id="image" class="form-control" value=<?php if(isset($_FILES['image'])) echo $_FILES['image']['name']; ?>>
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
					<a href="?page=qlslideshow"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" id="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>


		</div>
		
		<div class="col-md-3"></div>
		
	</div>

</form>

<script>
        $("#submit").click(function(){
            var ib_name = $('#name').val().trim();
            var ib_short = $('#short').val().trim();
            var ib_desc = $('#slPriority').val();
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
            if(ib_desc == 0)
            {
                alert("Bạn chưa chọn độ ưu tiên.");
                return false;
            } else
            if(ib_file == "")
            {
                alert("Ảnh không được để trống.");
                return false;
            } else
                return true;

        })
		CKEDITOR.replace('description');
</script>
</div>