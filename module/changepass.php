<?php
//===========================================
	if(isset($_POST['submit']))
	{
		if($main -> kt_xoa($_SESSION['user']['kh_tendangnhap'],md5($_POST['oldpass'])))
		{
			$main -> set_edit($_SESSION['user']['kh_tendangnhap'],md5($_POST['newpass2']));
			header("Location:index.php?page=doi-mat-khau");
		}
	}
//===========================================
?>		
<div id="page-san-pham">
			<div class="well">
<form  action="index.php?page=doi-mat-khau" method="post">

	<div class="row">
		
				<div class="panel-heading">Đổi mật khẩu</div>
				<div class="panel-body">
					
					<div class="form-group">
						<label for="oldpass">MK cũ <span class="text-danger"><strong>(*)</strong></span></label>
						<input type="password" name="oldpass" placeholder="Nhập mật khẩu cũ..." id="oldpass" class="form-control" value="<?php if (isset($oldpass)) echo $oldpass; ?>">
					</div>
					
					<div class="form-group">
						<label for="newpass1">MK mới <span class="text-danger"><strong>(*)</strong></span></label>
						<input type="password" name="newpass1" placeholder="Nhập mật khẩu mới..." id="newpass1" class="form-control" value="<?php if (isset($newpass1)) echo $newpass1; ?>">
					</div>
					
					<div class="form-group">
						<label for="newpass2">Xác nhận <span class="text-danger"><strong>(*)</strong></span></label>
						<input type="password" name="newpass2" placeholder="Xác nhận mật khẩu mới..." id="newpass2" class="form-control" value="<?php //if (isset($name)) echo $name; ?>">
					</div>
					
					<div class="form-group">
						<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
					</div>
					
				</div>
		
		<div class="col-md-3"></div>
		
	</div>

</form>
	</div>
</div>