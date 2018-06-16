<div class="container">
<?php
//===========================================
	if(isset($_POST['delete']))
	{
		$lienhe -> xoa($_GET['lh_id']);
		header("Location:index.php?page=qllienhe");
	}
//===========================================

if(isset($confirm) && $confirm=="yes"){ ?>
	<form action="?page=qllienhe&act=delete&lh_id=<?php echo $_GET['lh_id'] ?>" method="POST">
		<div class="alert alert-block alert-danger fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<h4>Cảnh báo xóa!</h4>
			<p>Bạn chắc chắn thao tác này?
				<button type="submit" name="delete" class="btn btn-danger">Xóa</button>
				<a href="?page=qllienhe"><button type="button" name="cancelDel" id="cancelDel" class="btn btn-default">Hủy</button></a>
			</p>
		</div>
	</form>
	<?php
} ?>
<h2 class="text-center text-info">Quản lý nội dung liên hệ</h2>
<div class="row">
	<div class="col-md-12 text-right">
		<a href="?page=qllienhe&act=add">
			<button type="button" class="btn btn-xs btn-success" value="Thêm mới"><span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm mới</button>
		</a>
	</div>
</div>
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên</th>
			<th>Điện thoại</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
		<?php 
			//=======================================
			$ds = $lienhe->danh_sach(); $stt = 0; $i =1;
			if(mysql_num_rows($ds) == 0)
				echo "<tr> <td colspan='4'> Danh sách rỗng </td> </tr>";
			else {
                $num_page = mysql_num_rows($ds);
                $i = 1;
                while ($row = mysql_fetch_array($ds)) {
                    $stt++;
                    //=======================================
                    ?>

                    <tr class="page_<?php //if ($i % 10 != 0) echo(floor($i / 10) + 1); else echo floor($i / 10); ?>">
                        <td><?php echo $stt; ?></td>
                        <td><?php echo $row[1]; ?></td>
                        <td><?php echo $row[2]; ?></td>
                        <td class="text-center">
                            <a href="?page=qllienhe&act=edit&lh_id=<?php echo $row[0]; ?>">
                                <button type="button" class="btn btn-xs btn-warning" value="Sửa"><span
                                        class="glyphicon glyphicon-pencil"></span>&nbsp; Sửa
                                </button>
                            </a>
                            <a href="?page=qllienhe&act=delete&lh_id=<?php echo $row[0]; ?>">
                                <button type="button" class="btn btn-xs btn-danger"><span
                                        class="glyphicon glyphicon-remove"></span>&nbsp;Xóa
                                </button>
                            </a>
                        </td>
                    </tr>
                    <?php
                   // ========================================
                }
            }
			//========================================
			?>
	</tbody>
</table>

    <script>
        /*$('*[class^="page"]').css('display','none');
        $('.page_1').css('display','table-row');
        $('#page_1').attr('class',"active");
        $('.pagination li').click(function() {
            var id = $(this).attr('id');
            $('*[id^="page"]').attr('class','');
            $(this).attr('class','active');
            $('*[class^="page"]').css('display','none');
            $('.'+id).css('display','table-row');
        });*/
    </script>
</div>