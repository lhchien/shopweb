<div class="container">
<?php

//===========================================
	if(isset($_POST['delete']))
	{
		if($taikhoan -> kt_xoa($_POST['qt_ma'],md5($_POST['pass'])))
		{
			$taikhoan -> xoa($_POST['qt_ma']);
			header("Location:index.php?page=qltaikhoan");
		}
		else
			echo "<script> alert('Loại sản phẩm đã tồn tại!'); </script> ";
	}
//===========================================

if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qltaikhoan&act=delete&qt_ma=<?php echo $_GET['qt_ma'] ?>" method="POST">
		<div class="alert alert-block alert-danger">
			<h4>Cảnh báo xóa!</h4>
			<p>Hãy nhập password của tài khoản bạn muốn xóa!</p> <br/>
				<input type="hidden" name="qt_ma" value="<?php echo $_GET['qt_ma'] ?>">
				<input type="password" name="pass" placeholder="Nhập mật khẩu..." id="pass" class="form-control" value="<?php ?>" required>
				<br/>
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qltaikhoan"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
		</div>
	</form>
	<?php
} ?>

<h2 class="text-center text-info">Danh sách tài khoản quản trị khác</h2>
<div class="row">
	<div class="col-md-12 text-right">
		<a href="?page=qltaikhoan&act=add">
			<button type="button" class="btn btn-xs btn-success" value="Thêm mới"><span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm mới</button>
		</a>
	</div>
</div>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tài khoản</th>
			<th>Họ tên</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
		<?php 
			//=======================================
			$ds = $taikhoan->danh_sach($_SESSION['admin']['qt_tendangnhap']); $stt = 0;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='6'> Danh sách rỗng </td> </tr>";
			else
				while($row = mysql_fetch_array($ds)) { $stt ++;
			//=======================================
		?>
			<tr>
				<td><?php echo $stt; ?></td>
				<td><?php echo $row[1]; ?></td>
				<td><?php echo $row[3]; ?></td>
				<td class="text-center">
					<a href="?page=qltaikhoan&act=delete&qt_ma=<?php echo $row[0]; ?>">
						<button type="button" class="btn btn-xs btn-danger" value="Xóa"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa</button>
					</a>
				</td>
			</tr>
			<?php
			}
		?>
	</tbody>
</table>

</div>