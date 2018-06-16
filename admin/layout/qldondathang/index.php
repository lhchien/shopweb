<div class="container">
<?php
//===========================================
    if(isset($_POST["slorder"]))
    {
        switch($_POST["slorder"])
        {
            case 1:$ds = $donhang->danh_sach_chua_giao(); break;
            case 2:$ds = $donhang->danh_sach_da_giao(); break;
            case "si":$ds = $donhang->danh_sach_si(); break;
            case "le":$ds = $donhang->danh_sach_le(); break;
            default:
                $ds = $donhang->danh_sach();
        }
    }
    else
        $ds = $donhang->danh_sach();
	if(isset($_GET['act']))
		if($_GET['act']=="edit")
		{
			$donhang->set_edit($_GET["sp_ddh_ma"]);
		}
	if(isset($_POST['delete']))
			$donhang->xoa($_GET['sp_ddh_ma']);
	if(isset($_POST['delete']))
	{
		$donhang -> xoa($_GET['kh_ma']);
		header("Location:index.php?page=qldondathang");
	}
//===========================================

if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qldondathang&act=delete&sp_ddh_ma=<?php echo $_GET['sp_ddh_ma'] ?>" method="POST">
		<div class="alert alert-block alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<h4>Cảnh báo xóa!</h4>
			<p>Bạn chắc chắn thao tác này?
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qldondathang"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Danh sách đơn đặt hàng</h2>

<div class="row">
	<div class="col-md-12 text-center">
		<form action="?page=qldondathang" method="POST" class="form-inline">
			<select class="form-control" name="slorder">
				<option>Tất cả</option>
				<option <?php if(isset($_POST["slorder"])) if($_POST["slorder"] == 2) echo "selected"; ?> value="2">Đã giao</option>
				<option <?php if(isset($_POST["slorder"])) if($_POST["slorder"] == 1) echo "selected"; ?>  value="1">Chưa giao</option>
				<option <?php if(isset($_POST["slorder"])) if($_POST["slorder"] == "si") echo "selected"; ?>  value="si">Mua Sỉ</option>
				<option <?php if(isset($_POST["slorder"])) if($_POST["slorder"] == "le") echo "selected"; ?>  value="le">Mua Lẻ</option>
			</select>
			<button type="submit" class="btn btn-md btn-success"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Lọc</button>
		</form>
	</div>
</div>

<br/>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên khách hàng</th>
			<th>Ngày đặt</th>
			<th>Điện thoại</th>
			<th>Giá hóa đơn</th>
			<th>Tình trạng</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
	
		<?php 
			//=======================================
			 $stt = 0; $i=1;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='7'> Danh sách rỗng </td> </tr>";
			else
			{
				while($row = mysql_fetch_array($ds)) { $stt ++; $dongia =0;
					$ds2 = $donhang ->danh_sach_chi_tiet($row[0]);
					$page= mysql_num_rows($ds);$i=1;
				while($row2 = mysql_fetch_array($ds2))
					$dongia += ($row2[3] * $row2[4]);
			//=======================================
		?>
	
        <tr class="page_<?php if($i%10 != 0) echo (floor($i/10) +1); else echo floor($i/10); ?>">
			<td><?php echo $stt; ?></td>
			<td><?php echo $row[5]; ?></td>
			<td><?php echo date("d/m/Y",$row[1]); ?></td>
			<td><?php echo $row[7]; ?></td>
			<td><?php if($dongia != 0) echo number_format($dongia); else echo "Mua sỉ"; ?></td>
			<td><?php if($row[4] ==1) echo "<font style='color:red';>Chưa giao</font>";
						else if($row[4] ==2) echo "Đã giao";?></td>
			<td class="text-center">
				<a href="?page=qldondathang&act=detail&sp_ddh_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-info" value="Xem"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Chi tiết</button>
				</a>
				<!--
				<a href="?page=qldondathang&act=inhoadon&sp_ddh_ma=<?php ?>">
					<button type="button" class="btn btn-xs btn-warning" value="Sửa"><span class="glyphicon glyphicon-print"></span>&nbsp;In HĐ</button>
				</a>
				-->
			<?php if($row[4] ==1) { ?>
				<a href="?page=qldondathang&act=edit&sp_ddh_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-primary" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Giao hàng</button>
				</a>
			<?php } ?>
				<a href="?page=qldondathang&act=delete&sp_ddh_ma=<?php echo $row[0]; ?>">
					<button type="button" class="btn btn-xs btn-danger" value="Xóa"><span class="glyphicon glyphicon-remove"></span>&nbsp;Xóa</button>
				</a>
			</td>
		</tr> 
		
		<?php $i++;
			}
		}
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