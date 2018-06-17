<?php
	if(!isset($_SESSION['giohang']))
		echo "<script> window.location='?page=Trang-chu' </script>";
	else
	{
		$check = 0;
		foreach($_SESSION['giohang'] as $title => $value)
		if($value > 0)
			$check = 1;
		if(!$check)
			echo "<script> window.location='?page=Trang-chu' </script>";
	}
?>
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="?page=Trang-chu">Home</a></li>
								<li class="active">Giỏ hàng</li>
							</ol>

							<h4>Giỏ hàng</h4>
							<hr>
							<div id="page-gio-hang" class="table-responsive">
								<table class="table text-center table-hover">
									<thead>
										<tr>
											<td></td>
											<td>Sản phẩm</td>
											<td>Số lượng</td>
											<td>Giá</td>
											<td>Thành tiền</td>
											<td></td>
										</tr>
									</thead>
									<tbody>
									
									<?php 
									//======================================================
									$giatien =0;
									foreach($_SESSION['giohang'] as $key => $value)
									{
									if($value == 0) continue;
                                    if($value == 999) $value = 0;
									$sp = $main->ds_sanpham(str_replace("sp_","",$key));
									$row = mysql_fetch_array($sp);
									$giatien += $value * $row[2];
									//=======================================================
									?>
									
										<tr>
											<td><img src="<?php echo $row[8]?>" class="img-resposive"></td>
											<td>
												<span class="text-uppercase"><b><?php echo $row[1];?></b></span>
											</td>
											<td style="width:11%">
												<select style="width:100px;" class="form-control" onchange="javascriot:window.location='?page=ql-gio-hang&act=edit&sp_ma=<?php echo $row[0]?>&sl='+this.options[this.selectedIndex].value">
												<?php for($j=1;$j<=100;$j++)
												{
												?>
													<option value="<?php echo $j;?>" <?php if($j==$value) echo "selected='selected'";?>> <?php echo $j;?> </option>
												<?php
												}
												?>
                                                    <option <?php if($value == 0) echo "selected"?>  value="999" style="color: red;">Mua sỉ</option>
                                                </select>
											</td>
											
											<td><?php echo number_format($row[2]);?></td>
											
											<td><b><?php if($value ==0) echo "Liên hệ"; else echo number_format($row[2] * $value)."đ"; ?></b></td>
											<td><a href="?page=ql-gio-hang&act=edit&sp_ma=<?php echo $row[0]?>&sl=0"><span class="glyphicon glyphicon-remove text-danger"></span></a></td>
										</tr>
									<?php } ?>
											
										<tr>
											<td colspan="5" class="sum"><span><b>Tạm tính:</b></span> <?php echo number_format($giatien); ?>đ</td>
										</tr>
									</tbody>
								</table>
								</div>
								<div class="modal-footer">
									<a href="?page=trang-chu"><button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tiếp tục mua hàng</button></a>
		                            <a href="?page=ql-gio-hang&act=del"><button type="button" class="btn btn-default pull-left" data-dismiss="modal">Xóa toàn bộ giỏ hàng</button></a>
		                            <a href="?page=thanh-toan"><button type="button" class="btn btn-warning btn-dn pull-right">Đặt hàng</button></a>
	                     		</div>
	  	
						</div><!-- End well -->
					</div><!--End #page-san-pham -->