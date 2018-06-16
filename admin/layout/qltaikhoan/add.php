<?php 
	if(isset($_POST['emailAcc']))
		if(!$taikhoan ->kt_tontai($_POST['emailAcc']))
		{
			$taikhoan->them($_POST['emailAcc'],md5($_POST['newpass2']),$_POST['name'],2);
			header("Location:index.php?page=qltaikhoan");
		}
		else
			echo "<script> alert('Tên đăng nhập đã tồn tại!'); </script> ";
?>

<div class="container">
<form class="form-horizontal" action="index.php?page=qltaikhoan&act=add" method="post">

	<div class="row">
		<div class="col-md-3"></div>
		
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thêm tài khoản mới</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="emailAcc">Email login<span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="email" name="emailAcc" placeholder="Nhập email đăng nhập..." id="emailAcc" class="form-control" value="<?php if (isset($_POST['emailAcc'])) echo $_POST['emailAcc']; ?>" required>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="name">Họ tên</label>
						<div class="col-lg-9">
							<input type="text" name="name" placeholder="Nhập tên..." id="name" class="form-control" value="<?php if (isset($_POST['name'])) echo $_POST['name']; ?>" >
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="newpass1">Mật khẩu <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="password" name="newpass1" placeholder="Nhập mật khẩu..." id="newpass1" class="form-control" value="<?php //if (isset($POSTnewpass1)) echo $newpass1; ?>" required>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="newpass2">Xác nhận <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="password" name="newpass2" placeholder="Xác nhận mật khẩu..." id="newpass2" class="form-control" value="<?php //if (isset($name)) echo $name; ?>" required>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-lg-12 text-center">
							<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
						</div>
					</div>
					
				</div>
			</div>

		</div>
		
		<div class="col-md-3"></div>
		
	</div>

</form>

</div>