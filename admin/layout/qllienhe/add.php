<?php
//==================================================
if(isset($_POST['name']))
    {
        $lienhe->them($_POST['name'],$_POST['phone'],1);
        header("Location:index.php?page=qllienhe");
    }
//===================================================
?>


<div class="container">
<form class="form-horizontal" action="index.php?page=qllienhe&act=add" method="post" enctype="multipart/form-data">

	<div class="row">
		<div class="col-lg-2"></div>
		
		<div class="col-md-8">
			<div class="panel panel-default">
				<div class="panel-heading">Liên hệ</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-lg-3 control-label" for="email">Tên <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="text" name="name" id="name" placeholder="Nhập tên..." id="" class="form-control" value="<?php ?>">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label" for="email">Điện thoại <span class="text-danger"><strong>(*)</strong></span></label>
						<div class="col-lg-9">
							<input type="number" name="phone" id="phone" placeholder="Nhập điện thoại..." id="" class="form-control" value="<?php ?>">
						</div>
					</div>
					
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body text-right">
					<a href="?page=qllienhe"><button type="button" class="btn btn-success" name="">Trở về</button></a>
					<button type="submit" class="btn btn-success" name="submit" id="submit">Đồng ý</button>
				</div>
			</div>

		</div>
		
		<div class="col-lg-2"></div>
	</div>

</form>

<script>
    $('#submit').click(function() {
        var ib_name = $('#name').val().trim();
        var ib_short = $('#phone').val().trim();
        if(ib_name.length < 1)
        {
            alert("Tên không được để trống.");
            return false;
        } else
        if(ib_short.length < 1)
        {
            alert("Điện thoại không được để trống.");
            return false;
        } else
            return true;

    });
</script>
</div>
