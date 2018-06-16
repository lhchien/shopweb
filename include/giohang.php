<?php 
$giatien =0;
if(isset($_SESSION['giohang']))
	foreach($_SESSION['giohang'] as $key => $value)
	{
        if($value == 999) continue;
		$sp_ma = str_replace("sp_","",$key);
		$sp = $main->ds_sanpham($sp_ma);
		$tien = mysql_fetch_array($sp);
		$giatien += $value * $tien[2];
	}
?>
                		<div  class="col-xs-12 col-sm-2 col-md-2" id="gio-hang">
		                	<a href="?page=gio-hang" class="pull-right">
		                        <table>
		                            <tr>
		                                <td align="right"><span class="text-gio-hang">GIỎ HÀNG</span></td>
		                                <td rowspan="2"><span class="glyphicon glyphicon-shopping-cart"></span></td>
		                            </tr>
		                            <tr>
		                                <td align="right"><span><small><?php echo number_format($giatien);?>đ</small></span></td>
		                            </tr>
		                        </table>        
		                   	</a>       
		                </div> <!-- End Giỏ Hàng -->
