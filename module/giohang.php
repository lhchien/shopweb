<?php
include_once "class/giohang.php";
$giohang = new giohang;
	if(isset($_POST['giohang']))
	{
		$giohang->them_sp($_POST['giohang']);
		echo "
		<script>
		window.location='?".$_SERVER["QUERY_STRING"]."';
		</script>";
	}
	if(isset($_GET['act']))
	{
		if($_GET['act']=='del')
		{
			foreach($_SESSION['giohang'] as $key=> $value)
			$_SESSION['giohang'][$key] =0;
            echo ' <div id="dialog" title="Thông báo" style="display: none">

                    <p>Xóa giỏ hàng thành công.</p>

                </div>';
            echo ' <script>

                    $(function() {

                        $( "#dialog" ).dialog({

                            modal: true,

                            buttons: {

                                Ok: function() {

                                    $( this ).dialog( "close" );
                                     window.location="?page=gio-hang";

                                }

                            }

                        });

                    });

                </script>


               ';
		}
		else if($_GET['act']=='edit')
		{
			$giohang->them_sl($_GET['sp_ma'],$_GET['sl']);
            echo "
            <script>
            window.location='?page=gio-hang';
            </script>";
		}

	}
?>