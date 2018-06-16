<?php
// 1 la nhan
// 2 la gui
$ds = $taikhoan -> ds_email();
$mail_nhan ="";
$mail_gui ="";
if($ds)
    while($row = mysql_fetch_array($ds))
    {
        if($row[2]==1) $mail_nhan = $row[1];
        if($row[2]==2) $mail_gui = $row[1];
    }
if(isset($_POST["submit"]))
{
    $mail_gui = $_POST["emailsend"];
    $mail_nhan = $_POST["emailrecieve"];
    if(mysql_num_rows($ds)>0)
    {
        $taikhoan->change_mail($mail_gui,2);
        $taikhoan->change_mail($mail_nhan,1);
    }
    else
    {
        $taikhoan->add_mail($mail_gui,2);
        $taikhoan->add_mail($mail_nhan,1);
    }
    echo "<script> alert('Đã cập nhật mail!'); </script> ";
}
?>


<div class="container">
<form class="form-horizontal" action="index.php?page=qltaikhoan&act=email" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lý email gửi nhận thông tin</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="email">Email gửi <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="email" name="emailsend" placeholder="Nhập email gửi..." id="emailsend" class="form-control" value="<?php echo $mail_gui ?>">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label" for="email">Email nhận <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="email" name="emailrecieve" placeholder="Nhập email nhận..." id="emailrecieve" class="form-control" value="<?php echo $mail_nhan ?>">
						</div>
					</div>

				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<a href="?page=qltaikhoan"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit" id="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
		<div class="col-lg-2"></div>
	</div>

</form>

<script>
</script>
</div>
