
			<div class="row" id="header">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-5">
							<div>
                            <?php
                            if($main->logo()) {
                                $info = mysql_fetch_array($main->logo());
                                ?>
                                <a href="<?php echo $info[2]; ?>">
                                <img class="img-reponsive" height="63px" src="<?php echo $info[3];?>">
                                </a>
                            <?php
                            }
                            ?>
                            </div>
                        </div><!-- End col-sm-5 logo -->


						<div class="col-sm-5" id="user" >
						<?php 
						if(!isset($_SESSION['user']))
						{
						?>
		                    <ul class="list-inline pull-right" >	
		                        <li><a href="#" data-toggle="modal" data-target="#log-in">Đăng Nhập <span class="glyphicon glyphicon-log-in"></span> </a></li>
		                        <li><a href="?page=dang-ky">Đăng Kí <span class="glyphicon glyphicon-edit"></span></a></li>
		                    </ul>
		                    <!-- Modal Đăng Nhập-->
		                    <div class="modal fade" id="log-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                      	<div class="modal-dialog" role="document">
			                        <div class="modal-content">
										<form action="?page=dang-nhap" method="post">
											  <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
												<h4 class="modal-title pull-left" id="myModalLabel">Đăng Nhập</h4>
											  </div>
											  <div class="modal-body text-left">
												  <div class="form-group">
													<label for="exampleInputEmail1">Tài Khoản</label>
													<input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Tài Khoản">
												  </div>
												  <div class="form-group">
													<label for="exampleInputPassword1">Mật Khẩu</label>
													<input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Mật Khẩu">
												  </div>
												  <div class="checkbox">
													<label>
													  <input type="checkbox"> Ghi Nhớ Tài Khoản
													</label> 
												  </div>
											  </div>
											  <div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
												<button type="submit" name="submit" class="btn btn-primary btn-dn">Đăng nhập</button>
											  </div>
			                            </form>
		                        	</div>
	                     		</div>
                    		</div> <!-- End Model Đăng Nhập -->                        
						<?php 
						} else {
						?>
		                    <!-- User -->
		                    <a href="#" class="dropdown-toggle pull-right" data-toggle="dropdown"><span class="glyphicon glyphicon-user" ></span> <?php echo $_SESSION['user']['kh_ten']?> <b class="caret"></b></a>
		                    <ul class="dropdown-menu pull-right">
		                    	<li><a href="?page=thong-tin-tai-khoan"><span class="glyphicon glyphicon-th-large"></span> Thông tin tài khoản</a></li>
		                        <li><a href="?page=cap-nhat-tai-khoan"><span class="glyphicon glyphicon-refresh"></span> Cập nhật tài khoản</a></li>
		                        <li><a href="?page=doi-mat-khau"><span class="glyphicon glyphicon-refresh"></span> Đổi mật khẩu</a></li>
		                        <li><a href="?page=danh-sach-don-hang"><span class="glyphicon glyphicon-refresh"></span> Danh sách đơn hàng</a></li>
		                        <li class="divider"></li>
		                        <li><a href="?page=dang-xuat"> <span class="glyphicon glyphicon-off"></span> Đăng xuất</a></li>
		                    </ul>
						<?php 
							}
						?>
                		</div><!-- End col-sm-5 Đăng Nhập- Đăng Ký - User -->
						<?php 
							include 'include/giohang.php';
						?>
					</div><!-- End row -->					
				</div><!-- End col-sm-12 -->
			</div><!-- End #header -->
