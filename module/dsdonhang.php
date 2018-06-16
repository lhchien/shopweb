<?php
    if(!$main->dsdonhang($_SESSION["user"]["kh_tendangnhap"]))
        echo "<script> window.location='index.php'</script>";
    $ds = $main->dsdonhang($_SESSION["user"]["kh_tendangnhap"]);
?>
        <div id="page-san-pham">
            <div class="well">
                <div id="ds-don-hang">
                    <ol class="breadcrumb">
                        <li><a href="index.php">Home</a></li>
                        <li class="active">Danh sách đơn hàng</li>
                    </ol>
                    <h4>Danh sách đơn hàng</h4>
                    <hr>
                    <table class="table text-center table-hover">
                        <thead style="font-weight:bold">
                        <tr>
                            <td>STT</td>
                            <td>Ngày Đặt</td>
                            <td>Trạng Thái</td>
                            <td></td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $stt =0;
                            while($row = mysql_fetch_array($ds)) { $stt++;
                                ?>
                                <tr>
                                    <td><?php echo $stt;?></td>
                                    <td><?php echo date("d/m/Y",$row[1]);?></td>
                                    <?php if($row[4] ==1 ) { ?>
                                        <td style="color:#BE2105">Chưa giao</td>
                                    <?php } else if($row[4] ==2){?>
                                        <td style="color:#9F9F9F">Đã giao</td>
                                    <?php }?>
                                    <td><a href="?page=chi-tiet-don-hang&dh_ma=<?php echo $row[0];?>">
                                            <button type="button" class="btn btn-info"><span
                                                    class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Chi
                                                tiết đơn hàng
                                            </button>
                                        </a></td>
                                </tr>
                            <?php
                            }
                        ?>
                        </tbody>
                    </table>
                </div>

            </div><!-- End well -->
        </div><!--End #page-san-pham -->
