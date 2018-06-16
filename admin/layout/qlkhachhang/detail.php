<?php 
	
	if(!$khachhang -> get_edit($_GET['kh_ma']))
			header("Location:index.php?page=qlkhachhang");
	else
		if(mysql_num_rows($khachhang -> get_edit($_GET['kh_ma'])) == 0)
			header("Location:index.php?page=qlkhachhang");
		else
		{
			$info = mysql_fetch_array($khachhang -> get_edit($_GET['kh_ma']));
?>
<div class="container">
	<h2 class="text-center text-info">Thông tin chi tiết khách hàng</h2>
	
	<div class="row">
		<div class="col-md-2"></div>
	
		<div class="col-md-8">
			<table class="table table-striped table-hover table-bordered col-md-6">
				<thead>
					<tr>
						<th class="text-center" colspan="2">Thông tin cơ bản</th>
					</tr>
				</thead>
				<tbody>
					<?php 
						?>
						<tr>
							<td width="150px">Họ tên KH</td><td><?php echo $info[2]; ?></td>
						</tr>
						<tr>
							<td>CMND</td><td><?php echo $info[10]; ?></td>
						</tr>
						<tr>
							<td>Tên đăng nhập</td><td><?php echo $info[0]; ?></td>
						</tr>
						<tr>
							<td>Giới tính</td><td><?php if($info[3]) echo 'Nam'; else echo 'Nữ'; ?></td>
						</tr>
						<tr>
							<td>Địa chỉ</td><td><?php echo $info[4]; ?></td>
						</tr>
						<tr>
							<td>Điện thoại</td><td><?php echo $info[5]; ?></td>
						</tr>
						<tr>
							<td>Email</td><td><?php echo $info[6]; ?></td>
						</tr>
						
						<tr class="text-center">
							<td colspan="4">
								<a href="?page=qlkhachhang">
									<button type="button" class="btn btn-xs btn-success"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Trở về</button>
								</a>
							</td>
						</tr>
				</tbody>
			</table>
		</div>
		
		<div class="col-md-2"></div>
	</div>
</div>
<?php
	}
?>