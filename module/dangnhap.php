<?php
	if(isset($_POST["submit"]))
	{
		if(isset($_POST["email"]))
		{
			$login = $main->dangnhap($_POST["email"], $_POST["pass"]);
			if($login)
			{
				if(mysql_num_rows($login)>0)
					{
						$info = mysql_fetch_array($login);
					foreach ($info as $title => $value)
						$_SESSION['user'][$title]= $value;
					echo "<script> window.location='index.php'; </script>";
					}
                echo ' <div id="dialog" title="Thông báo" style="display:none">

                    <p>Email hoặc mật khẩu không đúng.</p>

                </div>';
                echo ' <script>

                    $(function() {

                        $( "#dialog" ).dialog({

                            modal: true,

                            buttons: {

                                Ok: function() {

                                    $( this ).dialog( "close" );

                                }

                            }

                        });

                    });

                </script>';
			}
		}
	}
?>