<?php 
	if(isset($_POST['name']))
	{
		if(isset($_FILES['image']))
			if($upload->upfile($_FILES['image'],"sanpham"))
			{
				unlink($_POST['image_old']);
				$sanpham->set_url($_POST['id'],$upload->get_url());
			}		
			$sanpham->set_edit($_POST['id'],$_POST['name'],$_POST['short'],$_POST['price'], $_POST["description"], $_POST['dvtinh'],strtotime("now"));
	}
	if(!$sanpham -> get_edit($_GET['sp_ma']))
			header("Location:index.php?page=qlsanpham");
	else
		if(mysql_num_rows($sanpham -> get_edit($_GET['sp_ma'])) == 0)
			header("Location:index.php?page=qlsanpham");
		else
		{
			$info = mysql_fetch_array($sanpham -> get_edit($_GET['sp_ma']));
?>

<div class="container">
<form class="form-horizontal" action="index.php?page=qlsanpham&act=edit" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-md-5">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-4 control-label" for="name">Tên sản phẩm <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<input type="hidden" value="<?php echo $info[0];?>" name="id">
							<input type="text" name="name" placeholder="Tên sản phẩm" id="name" class="form-control" value="<?php echo $info[1]; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="short">Mô tả ngắn <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
							<textarea name="short" id="short" class="form-control" rows="4"><?php echo $info[3] ?></textarea>
						</div>
					</div>
					<!--
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
					-->
					<div class="form-group">
						<label class="col-lg-4 control-label" for="price">Giá <span class="text-danger"><strong>(*)</strong></label>
						<div class="col-lg-8">
							<input type="number" name="price" placeholder="Giá hiện tại" id="price" maxlength="9" class="form-control" value="<?php echo $info[2]; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="donvi">Đơn vị tính <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-8">
                            <select  class='form-control' name="dvtinh" id="dvtinh">
                                <option value="Chai" <?php if($info[10]=="Chai") echo "selected";?>> Chai </option>
                                <option value="Hộp" <?php if($info[10]=="Hộp") echo "selected";?>> Hộp </option>
                                <option value="Gói" <?php if($info[10]=="Gói") echo "selected";?>> Gói </option>
                                <option value="Cái" <?php if($info[10]=="Cái") echo "selected";?>> Cái </option>
                                <option value="Kg" <?php if($info[10]=="Kg") echo "selected";?>> Kg </option>
                                <option value="Lốc" <?php if($info[10]=="Lốc") echo "selected";?>> Lốc </option>
                                <option value="Bình" <?php if($info[10]=="Bình") echo "selected";?>> Bình </option>
                            </select>
                        </div>
					</div>
					
					
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="image">Ảnh Đ.diện</label>
						<div class="col-lg-8">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Kích thước ảnh: 300x350</b></i>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-4 control-label" for="image">Ảnh hiện tại</label>
						<div class="col-lg-8">
							<img src="<?php echo "../".$info[8]; ?>" class="img-thumbnail"></img>
						<input type="hidden" value="<?php echo "../".$info[8];?>" name="image_old">
						</div>
					</div>

				</div>
			</div>

		</div>
		
		<div class="col-md-7">

			<div class="panel panel-default">
				<div class="panel-heading">Mô tả chi tiết sản phẩm</div>
				<div class="panel-body">
					<textarea name="description" id="description" class="form-control"><?php echo $info[4]; ?></textarea>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlsanpham"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
	</div>

</form>

<script>
		CKEDITOR.replace('description');
</script>
<script>

		$('.btn-success').click(function() {
		var ib_name = $('#name').val().split(" ").join("");
		var ib_short = $('#short').val().split(" ").join("");
		var ib_price = $('#price').val().split(" ").join("");
		var ib_desc = $('#description').val().split(" ").join("");
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
			if(ib_price.length < 1)
			{
				alert("Giá tiền không được để trống");
				return false;
			} else
			return true;
			
		});
</script>
</div>

<?php 
	}
?>