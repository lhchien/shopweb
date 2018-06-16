<?php 
	if(isset($_POST['name']))
		if(!$sanpham ->kt_tontai($_POST['name']))
		{
			if($upload->upfile($_FILES['image'],"sanpham"))
				{
					$sanpham->them($_POST['name'],$_POST['short'],$_POST['slLoaiSanPham'],$_POST["slNhaSanXuat"], $_POST["price"],$upload->get_url(),$_POST['description'],$_POST['dvtinh'],strtotime("now"));
				
					header("Location:index.php?page=qlsanpham");
				}
		}
		else
			echo "<script> alert('Sản phẩm đã tồn tại!'); </script> ";
?>


<div class="container">
<form class="form-horizontal" action="index.php?page=qlsanpham&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-md-5">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-4 control-label" for="name">Tên sản phẩm <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<input type="text" name="name" placeholder="Tên sản phẩm" id="name" class="form-control" value="<?php if(isset($_POST['name'])) echo $_POST['name']; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="short">Mô tả ngắn <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<textarea name="short" id="short" class="form-control" rows="4"><?php if(isset($_POST['short'])) echo $_POST['short']; ?></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-4 control-label" for="slLoaiSanPham">Loại SP <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<?php showLSPList_add($con); ?>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="slNhaSanXuat">Nhà SX <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<?php showNSXList_add($con); ?>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-4 control-label" for="price">Giá <span class="text-danger"><strong>(*)</strong></label>
						<div class="col-lg-8">
							<input type="number" name="price" placeholder="Giá hiện tại" id="price" maxlength="9" class="form-control" value="<?php if(isset($_POST['price'])) echo $_POST['price']; ?>">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="donvi">Đơn vị tính <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<select  class='form-control' name="dvtinh" id="dvtinh">
                                <option value="0"> Chọn đơn vị tính </option>
                                <option value="Chai"> Chai </option>
                                <option value="Hộp"> Hộp </option>
                                <option value="Gói"> Gói </option>
                                <option value="Cái"> Cái </option>
                                <option value="Kg"> Kg </option>
                                <option value="Lốc"> Lốc </option>
                                <option value="Bình"> Bình </option>
							</select>
						</div>
					</div>
					
					
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
				<div class="panel-heading">Mô tả chi tiết sản phẩm</div>
				<div class="panel-body">
					<textarea name="description" id="description" class="form-control"><?php if (isset($_POST['description'])) echo stripslashes(html_entity_decode($_POST['description'])); ?></textarea>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlsanpham"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit" id="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
	</div>

</form>

<script>
		CKEDITOR.replace('description');
</script>
<script>

		$('#submit').click(function() {
		var ib_name = $('#name').val().split(" ").join("");
		var ib_short = $('#short').val().split(" ").join("");
		var ib_lsp = $('#slLoaiSanPham').val();
		var ib_nsx = $('#slNhaSanXuat').val();
		var ib_price = $('#price').val().split(" ").join("");
		var ib_dvtinh = $('#dvtinh').val();
		var ib_desc = $('#description').html();
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
			if(ib_lsp == 0)
			{
				alert("Bạn chưa chọn loại sản phẩm.");
				return false;
			} else
			if(ib_nsx == 0)
			{
				alert("Chưa chọn nhà sản xuất.");
				return false;
			} else
			if(ib_price.length < 1)
			{
				alert("Giá tiền không được để trống");
				return false;
			} else
			if(ib_dvtinh == 0)
			{
				alert("Bạn chưa chọn đơn vị tính");
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