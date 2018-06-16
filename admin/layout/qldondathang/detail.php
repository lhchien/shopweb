<?php 
	
	if(!$donhang -> get_edit($_GET['sp_ddh_ma']))
			header("Location:index.php?page=qldondathang");
	else
		if(mysql_num_rows($donhang -> get_edit($_GET['sp_ddh_ma'])) == 0)
			header("Location:index.php?page=qldondathang");
		else
		{
			$info = mysql_fetch_array($donhang -> get_edit($_GET['sp_ddh_ma']));
			if($info[5] != NULL)
				$info_kh = mysql_fetch_array($donhang ->khach_hang($info[5]));
				$info_sp = $donhang -> danh_sach_chi_tiet($info[0]);
?>


<div class="container">
	<h2 class="text-center text-info">Thông tin chi tiết đơn đặt hàng</h2>
	
	<div class="row">
		<div class="col-md-4">
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
							<td width="100px">Họ tên KH</td><td><?php if($info[5] != NULL) echo $info_kh[2]; else echo $info[6] ?></td>
						</tr>
						<tr>
							<td>Giới tính</td><td><?php if($info[5] != NULL) if($info_kh[3]==0) echo "Nữ"; else echo "Nam";  ?></td>
						</tr>
						<tr>
							<td>Địa chỉ</td><td><?php if($info[5] != NULL) echo $info_kh[4]; else echo $info[7] ?></td>
						</tr>
						<tr>
							<td>Nơi giao</td><td><?php echo $info[3] ?></td>
						</tr>
						<tr>
							<td>Điện thoại</td><td><?php if($info[5] != NULL) echo $info_kh[5]; else echo $info[8] ?></td>
						</tr>
						<tr>
							<td>Ngày đặt</td><td><?php echo date("d/m/Y",$info[1]); ?></td>
						</tr>
						<tr>
							<td>Ngày giao</td><td><?php if($info[2] != "") echo date("d/m/Y",$info[2]); ?></td>
						</tr>
				</tbody>
			</table>
		</div>
		
		<div class="col-md-8">
			<table class="table table-striped table-hover table-bordered col-md-6">
				<thead>
					<tr>
						<th>STT</th>
						<th>Tên sản phẩm</th>
						<th>Số lượng</th>
						<th>Thành tiền</th>
					</tr>
				</thead>
				<tbody>
				<?php $stt =0; $tongtien =0;
				while($row = mysql_fetch_array($info_sp)) {  $stt++; $tongtien += $row[3] * $row[4];
					$ten_sp = mysql_fetch_array($donhang->tensanpham($row[1]));
				?>
						<tr>
							<td><?php echo $stt; ?></td>
							<td><?php echo $ten_sp[1]; ?></td>
							<td><?php if($row[3]!=0) echo $row[3]; else echo "Mua sỉ"?></td>
							<td><?php if($row[3]!=0) echo number_format($row[3] * $row[4]); else echo "Liên hệ"; ?></td>
						</tr>
						<?php
						}
					?>
					<tr>
						<td colspan="3">Tổng thành tiền</td>
						<td><?php echo number_format($tongtien); ?></td>
					</tr>
					<tr class="text-center">
						<td colspan="4">
							<a href="?page=qldondathang">
								<button type="button" class="btn btn-xs btn-success" value="Xem"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Trở về</button>
							</a>
							<?php if($info[4] == 1) { ?>
							<a href="?page=qldondathang&act=edit&sp_ddh_ma=<?php echo $info[0]; ?>">
								<button type="button" class="btn btn-xs btn-success" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Đã giao</button>
							</a>
							<?php } else if($info[4] ==2) { ?>
							<a href="?page=qldondathang&act=edit&sp_ddh_ma=<?php echo $info[0]; ?>">
								<button type="button" class="btn btn-xs btn-success" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Chưa giao</button>
							</a>
							<?php } ?>
							<!--
							<a href="?page=qldondathang&act=&sp_ddh_ma=<?php ?>">
								<button type="button" class="btn btn-xs btn-success" value="Xem"><span class="glyphicon glyphicon-print"></span>&nbsp;In HĐ</button>
							</a>
							-->
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php 
	}
?>