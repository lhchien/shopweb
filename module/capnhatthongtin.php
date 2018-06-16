<?php
	if(isset($_POST['submit']))
	{
		if($main->edit_profile($_SESSION['user']['kh_tendangnhap'],$_POST['name'],$_POST['phone'],$_POST['address'],$_POST['sex']))
		{
			$_SESSION['user']['kh_ten']=$_POST['name'];
			$_SESSION['user']['kh_dienthoai']=$_POST['phone'];
			$_SESSION['user']['kh_diachi']=$_POST['address'];
			$_SESSION['user']['kh_gioitinh']=$_POST['sex'];
			echo "<script> alert('cập nhật thành công'); window.location='?page=thong-tin-tai-khoan' </script>";
		}
	}
	
?>


	<div id="page-san-pham">
		<div class="well">
			<div id="dang-ky">
				<ol class="breadcrumb">
					<li><a href="main-index.html">Home</a></li>
					<li class="active">Câp nhật thông tin</li>
				</ol>

				<h4>Cập nhật thông tin</h4>
				<hr>
				<form action="?page=cap-nhat-tai-khoan" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Họ tên</label>
						<input type="text" class="form-control" id="name" name="name" value="<?php echo $_SESSION['user']['kh_ten']?>">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Điện thoại</label>
						<input type="text" class="form-control" id="phone" name="phone" value="<?php echo $_SESSION['user']['kh_dienthoai']?>">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Địa chỉ</label>
						<input type="text" class="form-control" id="address" name="address" value="<?php echo $_SESSION['user']['kh_diachi']?>">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Giới tính</label>
						
						<select class="form-control" name="sex">
							<option value="0"<?php if($_SESSION['user']['kh_gioitinh']==0) echo "selected";?>> Nữ </option>
							<option value="1"<?php if($_SESSION['user']['kh_gioitinh']==1) echo "selected";?>> Nam </option>
						</select>
					</div>
					
					  <button type="submit" id="submit" name="submit" class="btn btn-warning pull-right">Cập nhật</button>
					  <div class="clearfix"></div>
					</form>
			</div>
			
		</div><!-- End well -->
	</div><!--End #page-san-pham -->

	<script>
		$('#dangky').click(function() {
		var ib_name = $('#name').val().split(" ").join("");
		var ib_phone = $('#phone').val().split(" ").join("");
		var ib_address = $('#address').val().split(" ").join("");
			if(ib_name.length < 1)
			{
				alert("Tên không được để trống.");
				return false;
			} else
			if(ib_phone.length < 7)
			{
				alert("Số điện thoại không hợp lệ (8-13)");
				return false;
			} else
			if(ib_address.length < 1)
			{
				alert("Địa chỉ không được để trống");
				return false;
			} else
			return true;
			
		});
	</script>
