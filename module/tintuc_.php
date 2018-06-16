<?php
    if(isset($_GET['show']))
    {
        $show =$_GET['show'];
        $end = $_GET['show'] *12;
        $from = $end -12;
    }
    else
    {
        $show = 1;
        $from = 0;
        $end = 12;
    }
	$tintuc = $main->tintuc($from,$end);
?>
					<div id="page-san-pham">
						<div class="well">
							<ol class="breadcrumb">
								<li><a href="main-index.html">Home</a></li>
								<li class="active">Tin Tức</li>
							</ol>

							<h4 class="pull-left">Tin Tức</h4>

							<div class="clearfix"></div>
							<hr>
								<?php
								$i=0;
                                    $num_page = mysql_num_rows($tintuc);
									while($row=mysql_fetch_array($tintuc)){ $i++;
								if($i==4) $i=1;
								if($i==1) echo"<div class='row'>";
								?>
									<div class="col-sm-4 news">
										<div class="well">
											<a href="?page=chi-tiet-tin-tuc&tin_ma=<?php echo $row[0]?>">
												<img src="<?php echo $row[4];?>" class="img-resposive">
                                                <p class="news-title"><?php echo $row[1];?></p>
											</a>
											<p class="news-info"><?php echo $row[2];?></p>
										</div>
									</div><!-- End col-sm-4 -->
								<?php
								if($i==3) echo "</div>
								<hr class='sp-hr'>";
									}
								if($i<3 && $i >0) echo "</div><hr class='sp-hr'>";
								?>

                            <nav class="text-center">
                                <ul class="pagination">
                                    <li>
                                        <!--<a href="#" aria-label="Previous">
                                          <span aria-hidden="true">&laquo;</span>
								     	 </a>-->
                                        <?php for($i=1;$i<=(floor($num_page/12))+1; $i++){ ?>
                                            <li id="page_<?php echo $i?>" <?php if($i == $show) echo "class='active'"?>> <a href="?<?php echo $_SERVER["QUERY_STRING"]?>&show=<?php echo $i?>" style="cursor:pointer"> <?php echo $i; ?> </a> </li>
                                       <?php } ?>
                                    <!--	<a href="#" aria-label="Next">
                                          <span aria-hidden="true">&raquo;</span>
								     	 </a> -->
                                    </li>
                                </ul>
                            </nav>
						</div><!-- End well -->
					</div><!--End #page-san-pham -->