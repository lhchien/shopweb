		<div id="page-san-pham">
			<div class="well">
				<ol class="breadcrumb">
					<li><a href="main-index.html">Home</a></li>
					<li class="active">Thông tin tài khoản</li>
				</ol>

				<h4>Thông tin tài khoản</h4>

				<div id="thong-tin-tai-khoan" class="table-responsive">
					<table class="table table-striped">
						<tbody>
							<tr>
								<td><b>Họ Tên:</b></td>
								<td><?php echo $_SESSION['user']['kh_ten']?></td>
							</tr>

							<tr>
								<td><b>Email:</b></td>
								<td><?php echo $_SESSION['user']['kh_email']?></td>
							</tr>
							<tr>
								<td><b>Giới tính:</b></td>
								<td><?php if($_SESSION['user']['kh_gioitinh'] ==0 ) echo "Nữ"; else echo "Nam";?></td>
							</tr>
							<tr>
								<td><b>Điện thoại:</b></td>
								<td><?php echo $_SESSION['user']['kh_dienthoai']?></td>
							</tr>
							<tr>
								<td><b>Địa chỉ:</b></td>
								<td><?php echo $_SESSION['user']['kh_diachi']?></td>
							</tr>
						</tbody>
					</table>
				</div>	

			</div><!-- End well -->
		</div><!--End #page-san-pham -->
