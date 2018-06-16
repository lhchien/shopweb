<?php
	if(isset($_POST['submit']))
	{
		if($_GET['cate']==1)
		{
			$thongtin->edit_gt($_POST['description']);
		}
		else if($_GET['cate']==2)
		{
			$thongtin->edit_lh($_POST['description']);
		}
		else if($_GET['cate']==3)
		{
			$thongtin->edit_hd($_POST['description']);
		}
		header("Location:?page=qlthongtin&act=edit&cate=".$_GET['cate']);
	}
	else
	{
		if($_GET['cate']==1)
		{
			$info = mysql_fetch_array($thongtin->nd_gioithieu());
		}
		else if($_GET['cate']==2)
		{
			$info = mysql_fetch_array($thongtin->nd_lienhe());
		}
		else if($_GET['cate']==3)
		{
			$info = mysql_fetch_array($thongtin->nd_huongdan());
		}
	}
?>
<div class="container">
<form class="form-horizontal" action="index.php?page=qlthongtin&act=edit&cate=<?php echo $_GET['cate']?>" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Nội dung trang <?php echo ".........";//if($cate==1) echo ...;  ?></div>
				<div class="panel-body">
					<textarea name="description" id="description" class="form-control"><?php echo $info[2]; ?></textarea>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<p class="pull-left">Ngày tạo: <?php echo date('d/m/Y') ?></p>
					<a href="?page=qlthongtin"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
		<div class="col-lg-2"></div>
	</div>

</form>
<script>
	CKEDITOR.replace('description');
</script>
</div>