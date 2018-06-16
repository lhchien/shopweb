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
						      <a href="index.php" class="navbar-brand"> <span class="glyphicon glyphicon-home"></span></a>
						    </div>

						    <!-- Collect the nav links, forms, and other content for toggling -->
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						      <ul class="nav navbar-nav navbar-left">
		                        <li <?php if($page== "trang-chu") echo 'class="active"'?>><a href="index.php">TRANG CHỦ</a></li>
		                        <li <?php if($page== "gioi-thieu") echo 'class="active"'?>><a href="?page=gioi-thieu">GIỚI THIỆU</a></li>
		                        <li class="dropdown<?php if($page =="san-pham" || $page == "chi-tiet-san-pham") echo ' active'?>" >
		                            <a href="#" class="dropdown-toggle" data-toggle = "dropdown">SẢN PHẨM <b class="caret"></b></a>
		                            <ul class="dropdown-menu">
										<?php 
											$dm_sp = $main->danhmuc_sanpham();
											while($row = mysql_fetch_array($dm_sp))
											{ 
										?>
		                                <li><a href="?page=san-pham&dm_sp=<?php echo $row[0];?>"><?php echo $row[1]?></a></li>
		                                <?php } ?>
		                            </ul>
		                         </li>
		                        <li <?php if($page== "tin-tuc" || $page == "chi-tiet-tin-tuc") echo 'class="active"'?>><a href="?page=tin-tuc">TIN TỨC</a></li>
		                        <li <?php if($page== "lien-he") echo 'class="active"'?>><a href="?page=lien-he">LIÊN HỆ</a></li>
		                        <li <?php if($page== "huong-dan") echo 'class="active"'?>><a href="?page=huong-dan">HƯỚNG DẪN</a></li>                
		               		</ul>
						      <form class="navbar-form navbar-right pull-right" role="search" action="" method="GET">
						        <div class="form-group">	
						          <table>
		                        	<tr><input type="hidden" value="tim-kiem" name="page">
		                            	<td><input type="text" class="form-control" name="key" placeholder="Tìm Kiếm..." /></td>
		                                <td><button type="submit" class="btn btn-default text-right"><span class="glyphicon glyphicon-search"></span></button></td>
		                            </tr>
		                         </table>
						        </div>
						      </form>
						      
						    </div><!-- /.navbar-collapse -->
						 </div><!-- /.container-fluid -->
					</div>

				</div><!-- End col-sm-12 -->
			</div>
</div>