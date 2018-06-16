<?php
//==============================================
if(isset($_POST['name']))
{
    $lienhe->set_edit($_POST['id'],$_POST['name'],$_POST['phone']);
}
if(!$lienhe -> get_edit($_GET['lh_id']))
    header("Location:index.php?page=qllienhe");
else
    if(mysql_num_rows($lienhe -> get_edit($_GET['lh_id'])) == 0)
        header("Location:index.php?page=qllienhe");
    else
    {
        $info = mysql_fetch_array($lienhe -> get_edit($_GET['lh_id']));
        //==============================================
        ?>
        <div class="container">
            <form class="form-horizontal" action="index.php?page=qllienhe&act=edit" method="post" enctype="multipart/form-data">

                <div class="row">
                    <div class="col-lg-2"></div>

                    <div class="col-md-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">Nhập thông tin</div>
                            <div class="panel-body">

                                <div class="form-group">
                                    <label class="col-lg-3 control-label" for="email">Tên <span class="text-danger"><strong>(*)</strong></span></label>
                                    <input type="hidden" name="id" value="<?php echo $info[0]; ?>">
                                    <div class="col-lg-9">
                                        <input type="text" name="name" id="name" placeholder="Nhập tên..." id="" class="form-control" value="<?php echo $info[1]; ?>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-3 control-label" for="email">Điện thoại <span class="text-danger"><strong>(*)</strong></span></label>
                                    <div class="col-lg-9">
                                        <input type="number" name="phone" id="phone" placeholder="Nhập điện thoại..." id="" class="form-control" value="<?php echo $info[2]; ?>">
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-body text-right">
                                <a href="?page=qlnhasanxuat"><button type="button" class="btn btn-success" name="">Trở về</button></a>
                                <button type="submit" class="btn btn-success" name="submit">Đồng ý</button>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-2"></div>
                </div>

            </form>

            <script>

                $('.btn-success').click(function() {
                    var ib_name = $('#name').val().trim();
                    var ib_short = $('#phone').val().trim();
                    if(ib_name.length < 1)
                    {
                        alert("Tên không được để trống.");
                        return false;
                    } else
                    if(ib_short.length < 1)
                    {
                        alert("Mô tả không được để trống.");
                        return false;
                    } else
                        return true;

                });
            </script>
        </div>
    <?php
    }
?>