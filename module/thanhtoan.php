
<div id="dialog" style="display: none">
    <p></p>
</div>
<script>
    function show_tb_(tb,link)
    {
        $('#dialog p').html(tb);
        $( "#dialog" ).dialog({
            modal: true,
            buttons: {
                Ok: function() {
                    window.location=link;
                }
            }
        });
    }
</script>
<?php
$giohang = new giohang;
	if(isset($_POST['submit']))
	{
        if($_POST["captcha"]!=$_POST["re_captcha"])
        {
            echo '<script> show_tb_("Captcha không chính xác","?page=thanh-toan"); </script>';
            exit;
        }
		if(isset($_SESSION['user']))
		{
			$giohang->dat_hang(strtotime('now'),$_POST['noigiao'],$_SESSION['user']['kh_tendangnhap']);
		}
		else
		{
			$giohang->dat_hang_moi(strtotime('now'),$_POST['noigiao'],$_POST['ten'],$_POST['diachi'],$_POST['dienthoai']);
		}
            $txt = "Danh sách đặt hàng \n";
			$dh_ma = mysql_fetch_array($giohang->get_dh_ma());
			foreach($_SESSION['giohang'] as $sp => $sl)
			{
				if($sl ==0) continue;
				$info = $main->ds_sanpham(str_replace("sp_","",$sp));
				$row = mysql_fetch_array($info);
                if($sl == 999)
                {
                    $txt = $txt.$info[1].": Mua sỉ \n";
                    $dongia =0;
                    $sl = 0;
                }
                else
                {
                    $txt = $txt.$info[1].":".$sl."\n";
                    $dongia = $row[2] * $sl;
                }
				$giohang->san_pham_dat($dh_ma[0],$row[0],$sl,$dongia);
			}
                $txt = $txt."Tông tiền:".$dongia;
        foreach($_SESSION['giohang']as $title => $value)
            $_SESSION['giohang'][$title] = 0;
        if(isset($_SESSION["user"]))
        {
            if(mysql_num_rows($mail)>0)
            {
                mail($mail_gui,$_SESSION["user"]["kh_tendangnhap"],$txt);
                $txt = $txt."\n Từ khách hàng:".$_SESSION['kh_ten']."-".$_SESSION["kh_tendangnhap"];
                mail($_SESSION["user"]["kh_tendangnhap"],$mail_nhan,$txt);
            }
            echo '<script> show_tb_("Đặt hàng thành công","?page=danh-sach-don-hang"); </script>';
        }
        else
        {
            echo '<script>  show_tb_("Đặt hàng thành công","?page=Trang-chu"); </script>';
        }
	}
?>
<div id="page-san-pham">
	<div class="well">
								 <!-- Modal Mua hàng nhanh-->
							
										 <div class="modal-header">
											<h4 class="modal-title pull-left" id="myModalLabel">THÔNG TIN ĐẶT HÀNG </h4>
										 </div>
										<p class="text-right"><i>Khách hàng vui lòng điền đầy đủ thông tin bên dưới để đặt hàng!</i></p>
										<form method='post' action='?page=thanh-toan'>
										  <div class="modal-body text-left">
											<?php
												foreach($_SESSION['giohang'] as $sp => $soluong)
												{ if($soluong == 0) continue;
                                                    if($soluong == 999) $soluong ="Mua sỉ";
												$info = $main->ds_sanpham(str_replace("sp_","",$sp));
												$row = mysql_fetch_array($info);
											?>
												<div class="info-sp">
													<p><b>Tên sản phẩm: <?php echo $row[1];?></b></p>
													<p><i>Số lượng: <?php echo $soluong;?></i></p>
													<p><b><h5>Giá: <?php echo $row[2];?>Đ</h5></b></p>
													<img src="<?php echo $row[8]?>" class="img-thumbnail">
												</div>
												<hr>
											<?php
												}
											?>
											<?php
												if(isset($_SESSION['user']))
											{
											?>

											  <div class="form-group">
												<label for="">Họ Tên <span class="important">(*)</span>: </label>
												<input type="text" class="form-control" id="ten" value="<?php echo $_SESSION['user']['kh_tendangnhap']?>" disabled>
											  </div>
											  <div class="form-group">
												<label for="">Điện Thoại <span class="important">(*)</span>: </label>
												<input type="text" class="form-control" id="dienthoai" value="<?php echo $_SESSION['user']['kh_dienthoai']?>" disabled>
											  </div>
											  <div class="form-group">
												<label for="">Địa Chỉ <span class="important">(*)</span>: </label>
												<input type="text" class="form-control" id="diachi" value="<?php echo $_SESSION['user']['kh_diachi']?>" disabled>
											  </div>
											  <?php }
											  else
											  {?>
											   <div class="form-group">
												<label for="">Họ Tên <span class="important">(*)</span>: </label>
												<input type="text" name="ten" class="form-control" id="ten" placeholder="Fullname">
											  </div>
											  <div class="form-group">
												<label for="">Điện Thoại <span class="important">(*)</span>: </label>
												<input type="text" name="dienthoai" class="form-control" id="dienthoai" placeholder="Phone Number">
											  </div>

											  <div class="form-group">
												<label for="">Địa Chỉ <span class="important">(*)</span>: </label>
												<input type="text" name="diachi" class="form-control" id="diachi" placeholder="Address">
											  </div>
											  <?php } ?>
											  <div class="form-group">
												  <label for="">Nơi giao/Ghi chú: </label>
												  <textarea class="form-control" rows="3" name="noigiao" id="noigiao"></textarea>
											   </div>

                                              <div class="form-group">
                                                  <label for="exampleInputEmail1">Captcha</label>
                                                  <img style="width: 100px;" src="<?php echo $_SESSION["captcha"]["image_src"];?>">
                                                  <input type="hidden" value="<?php echo $_SESSION["captcha"]["code"]?>" class="form-control" name="captcha"  id="captcha" placeholder="captcha">
                                                  <input type="text" class="form-control" name="re_captcha"  id="re_captcha" placeholder="captcha">
                                              </div>
                                              <small><b>Nhân viên chúng tôi sẽ liên hệ Quý khách qua điện thoại (8:00 - 22:00) / We will contact you via phonecall (8:00 - 22:00)</b></small>

                                          </div>
										  <div class="modal-footer">
											<a href="?page=Trang-chu"><button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button></a>
											<button type="submit" name="submit" id="submit" class="btn btn-warning btn-dn">Đặt Hàng/ Order</button>
										  </div>
                                        </form>
    </div>
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
	$('#submit').click(function() {
		var ib_ten = $('#ten').val().trim();
		var ib_diachi = $('#diachi').val().trim();
		var ib_dienthoai = $('#dienthoai').val().trim();
		var ib_noigiao = $('#noigiao').val().trim();
        var ib_captcha = $('#re_captcha').val().trim();
		if(ib_ten.length < 1)
			{
				show_tb("Tên không được để trống.");
				return false;
			}else
			if(ib_diachi.length < 1)
			{
				show_tb("Địa chỉ không để trống.");
				return false;
			} else
			if(ib_dienthoai.length < 8 || isNaN(ib_dienthoai))
			{
                show_tb("Điện thoại không hợp lệ.");
				return false;
			} else
            if(ib_noigiao.length < 1)
            {
                show_tb("Nơi giao không hợp lệ.");
                return false;
            }else
            if(ib_captcha.length < 1)
            {
                show_tb("Bạn chưa nhập captcha");
                return false;
            } else

        return true;
    });
		
</script>