<?php
	if(isset($_POST["submit"]))
	{
		if($main->kt_email($_POST['email']) != 0)
		{
			if($main->kt_cmnd($_POST['cmnd']) != 0)
			{
				if(mysql_num_rows($main->kt_email($_POST['email'])) == 0)
				{
					if(mysql_fetch_array($main->kt_cmnd($_POST['cmnd'])) ==0)
					{
                        if($_POST["captcha"]==$_POST["re_captcha"])
                        {
                            if($main->dangky($_POST['email'],md5($_POST['pass2']),$_POST['name'],$_POST['gioitinh'],$_POST['address'],$_POST['phone'],$_POST['email'],$_POST['cmnd']))
                                $login = $main->dangnhap($_POST["email"], $_POST["pass"]);

                            $txt ="Bạn đã đăng ký thành công.\n
                                    Tên đăng nhập:".$_POST["name"]."\n
                                    Địa chỉ:".$_POST["address"]."\n
                                    Số điện thoại:".$_POST["phone"]."\n
                                    Tài khoản đăng nhập:".$_POST["email"]
                                    ;
                            if(mysql_num_rows($mail)>0)
                            mail($mail_gui,$_POST["email"],$txt);
                            $info = mysql_fetch_array($login);
                            foreach ($info as $title => $value)
                                $_SESSION['user'][$title]= $value;
                            echo '<div id="dialog" title="Thông báo" style="display:none">
                                        <p>Đăng ký thành công.</p>
                                </div>';
                            echo ' <script>
                                    $(function() {
                                        $( "#dialog" ).dialog({
                                            modal: true,
                                            buttons: {
                                                Ok: function() {
                                                    $( this ).dialog( "close" );
                                                     window.location="index.php";
                                                }
                                            }
                                        });
                                    });
                                </script>';

                        }
                        else
                        {
                            echo '<div id="dialog" title="Thông báo" style="display:none">
                                        <p>Captcha không chính xác.</p>
                                </div>';
                            echo ' <script>
                                    $(function() {
                                        $( "#dialog" ).dialog({
                                            modal: true,
                                            buttons: {
                                                Ok: function() {
                                                    $( this ).dialog( "close" );
                                                }
                                            }
                                        });
                                    });
                                </script>';
                        }

					}
					else
					{
                        echo '<div id="dialog" title="Thông báo" style="display:none">
                                        <p>Cmnd đã tồn tại.</p>
                                </div>';
                        echo ' <script>
                                    $(function() {
                                        $( "#dialog" ).dialog({
                                            modal: true,
                                            buttons: {
                                                Ok: function() {
                                                    $( this ).dialog( "close" );
                                                }
                                            }
                                        });
                                    });
                                </script>';
					}
				}				
				else
				{
                    echo '<div id="dialog" title="Thông báo" style="display:none">
                                        <p>Tài khoản đã tồn tại.</p>
                                </div>';
                    echo ' <script>
                                    $(function() {
                                        $( "#dialog" ).dialog({
                                            modal: true,
                                            buttons: {
                                                Ok: function() {
                                                    $( this ).dialog( "close" );
                                                }
                                            }
                                        });
                                    });
                                </script>';
				}
			}
		}
	}
?>

	<div id="page-san-pham">
		<div class="well">
			<div id="dang-ky">
				<ol class="breadcrumb">
					<li><a href="main-index.html">Home</a></li>
					<li class="active">Đăng ký</li>
				</ol>

				<h4>Đăng ký nhanh</h4>
				<hr>
				<form method="post" action="?page=dang-ky">
					<div class="form-group">
						<label for="exampleInputEmail1">Họ tên</label>
						<input type="text" class="form-control" name="name" id="name" placeholder="Full-name">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">CMND</label>
						<input type="text" class="form-control" name="cmnd" id="cmnd" placeholder="Identify Number">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1"> Giới tính </label>
						<select class="form-control" name="gioitinh" id="gioitinh">
							<option value="2"> Chọn giới tính </option>
							<option value="0"> Nữ </option>
							<option value="1"> Nam </option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email</label>
						<input type="email" class="form-control" name="email" id="email" placeholder="Email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mật khẩu</label>
						<input type="password" class="form-control" name="pass" id="pass" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Nhập lại mật khẩu</label>
						<input type="password" class="form-control" name="pass2" id="pass2" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Điện thoại</label>
						<input type="text" class="form-control" name="phone" id="phone" placeholder="Phone">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Địa chỉ</label>
						<input type="text" class="form-control" name="address"  id="address" placeholder="Address">
					</div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Captcha</label>
                        <img style="width: 100px;" src="<?php echo $_SESSION["captcha"]["image_src"];?>">
                        <input type="hidden" value="<?php echo $_SESSION["captcha"]["code"]?>" class="form-control" name="captcha"  id="captcha" placeholder="captcha">
                        <input type="text" class="form-control" name="re_captcha"  id="re_captcha" placeholder="captcha">
                    </div>

                    <button type="submit" name="submit" id="dangky" class="btn btn-warning pull-right">Đăng ký</button>
					  <div class="clearfix"></div>
					</form>
			</div>
			
		</div><!-- End well -->
	</div><!--End #page-san-pham -->
<div id="dialog" title="Thông báo" style="display:none">
    <p>Tài khoản đã tồn tại.</p>
</div>

	<script>
        function show_tb(tb)
        {
            $('#dialog p').html(tb);
            $( "#dialog" ).dialog({
                modal: true,
                buttons: {
                    Ok: function() {
                        $( this ).dialog( "close" );
                    }
                }
            });
        };


		$('#dangky').click(function() {
		var ib_name = $('#name').val().trim();
		var ib_cmnd = $('#cmnd').val().trim();
		var ib_email = $('#email').val().trim();
		var ib_pass = $('#pass').val().trim();
		var ib_pass2 = $('#pass2').val().trim();
		var ib_phone = $('#phone').val().trim();
		var ib_address = $('#address').val().trim();
		var ib_captcha = $('#re_captcha').val().trim();
		var ib_sex = $('#gioitinh').val();
			if(ib_name.length < 1)
			{
                show_tb("Tên không được để trống.");
				return false;
			} else
			if(ib_cmnd.length < 8)
			{
                show_tb("CMND không hợp lệ.");
				return false;
			} else
			if(ib_sex == 2)
			{
                show_tb("Chọn giới tính.");
				return false;
			} else
			if(ib_email.length < 1)
			{
                show_tb("Email không được để trống.");
				return false;
			} else
			if(ib_pass.length < 1)
			{
                show_tb("Mật khẩu không được để trống.");
				return false;
			} else
			if(ib_pass2.length < 1)
			{
                show_tb("Mật khẩu 2 không được để trống.");
				return false;
			} else
			if(ib_pass != ib_pass2)
			{
                show_tb("Hai mật khẩu không giống nhau.");
				return false;
			} else
			if(ib_phone.length < 7 || isNaN(ib_phone))
			{
                show_tb("Số điện thoại không hợp lệ (8-13)");
				return false;
			} else
			if(ib_address.length < 1)
			{
                show_tb("Địa chỉ không được để trống");
				return false;
			} else
			if(ib_captcha.length < 1)
			{
                show_tb("Bạn chưa nhập captcha");
				return false;
			} else
			return true;
			
		});
	</script>
