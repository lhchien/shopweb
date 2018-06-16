<div id="slide-image">
                    	                      	
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
							<?php 
								$slide = $main->slideshow();
								$count = mysql_num_rows($slide);
								for($i=1 ; $i<= $count; $i++) {
							?>
                            <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i;?>" class="active"></li>
                            <?php
								}
							?>
							</ol>
                            
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
							<?php
								$k=0;
								while($row = mysql_fetch_array($slide))
								{ $k++;
							?>
                            <div class="item <?php if($k==1) echo "active"?>">
                            <a href="<?php echo $row[7]?>" >
                              <img src="<?php echo $row[4]?>"alt="..." class="img-responsive">
                              <div class="carousel-caption">
                              	<hr>
                                <h2><?php echo $row['2']?></h2>
                                <hr>
                              </div>
                            </a>
                            </div>
                            <?php
								}
							?>
                            </div>
                            
                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                            </a>
                        </div>
                	</div>