<?php
function redirect($url = '', $second=0){
	if( $url === '' ){
		$url = 'index.php';
	}
	echo '<meta http-equiv="refresh" content="'.$second.';URL='.$url.'"/>';
	exit();
}
//In thông báo thành công
function show_success($message_success=''){
	if(!empty($message_success) ){?>
		<div class="alert alert-success fade in alertStyle">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<!--<img src="<?php //echo DOMAIN.'images/success.png'; ?>"></img>-->&nbsp;<strong>Thông báo! </strong><?php echo $message_success;?>
		</div>
		<?php
	}
}
//Combobox loai san pham
function showLSPList_add($con) {
    $query = "select lsp_ma, lsp_ten from loaisanpham";
    $result = mysql_query($query);
    echo "<select name='slLoaiSanPham' class='form-control' id='slLoaiSanPham'>
			<option value='0'>Tất cả</option>";
    while ($row = mysql_fetch_array($result)) {
		echo "<option value='" . $row['lsp_ma'] . "'>" . $row['lsp_ten'] . "</option>";
    }
    echo "</select>";
}
//Combobox loai san pham
function showNSXList_add($con) {
    $query = "select nsx_ma, nsx_ten from nhasanxuat";
    $result = mysql_query($query);
    echo "<select name='slNhaSanXuat' class='form-control' id='slNhaSanXuat'>
			<option value='0'>Chọn Nhà Sản Xuất</option>";
    while ($row = mysql_fetch_array($result)) {
		echo "<option value='" . $row['nsx_ma'] . "'>" . $row['nsx_ten'] . "</option>";
    }
    echo "</select>";
}