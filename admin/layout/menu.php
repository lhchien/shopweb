<nav class="navbar navbar-inverse">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
			<span class="sr-only">Webname</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<!--<a href="" class="navbar-brand">PhatGiaoHG.com</a>-->
	</div>

	<div class="navbar-collapse collapse" id="menu">
		<ul class="nav navbar-nav">
			<li <?php if($page=='') echo "class='active'"; ?>><a href="index.php"><span class="glyphicon glyphicon-home"></span>&nbsp; Home</a></li>
			<li <?php if($page=='qlsanpham') echo "class='active'"; ?>><a href="?page=qlsanpham">Sản phẩm</a></li>
			<li <?php if($page=='qlloaisanpham') echo "class='active'"; ?>><a href="?page=qlloaisanpham">Loại S.Phẩm</a></li>
			<li <?php if($page=='qlnhasanxuat') echo "class='active'"; ?>><a href="?page=qlnhasanxuat">Nhà S.Xuất</a></li>
			<li <?php if($page=='qldondathang') echo "class='active'"; ?>><a href="?page=qldondathang">Đơn Hàng</a></li>
			<li <?php if($page=='qlkhachhang') echo "class='active'"; ?>><a href="?page=qlkhachhang">Khách Hàng</a></li>
			<li <?php if($page=='qlslideshow') echo "class='active'"; ?>><a href="?page=qlslideshow">SlideShow</a></li>
			<li <?php if($page=='qlthongtin') echo "class='active'"; ?>><a href="?page=qlthongtin">Thông Tin</a></li>
			<li <?php if($page=='qltintuc') echo "class='active'"; ?>><a href="?page=qltintuc">Tin Tức</a></li>
			<li <?php if($page=='qldoitac') echo "class='active'"; ?>><a href="?page=qldoitac">Đối Tác</a></li>
			<li <?php if($page=='qllogo') echo "class='active'"; ?>><a href="?page=qllogo">Logo</a></li>
			<li <?php if($page=='qllienhe') echo "class='active'"; ?>><a href="?page=qllienhe">Liên Hệ</a></li>
		</ul>
		
		<!--<ul class="nav navbar-nav">
			<li class="dropdown">
				<a data-toggle="dropdown" href="">QL.Thông Tin<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="?page=qlthongtin&cate=1">Giới Thiệu</a></li>
					<li><a href="?page=qlthongtin&cate=2">Liên Hệ</a></li>
					<li><a href="?page=qlthongtin&cate=3">Hướng Dẫn</a></li>
				</ul>
			</li>
		</ul>-->
		
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a data-toggle="dropdown" href=""><span class="glyphicon glyphicon-user"></span>&nbsp; <?php echo $_SESSION['admin']['qt_tendangnhap']?><span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="?page=qltaikhoan"><span class="glyphicon glyphicon-globe"></span>&nbsp; QL.Tài khoản</a></li>
					<li><a href="?page=qltaikhoan&act=email"><span class="glyphicon glyphicon-envelope"></span>&nbsp; QL.Email</a></li>
					<div class="divider"></div>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp; Thông tin</a></li>
					<li><a href="?page=qltaikhoan&act=changepass"><span class="glyphicon glyphicon-lock"></span>&nbsp; Đổi mật khẩu</a></li>
					<div class="divider"></div>
					<li><a href="?page=logout"><span class="glyphicon glyphicon-log-out"></span>&nbsp; Thoát</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>

