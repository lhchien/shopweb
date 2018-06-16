<div class="container">
<?php
//===========================================
	if(isset($_POST['delete']))
	{
		$khachhang -> xoa($_GET['kh_ma']);
		header("Location:index.php?page=qlkhachhang");
	}
//===========================================


if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qlkhachhang&act=delete&kh_ma=<?php echo $_GET['kh_ma']; ?>" method="POST">
		<div class="alert alert-block alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<h4>Cảnh báo xóa!</h4>
			<p>Bạn chắc chắn thao tác này?
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qlkhachhang"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Danh sách tài khoản khách hàng</h2>

<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên đăng nhập</th>
			<th>Tên khách hàng</th>
			<th>Điện thoại</th>
			<th>Email</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
		<?php 
			//=======================================
			$ds = $khachhang->danh_sach(); $stt = 0;$i=1;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='6'> Danh sách rỗng </td> </tr>";
			else
				while($row = mysql_fetch_array($ds)) { $stt ++;
			//=======================================
		?>
	
        <tr class="page_<?php if($i%10 != 0) echo (floor($i/10) +1); else echo floor($i/10); ?>">
			<td><?php echo $stt; ?></td>
			<td><?php echo $row[0]; ?></td>
			<td><?php echo $row[2]; ?></td>
			<td><?php echo $row[5]; ?></td>
			<td><?php echo $row[6]; ?></td>
			<td class="text-center">
				<a href="?page=qlkhachhang&act=detail&kh_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-info" value="Xem"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Chi tiết</button>
				</a>
				<a href="?page=qlkhachhang&act=delete&kh_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-danger" value="Xóa"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa</button>
				</a>
			</td>
		</tr> 
			<?php
			//========================================
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