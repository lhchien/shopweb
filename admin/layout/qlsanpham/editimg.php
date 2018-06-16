<?php 
	if(isset($_FILES['image']))
	{
		if($upload->upfile($_FILES['image'],"sanpham"))
			{
				$sanpham->them_anh($_GET['sp_ma'],$upload->get_url());
				
				header("Location:index.php?page=qlsanpham&act=editimg&sp_ma=".$_GET['sp_ma']."");
			}		
	}
	if(isset($_POST['avatar']))
	{
		$url = mysql_fetch_array($sanpham->get_edit($_POST['avatar']));
		$url_ = mysql_fetch_array($sanpham->hinh_sp($_GET['sp_ma']));
		$sanpham ->update_avata($_GET['sp_ma'],$url[8]);
		$sanpham ->set_url($_POST['avatar'],$url_[1]);
		header("Location:index.php?page=qlsanpham&act=editimg&sp_ma=".$_POST['avatar']."");
	}
	if(isset($_GET['hsp_ma']))
	{
		$url_ = mysql_fetch_array($sanpham->hinh_sp($_GET['hsp_ma']));
		echo $url_[1];
		unlink("../".$url_[1]);
		$sanpham->xoa_anh($_GET['hsp_ma']);
				header("Location:index.php?page=qlsanpham&act=editimg&sp_ma=".$_GET['sp_ma']."");
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
<?php
if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qlsanpham&act=editimg&sp_ma=<?php echo $_GET['sp_ma'] ?>" method="POST">
		<div class="alert alert-block alert-danger">
			<h4>Cảnh báo xóa!</h4>
			<p>Nếu bạn xóa ảnh này, hãy chắc chắn!
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qlsanpham">
					<button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button>
				</a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Quản lý danh sách hình ảnh</h2>
<div class="row">
	<div class="col-md-6">
		<form class="form-horizontal" action="index.php?page=qlsanpham&act=editimg&sp_ma=<?php echo $_GET['sp_ma']; ?>" method="post" enctype="multipart/form-data">
			<div class="panel panel-default">
				<div class="panel-heading">Thêm ảnh mới</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Hình ảnh</label>
						<div class="col-lg-9">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Kích thước ảnh: 300x350</b></i>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlsanpham"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>
		 </form>
	</div>
	
	<div class="col-md-6">
			<table class="table table-striped table-hover table-bordered">
				<thead>
					<tr>
						<th class="text-center">Hình</th>
						<th colspan="2" class="text-center">Chức năng</th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td width="35%"><img class="img-thumbnail" src="<?php echo "../".$info[8];?>" /></td>
						<td align='center' class='cotNutChucNang' colspan="2">
							<a href="?page=qlsanpham&act=editimg&sp_ma=<?php echo $info[0] ?>&hsp_ma=<?php echo $row[0]; ?>">
								<button type="button" class="btn btn-xs btn-danger" id="delete"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa ảnh</button>
							</a>
						</td>
					</tr>
					<?php $ds = $sanpham->ds_hinh($info[0]);
					while($row = mysql_fetch_array($ds)) { ?>
					<tr>
						<td width="35%"><img class="img-thumbnail" src="<?php echo "../".$row[1];?>" /></td>
						<td align='center' class='cotNutChucNang' colspan="2">
							<form class="form-horizontal" action="index.php?page=qlsanpham&act=editimg&sp_ma=<?php echo $row[0]; ?>" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<button type="submit" name="avatar" class="btn btn-xs btn-primary" value="<?php echo $info[0]; ?>">
										<span class="glyphicon glyphicon-picture"></span>&nbsp;Đại diện
									</button>
								</div>
							</form>
							<a href="?page=qlsanpham&act=editimg&sp_ma=<?php echo $info[0] ?>&hsp_ma=<?php echo $row[0]; ?>">
								<button type="button" class="btn btn-xs btn-danger" id="delete"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa ảnh</button>
							</a>
						</td>
					</tr>
					<?php 
					} 
					?>
				</tbody>
			</table>
	</div>
	
</div>
<?php	
	}
	
?>
