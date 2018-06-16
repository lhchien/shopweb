<div class="container">
<?php

//===========================================
	if(isset($_POST['delete']))
	{
		echo $_POST['image'];
		$doitac -> xoa($_GET['ss_ma']);
		unlink($_POST['image']);
		header("Location:index.php?page=qldoitac");
	}
//===========================================

if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qldoitac&act=delete&ss_ma=<?php echo $_GET["ss_ma"]; ?>" method="POST">
		<div class="alert alert-block alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<h4>Cảnh báo xóa!</h4>
			<p>Bạn chắc chắn thao tác này?
				<?php 
					$ds = $doitac->get_edit($_GET['ss_ma']);
					$page = mysql_num_rows($ds); $i=1;
					while($row = mysql_fetch_array($ds))
					{
						echo "<input type='hidden' value='../".$row[2]."' name='image'>";
					}
				?>
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qldoitac"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Danh sách các đối tác</h2>
<div class="row">
	<div class="col-md-12 text-right">
		<a href="?page=qldoitac&act=add">
			<button type="button" class="btn btn-xs btn-success" value="Thêm mới"><span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm mới</button>
		</a>
	</div>
</div>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên đối tác</th>
			<th>Hình ảnh</th>
			<th>Liên kết</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
	
		<?php 
			//=======================================
			$ds = $doitac->danh_sach(); $stt = 0; $i=1;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='6'> Danh sách rỗng </td> </tr>";
			else
				while($row = mysql_fetch_array($ds)) { $stt ++;
			//=======================================
		?>
	
        <tr class="page_<?php if($i%10 != 0) echo (floor($i/10) +1); else echo floor($i/10); ?>">
			<td><?php echo $stt; ?></td>
			<td><?php echo $row[1]; ?></td>
			<td class="text-center"><img src="<?php echo "../".$row[2]; ?>" class="img-thumbnail img-fix-size";/></td>
			<td><a href="<?php echo $row[3]; ?>" target="_blank"><?php echo $row[3]; ?></a></td>
			<td class="text-center">
				<a href="?page=qldoitac&act=edit&ss_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-primary" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Sửa</button>
				</a>
				<a href="?page=qldoitac&act=delete&ss_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-danger" value="Xóa"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa</button>
				</a>
			</td>
		</tr> 
		<?php
			$i++;
			}
		?>
		
	</tbody>
</table>

</div>