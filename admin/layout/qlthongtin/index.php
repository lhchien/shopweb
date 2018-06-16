<div class="container">

<h2 class="text-center text-info">Quản lý nội dung các trang thông tin</h2>
<!--<div class="row">
	<div class="col-md-12 text-right">
		<a href="?page=qlthongtin&act=add">
			<button type="button" class="btn btn-xs btn-success" value="Thêm mới"><span class="glyphicon glyphicon-plus"></span>&nbsp;Thêm mới</button>
		</a>
	</div>
</div>-->
<table class="table table-striped table-hover table-bordered">
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên loại</th>
			<th class="text-center">Tùy chọn</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><?php echo 1 ?></td>
			<td><?php echo "Trang Giới thiệu";?></td>
			<td class="text-center">
				<a href="?page=qlthongtin&act=edit&cate=1">
					<button type="button" class="btn btn-xs btn-warning" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Chỉnh Sửa</button>
				</a>
			</td>
		</tr> 
		
		<tr>
			<td><?php echo 2 ?></td>
			<td><?php echo "Trang Liên Hệ";?></td>
			<td class="text-center">
				<a href="?page=qlthongtin&act=edit&cate=2">
					<button type="button" class="btn btn-xs btn-warning" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Chỉnh Sửa</button>
				</a>
			</td>
		</tr> 
		<tr>
			<td><?php echo 3 ?></td>
			<td><?php echo "Trang Hướng Dẫn";?></td>
			<td class="text-center">
				<a href="?page=qlthongtin&act=edit&cate=3">
					<button type="button" class="btn btn-xs btn-warning" value="Sửa"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Chỉnh Sửa</button>
				</a>
			</td>
		</tr> 
	</tbody>
</table>

</div>