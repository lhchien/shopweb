<div class="container">
<?php
//===========================================
	if(isset($_POST['delete']))
	{
		$loai_sp -> xoa($_GET['lsp_ma']);
		unlink($_POST['image']);
		header("Location:index.php?page=qlloaisanpham");
	}
//===========================================


if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qlloaisanpham&act=delete&lsp_ma=<?php echo $_GET['lsp_ma']?>" method="POST">
		<div class="alert alert-block alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<h4>Cảnh báo xóa!</h4>
			<p>Bạn chắc chắn thao tác này?
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qlloaisanpham"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
			</p>
			<?php 
					$ds = $loai_sp->get_edit($_GET['lsp_ma']);
					$page= mysql_num_rows($ds);$i=1;
					while($row = mysql_fetch_array($ds))
					{
						echo "<input type='hidden' value='../".$row[4]."' name='image'>";
					}
				?>
		</div>
	</form>
	<?php
} ?>

<h2 class="text-center text-info">Danh sách loại sản phẩm</h2>
<div class="row">
	<div class="col-md-12 text-right">
		<a href="?page=qlloaisanpham&act=add">
			<button type="button" class="btn btn-xs btn-success" value="Thêm mới"><span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm mới</button>
		</a>
	</div>
</div>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên loại</th>
			<th>Mô tả</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
		<?php 
			//=======================================
			$ds = $loai_sp->danh_sach(); $stt = 0; $i =1;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='4'> Danh sách rỗng </td> </tr>";
			else
				while($row = mysql_fetch_array($ds)) { $stt ++;
			//=======================================
		?>
	
        <tr class="page_<?php if($i%10 != 0) echo (floor($i/10) +1); else echo floor($i/10); ?>">
			<td><?php echo $stt ?></td>
			<td><?php echo $row[1] ?></td>
			<td><?php echo $row[2] ?></td>
			<td class="text-center">

				<a href="?page=qlloaisanpham&act=edit&lsp_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-warning" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Sửa</button>
				</a>
				<a href="?page=qlloaisanpham&act=delete&lsp_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-danger" value="Xóa"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa</button>
				</a>
			</td>
		</tr> 
			<?php
			//========================================
			$i++;
				}
			//========================================
			?>
	</tbody>
</table>


    <div class="text-center"> 
 		<ul class="pagination">
    	<?php for($i=1;$i<=(floor($page/10))+1; $i++){ ?>
			<li id="page_<?php echo $i?>"> <a href="#" style="cursor:pointer"> <?php echo $i; ?> </a> </li>
		<?php } ?>
        </ul>
    </div>
	
	<script>
	$('*[class^="page"]').css('display','none');
	$('.page_1').css('display','table-row');
	$('#page_1').attr('class',"active");
	$('.pagination li').click(function() {	
		var id = $(this).attr('id');
		$('*[id^="page"]').attr('class','');
		$(this).attr('class','active');
		$('*[class^="page"]').css('display','none');
		$('.'+id).css('display','table-row');
	});
	</script>
</div>