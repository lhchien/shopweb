<?php 
	if(isset($_POST['name']))
	{
		if(isset($_FILES['image']))
			if($upload->upfile($_FILES['image'],"logo"))
			{
				unlink($_POST['image_old']);
				$logo->set_url($_POST['id'],$upload->get_url());
			}		
			$logo->set_edit($_POST['id'],$_POST['name'],$_POST['short'],$_POST['link']);
	}
	if(!$logo -> get_edit($_GET['ss_ma']))
			header("Location:index.php?page=qllogo");
	else
		if(mysql_num_rows($logo -> get_edit($_GET['ss_ma'])) == 0)
			header("Location:index.php?page=qllogo");
		else
		{
			$info = mysql_fetch_array($logo -> get_edit($_GET['ss_ma']));
?>
<div class="container">
<form class="form-horizontal" action="index.php?page=qllogo&act=edit" method="post" enctype="multipart/form-data">

	<div class="row">
		
		<div class="col-md-7">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chung</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="name">Tên hình ảnh <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="hidden" value="<?php echo $info[0];?>" name="id">
							<input type="text" name="name" placeholder="Tên hình ảnh..." id="name" class="form-control" value="<?php echo $info[1]; ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Ảnh mới</label>
						<div class="col-lg-9">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Chiều cao ảnh thích hợp: 63px</b></i>
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="name">Link liên kết <span class="text-danger"><strong></strong></span></label>
                        <div class="col-lg-9">
                            <input type="text" name="link" placeholder="link liên kết" id="link" class="form-control" value="<?php echo $info[2]; ?>">
                        </div>
                    </div>

				</div>
			</div>

		</div>
		
		<div class="col-lg-5">
			<div class="panel panel-default">
				<div class="panel-heading">Hình ảnh</div>
				<div class="panel-body">
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Ảnh hiện tại</label>
						<div class="col-lg-9">
							<img src="<?php echo "../".$info[3] ?>" class="img-thumbnail"></img>
						</div>
						<input type="hidden" value="<?php echo "../".$info[3];?>" name="image_old">
					</div>
				
				</div>
			</div>
		</div>
		
		<div class="col-lg-7">
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qllogo"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>
		</div>
</form>

</div>

<?php 
	}
?>