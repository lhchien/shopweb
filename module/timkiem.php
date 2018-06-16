<?php
    if(isset($_GET['show']))
    {
        $show =$_GET['show'];
        $end = $_GET['show'] *20;
        $from = $end -20;
    }
    else
    {
        $show = 1;
        $from = 0;
        $end = 20;
    }
if(!$main->timkiem_($_GET['key'],$from,$end))
    echo "<script> window.location='index.php'</script>";
$num_page = mysql_num_rows($main->timkiem($_GET['key']));
$sp = $main->timkiem_($_GET['key'],$from,$end);

?>
<div id="page-san-pham">
						<div class="well">
							
                            <h4>Kết quả tìm kiếm.</h4>
							<hr>
							
								<?php
								if(mysql_num_rows($sp)==0)
								echo '<p style="align:center"> Không tìm thấy sản phẩm nào! </p>';
								else{
								$i=0;
									while($row=mysql_fetch_array($sp)){ $i++;
								if($i==5) $i=1;
								if($i==1) echo"<div class='row'>";
								?>
									<div class="col-sm-3">
										<div class="sp third-effect">
									    	<a href="?page=chi-tiet-san-pham&sp_ma=<?php echo $row[0];?>">
									    		<div class="well">
									    			<img src="<?php echo $row[8];?>" alt="..." class="img-resposive">
									    		<div class="mask"></div>
									    		</div>
									    		<p class="txt-title"><small><?php echo $row[1];?></small></p>
									    	</a>
									    		<p class="txt-price"><?php echo $row[2];?>đ</p>								    	
									    	<button class="btn btn-success btn-block"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ Hàng</button>
								   		</div><!-- End .sp -->
									</div><!-- End col-sm-3 -->
								<?php
								if($i==4) echo "</div> 
								<hr class='sp-hr'>";
									}
								if($i<4) echo "</div><hr class='sp-hr'>";
								?>

                                    <nav class="text-center">
                                        <ul class="pagination">
                                            <li>
                                                <!--<a href="#" aria-label="Previous">
                                                  <span aria-hidden="true">&laquo;</span>
								     	 </a>-->
                                                <?php for($i=1;$i<=(floor($num_page/20))+1; $i++){ ?>
                                            <li id="page_<?php echo $i?>" <?php if($i == $show) echo "class='active'"?>fo> <a href="?<?php echo $_SERVER["QUERY_STRING"]?>&show=<?php echo $i?>" style="cursor:pointer"> <?php echo $i; ?> </a> </li>
                                            <?php } ?>
                                            <!--	<a href="#" aria-label="Next">
                                                  <span aria-hidden="true">&raquo;</span>
								     	 </a> -->
                                            </li>
                                        </ul>
                                    </nav>
							<?php } ?>
						</div><!-- End well -->
					</div>