<!-- This page is the main body of web-site-->
<!-- php query to get posts from database-->
<?php
    $post_title = array();
    $post_id = array();
    $post_image = array();
    $post_counter=0;
    $select_posts="SELECT * FROM posts ORDER BY post_id LIMIT 0,3";
    $post_query=mysql_query($select_posts);
                                        
    while($query_row=mysql_fetch_array($post_query))
    {      
	$post_id[$post_counter]=$query_row['post_id'];
	$post_title[$post_counter]=$query_row['post_title'];
	$post_image[$post_counter]=$query_row['post_image'];
	$post_counter++;
    }					
 ?>                                       


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/<?php echo $post_image[0];  ?> "alt="Image" >
        <div class="carousel-caption">
          <p style="font-size: 25"><a href="details.php?post=<?php echo $post_id[0];  ?>"><?php echo $post_title[0];  ?></a></p>
        </div>
      </div>

      <div class="item">
        <img src="images/<?php echo $post_image[1];  ?>" alt="Image">
        <div class="carousel-caption">
            <p style="font-size: 25"><a href="details.php?post=<?php echo $post_id[1];  ?>"><?php echo $post_title[1];  ?></a></p>
        </div>
      </div>
        
      <div class="item">
        <img src="images/<?php echo $post_image[2];  ?>" alt="Image">
        <div class="carousel-caption">
            <p style="font-size: 25"><a href="details.php?post=<?php echo $post_id[2];  ?>"><?php echo $post_title[2];  ?></a></p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> 
    