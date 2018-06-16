<?php
    if(!$ds = $main->chitietdonhang($_GET['dh_ma']))
        echo "<script> window.location='index.php'</script>";
    $ds = $main->chitietdonhang($_GET['dh_ma']);
    $giatien =0;
    $so_dh =0;
    $ngay_dat =0;
?>
        <div id="page-san-pham">
            <div class="well">
                <div id="ds-don-hang">
                    <ol class="breadcrumb">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="?page=danh-sach-don-hang">Danh sách đơn hàng</a></li>
                        <li class="active">Chi tiết đơn hàng</li>
                    </ol>
                    <h4>Chi tiết đơn hàng</h4>
                    <hr>
                    <div id="page-gio-hang" class="table-responsive">
                        <table class="table text-center table-hover">
                            <thead>
                            <tr>
                                <td></td>
                                <td>Sản phẩm</td>
                                <td>Giá</td>
                                <td>Số lượng</td>
                                <td>Thành tiền</td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            while($row=mysql_fetch_array($ds)){
                                $info = mysql_fetch_array($main->ds_sanpham($row[1]));
                                if($row[3] !=0 )
                                    $giatien += $row[3] * $info[2];
                                $info_ = mysql_fetch_array($main->thongtindonhang($row[2]));
                                $ngay_dat = $info_[1];
                                $so_dh = $row[2];
                            ?>
                            <tr>
                                <td>
                                    <span class="text-uppercase"><b><?php echo $info[1];?></b></span></br>
                                </td>
                                <td><img src="<?php echo $info[8]?>" class="img-thumbnail img-resposive"></td>
                                <td><?php echo number_format($info[2]);?> đ</td>
                                <td><?php if($row[3] == 0 ) echo "Mua sỉ"; else  echo $row[3];?></td>
                                <td><?php if($row[3]==0 ) echo "Liên hệ"; else echo number_format($row[3] * $info[2])."đ"?> ;</td>
                            </tr>
                            <?php } ?>

                            <tr>
                                <td colspan="5" class="sum"><span><b>Tổng Cộng:</b></span> <?php echo number_format($giatien);?></td>
                            </tr>
                            <tr>
                                <td colspan="5"><b><i>Đơn hàng số <?php echo $so_dh;?> / ngày: <?php echo date('d/m/Y',$ngay_dat);?></i></b></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div><!-- End well -->
        </div><!--End #page-san-pham -->
