<?php 
	if(isset($_POST['name']))
	{
		if(isset($_FILES['image']))
			if($upload->upfile($_FILES['image'],"slideshow"))
			{
				unlink($_POST['image_old']);
				$slideshow->set_url($_POST['id'],$upload->get_url());
			}		
			$slideshow->set_edit($_POST['id'],$_POST['name'],$_POST['short'],$_POST['link']);
	}
	if(!$slideshow -> get_edit($_GET['ss_ma']))
			header("Location:index.php?page=qlslideshow");
	else
		if(mysql_num_rows($slideshow -> get_edit($_GET['ss_ma'])) == 0)
			header("Location:index.php?page=qlslideshow");
		else
		{
			$info = mysql_fetch_array($slideshow -> get_edit($_GET['ss_ma']));
?>
<div class="container">
<form class="form-horizontal" action="index.php?page=qlslideshow&act=edit" method="post" enctype="multipart/form-data">

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
						<label class="col-lg-3 control-label" for="short">Mô tả ảnh</label>
						<div class="col-lg-9">
							<textarea name="short" id="short" class="form-control" rows="4"><?php echo $info[2]; ?></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="slPriority">Độ ưu tiên </span></label>
						<div class="col-lg-9">
							<select class="form-control" name="slPriority" id="slPriority">
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==1) echo "selected";?> >1</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==2) echo "selected";?> >2</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==3) echo "selected";?> >3</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==4) echo "selected";?> >4</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==5) echo "selected";?> >5</option>
								<option <?php if(isset($_POST['slPriority'])) if($_POST['slPriority']==6) echo "selected";?> >6</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="image">Ảnh mới</label>
						<div class="col-lg-9">
							<input type="file" name="image" id="image" class="form-control">
							<i class="small"><b>Kích thước ảnh: 900x500</b></i>
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="name">Link hình ảnh <span class="text-danger"><strong></strong></span></label>
                        <div class="col-lg-9">
                            <input type="text" name="link" placeholder="link liên kết" id="link" class="form-control" value="<?php echo $info[7]; ?>">
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
							<img src="<?php echo "../".$info[4] ?>" class="img-thumbnail"></img>
						</div>
						<input type="hidden" value="<?php echo "../".$info[4];?>" name="image_old">
					</div>
				
				</div>
			</div>
		</div>
		
		<div class="col-lg-7">
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlslideshow"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>
		</div>
</form>

</div>

<?php 
	}
?>