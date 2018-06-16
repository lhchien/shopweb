<div class="container">
<?php
if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qlloaisanpham&act=editimg&sp_ma=<?php ?>" method="POST">
		<div class="alert alert-block alert-danger">
			<h4>Cảnh báo xóa!</h4>
			<p>Nếu bạn xóa ảnh này, hãy chắc chắn!
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qlloaisanpham">
					<button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button>
				</a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Quản lý hình ảnh đại diện</h2>
<div class="row">
	<div class="col-md-6">
		<form class="form-horizontal" action="index.php?page=qlloaisanpham&act=editimg&sp_ma=<?php echo $sp_ma; ?>" method="post" enctype="multipart/form-data">
			<div class="panel panel-default">
				<div class="panel-heading">Thêm ảnh mới</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Hình ảnh</label>
						<div class="col-lg-9">
							<input type="file" name="image" id="image" class="form-control">
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlloaisanpham"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>
		 </form>
	</div>
	
	<div class="col-md-6">
		<form class="form-horizontal" action="index.php?page=qlloaisanpham&act=editimg" method="post" enctype="multipart/form-data">
			<?php

			?>
			<table class="table table-striped table-hover table-bordered">
				<thead>
					<tr>
						<th class="text-center">Hình hiện tại</th>
						<th class="text-center">Chức năng</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td width="35%"><img class="img-thumbnail" src="<?php echo "../images/no_image.gif";?>" /></td>
						<td align='center' class='cotNutChucNang' colspan="2">
							<a href="?page=qlloaisanpham&act=editimg&sp_ma=<?php ?>&hsp_ma=<?php ?>">
								<button type="button" class="btn btn-xs btn-danger" id="delete"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa ảnh</button>
							</a>
						</td>
					</tr>

				</tbody>
			</table>
		</form>
	</div>
	
</div>

