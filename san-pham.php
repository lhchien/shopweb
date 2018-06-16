<?php 
	session_start();
	include "db/dbcon.php";
	include "class/function.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- CSS Bootstrap -->
<link href = "css/bootstrap.min.css" rel="stylesheet" />
<!-- Main CSS -->
<link href = "css/styles.css" rel="stylesheet" />
<!-- CSS Owl Carousel -->
<link href = "css/owl.carousel.css" rel="stylesheet" />
<link href = "css/owl.theme.default.min.css" rel="stylesheet" />

<title></title>
</head>

<html>
<body>
	<div class="row center">
			
			<div class="row" id="header">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-5">
							<img src="images/logo.png" class="img-responsive" alt="" />
						</div><!-- End col-sm-5 logo -->


						<div class="col-sm-5" id="user">
		                    <ul class="list-inline pull-right">	
		                        <li><a href="#" data-toggle="modal" data-target="#log-in">Đăng Nhập <span class="glyphicon glyphicon-log-in"></span> </a></li>
		                        <li><a href="dang-ky.html">Đăng Kí <span class="glyphicon glyphicon-edit"></span></a></li>
		                    </ul>

		                    <!-- Modal Đăng Nhập-->
		                    <div class="modal fade" id="log-in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		                      	<div class="modal-dialog" role="document">
			                        <div class="modal-content">
			                          <div class="modal-header">
			                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			                            <h4 class="modal-title pull-left" id="myModalLabel">Đăng Nhập</h4>
			                          </div>
			                          <div class="modal-body text-left">
			                            <form>
			                              <div class="form-group">
			                                <label for="exampleInputEmail1">Tài Khoản</label>
			                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Tài Khoản">
			                              </div>
			                              <div class="form-group">
			                                <label for="exampleInputPassword1">Mật Khẩu</label>
			                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Mật Khẩu">
			                              </div>
			                              <div class="checkbox">
			                                <label>
			                                  <input type="checkbox"> Ghi Nhớ Tài Khoản
			                                </label> 
			                              </div>
			                            </form>
			                          </div>
			                          <div class="modal-footer">
			                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
			                            <button type="button" class="btn btn-primary btn-dn">Đăng Nhập</button>
			                          </div>
		                        	</div>
	                     		</div>
                    		</div> <!-- End Model Đăng Nhập -->
                        
		                    <!-- User -->
		                    <a href="#" style="display:none" class="dropdown-toggle pull-right" data-toggle="dropdown"><span class="glyphicon glyphicon-user" ></span> User Name <b class="caret"></b></a>
		                    <ul class="dropdown-menu pull-right">
		                    	<li><a href="thong-tin-tai-khoan.html"><span class="glyphicon glyphicon-th-large"></span> Nội Dung Tài Khoản</a></li>
		                        <li><a href="cap-nhat-thong-tin.html"><span class="glyphicon glyphicon-refresh"></span> Cập Nhật Tài Khoản</a></li>
		                        <li class="divider"></li>
		                        <li><a href="#"> <span class="glyphicon glyphicon-off"></span> Đăng Xuất</a></li>
		                    </ul>
                		</div><!-- End col-sm-5 Đăng Nhập- Đăng Ký - User -->

                		<div class="col-xs-12 col-sm-2 col-md-2" id="gio-hang">
		                	<a href="gio-hang.html" class="pull-right">
		                        <table>
		                            <tr>
		                                <td align="right"><span class="text-gio-hang">GIỎ HÀNG</span></td>
		                                <td rowspan="2"><span class="glyphicon glyphicon-shopping-cart"></span></td>
		                            </tr>
		                            <tr>
		                                <td align="right"><span><small>0đ</small></span></td>
		                            </tr>
		                        </table>        
		                   	</a>       
		                </div> <!-- End Giỏ Hàng -->

					</div><!-- End row -->					
				</div><!-- End col-sm-12 -->
			</div><!-- End #header -->

			<div id="mainnav">
			<div class="row" id="menu">
				<div class="col-sm-12">
					<div class="navbar navbar-inverse">
						<div class="container-fluid">
						    <!-- Brand and toggle get grouped for better mobile display -->
						    <div class="navbar-header">
						      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						      </button>
						      <a href="#" class="navbar-brand"> <span class="glyphicon glyphicon-home"></span></a>
						    </div>

						    <!-- Collect the nav links, forms, and other content for toggling -->
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						      <ul class="nav navbar-nav navbar-left">
		                        <li ><a href="main-index.html">TRANG CHỦ</a></li>
		                        <li><a href="#">GIỚI THIỆU</a></li>
		                        <li class="dropdown active">
		                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> SẢN PHẨM <b class="caret"></b></a>
		                            <ul class="dropdown-menu">
		                                <li><a href="san-pham.html">Mật Ong Tây Bắc</a></li>
		                                <li><a href="#">Rượu &amp; Đồ Ngâm Rượu</a></li>
		                                <li><a href="#">Thực Phẩm &amp; Thảo Mộc</a></li>
		                                <li><a href="#">Gia Vị Tây Bắc</a></li>
		                            </ul>
		                         </li>
		                        <li><a href="tin-tuc.html">TIN TỨC</a></li>
		                        <li><a href="#">LIÊN HỆ</a></li>
		                        <li><a href="#">HƯỚNG DẪN</a></li>                
		               		</ul>
						      <form class="navbar-form navbar-right pull-right" role="search">
						        <div class="form-group">
						          <table>
		                        	<tr>
		                            	<td><input type="text" class="form-control" placeholder="Tìm Kiếm..." /></td>
		                                <td><button type="submit" class="btn btn-default text-right"><span class="glyphicon glyphicon-search"></span></button></td>
		                            </tr>
		                         </table>
						        </div>
						      </form>
						      
						    </div><!-- /.navbar-collapse -->
						 </div><!-- /.container-fluid -->
					</div>

				</div><!-- End col-sm-12 -->
			</div><!-- End row menu -->
			</div>

			
			<div class="row" id="contain">
				<div class="col-sm-9" id="left">
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="main-index.html">Home</a></li>
								<li><a href="#">Sản Phẩm</a></li>
								<li class="active">Mật Ong Tây Bắc</li>
							</ol>

							<h4 class="pull-left">Mật Ong Tây Bắc</h4>

							<div class="btn-group pull-right">
							  	<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <span class="glyphicon glyphicon-filter"></span> Lọc <span class="caret"></span>
							  	</button>
							  	<ul class="dropdown-menu">
							    	<li><a href="#">Giá từ thấp đến cao</a></li>
							    	<li><a href="#">Giá từ cao đên thấp</a></li>
							    	<li><a href="#">Được mua nhiều nhất</a></li>
							  	</ul>
							</div>
							<div class="clearfix"></div>
							<hr>
							
							<p>Tất cả các sản phẩm chất lượng cao của công ty được khai thác trực tiếp từ người dân Tây Bắc!</p>

							<div class="row">
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="chi-tiet-san-pham.html">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-002.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-001.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

								</div><!-- End row -->
								
								<hr class="sp-hr">

								<div class="row">
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-002.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-001.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

								</div><!-- End row -->
								
								<hr class="sp-hr">

								<div class="row">
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-002.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-001.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

								</div><!-- End row -->

								<hr class="sp-hr">

								<div class="row">
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-002.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-001.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

								</div><!-- End row -->

								<hr class="sp-hr">

								<div class="row">
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-002.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-001.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="#">
									    		<div class="well">
									    			<img src="images/img-carousel/sp-003.jpg" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small>Mật ong hoa rừng đặc biệt</small></p>
									    	</a>
									    		<p class="txt-price">900.000đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->

								</div><!-- End row -->

								<nav class="text-center">
								  	<ul class="pagination">
								    	<li>
								      	<a href="#" aria-label="Previous">
								        	<span aria-hidden="true">&laquo;</span>
								     	 </a>
								    	</li>
								    	<li class="active"><a href="#">1</a></li>
								    	<li><a href="#">2</a></li>
								    	<li><a href="#">3</a></li>
								    	<li><a href="#">4</a></li>
								    	<li><a href="#">5</a></li>
								    	<li>
								      	<a href="#" aria-label="Next">
								        	<span aria-hidden="true">&raquo;</span>
								     	 </a>
								    	</li>
								  	</ul>
								</nav>
						</div><!-- End well -->
					</div><!--End #page-san-pham -->
				</div><!-- End LEFT -->

				<div class="col-sm-3" id="right">
					<!-- Danh Muc San Pham -->
					<div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">Danh Mục Sản Phẩm</div>
                            <div class="panel-body">
                            	<div class="well sp">
                                	<a href="#">
                                	<img src="images/sp-1.jpg" alt="" class="img-responsive" />
                                    <div class="panel-contain">
                                    	<p>Mật ong tây bắc</p>
                                        <div class="shadow"></div>
                                    </div>
                                    </a>
                                </div>

                                <div class="well sp">
                                	<a href="#">
                                	<img src="images/sp-2.jpg" alt="" class="img-responsive" />
                                    <div class="panel-contain">
                                    	<p>Rượu &amp; đồ ngâm rượu</p>
                                        <div class="shadow"></div>
                                    </div>
                                    </a>
                                </div>

                                <div class="well sp">
                                	<a href="#">
                                	<img src="images/sp-3.jpg" alt="" class="img-responsive" />
                                    <div class="panel-contain">
                                    	<p>thực phẩm &amp; thảo mộc</p>
                                        <div class="shadow"></div>
                                    </div>
                                    </a>
                                </div>

                                <div class="well sp">
                                	<a href="#">
                                	<img src="images/sp-4.jpg" alt="" class="img-responsive" />
                                    <div class="panel-contain">
                                    	<p>Gia vị tây bắc</p>
                                        <div class="shadow"></div>
                                    </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div><!--End Danh Mục San Pham -->
					

					<!-- LIEN HE -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">Liên Hệ</div>
                            <div class="panel-body">
                            <ul class="list-group text-center">
                            	<li class="list-group-item"><span class="glyphicon glyphicon-earphone"></span> Mr.Men</li>
							  	<li class="list-group-item"><h4>0909.123.4567</h4></li>
							  	<li class="list-group-item"><span class="glyphicon glyphicon-earphone"></span>  Mrs.Women</li>
							 	<li class="list-group-item"><h4>0919.000.999</h4></li>
							</ul>
                            </div>
                        </div>
                    </div><!-- End Lien He -->

                    <!-- FACEBOOK PAGE -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">facebook page</div>
                            <div class="panel-body">
                            	<div class="well">
                            		<img src="images/facebook-page.jpg" class="img-resposive">
                            	</div>
                            </div>
                        </div>
                    </div><!-- End facebook page -->

					<!-- ĐỐI TÁC -->
                    <div id="right-module">
                    	<div class="panel panel-warning">
                        	<div class="panel-heading">đối tác</div>
                            <div class="panel-body">
                            	<div class="well">
                            		<img src="images/patner-01.jpg" class="img-resposive">
                            		<img src="images/patner-02.jpg" class="img-resposive">
                            		<img src="images/patner-03.jpg" class="img-resposive">
                            	</div>
                            </div>
                        </div>
                    </div><!-- End facebook page -->

				</div><!-- End right -->

			</div><!-- End contain -->	

	</div><!--  End center row -->

	<div id="footer">
		<div class="row center text-center">
				<div class="col-sm-3 footer-module">
					<p class="footer-title">ĐỊA CHỈ CỬA HÀNG</p>
					<img src="images/maps.jpg" class="img-resposive">
					<p><span class="glyphicon glyphicon-home"></span> <span>132, Nguyễn Văn Cừ, TP.Cần Thơ.</span></p>
				</div>
				<div class="col-sm-3 footer-module">
					<p class="footer-title">LIÊN HỆ CHÚNG TÔI</p>
					<p>Chúng tôi luôn mang lại sự hài lòng cho khách hàng bằng chất lượng sản phẩm và đội ngũ kỹ thuật chuyên nghiệp.</p>
					<p><span class="glyphicon glyphicon-earphone"></span> (+84)90.123.4567</p>
					<p><span class="glyphicon glyphicon-envelope"></span> hello@example.com</p>
				</div>
				<div class="col-sm-3 footer-module">
					<p class="footer-title">LIÊN KẾT NHANH</p>
					<ul class="list-group">
						<li class="list-group-item"><a href=""><span class="glyphicon glyphicon-play"></span> Trang chủ</a></li>
						<li class="list-group-item"><a href=""><span class="glyphicon glyphicon-play"></span> Giới Thiệu</a></li>
						<li class="list-group-item"><a href=""><span class="glyphicon glyphicon-play"></span> Sản Phẩm</a></li>
						<li class="list-group-item"><a href=""><span class="glyphicon glyphicon-play"></span> Tin Tức</a></li>
						<li class="list-group-item"><a href=""><span class="glyphicon glyphicon-play"></span> Liên Hệ</a></li>
					</ul>
				</div>
				<div class="col-sm-3 footer-module">
					<a href="#">
						<img src="images/image-footer.jpg" class="img-resposive">
					</a>
				</div>
		</div>
	</div><!-- End footer -->

<!--   SCRIPT   -->

<!-- Jquery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<!-- Jquery Bootstrap -->    
<script src="js/bootstrap.js"></script>
<!-- Jquery Carousel -->  
<script src="js/owl.carousel.js"></script>
<!-- Main Jquery  -->  
<script src="js/main.js"></script>

</body>
</html>
