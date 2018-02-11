<!-- This page is the comment form of web-site-->
<!DOCTYPE HTML">
<html lang="eng">
<head>
<title>Article Inc</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link type="text/css"rel="stylesheet"href="css/bootstrap.min.css"/>
<link type="text/css"rel="stylesheet"href="styles.css"/>
</head>
<body>
<!-- including header page-->    
<?php
include 'header.php';
?>
<div class="container">
    <div class="row">
        <div class="col-sm-1 blog-main">
        </div><!--End of col-->
        <div class="col-sm-10 blog-main">                          
        <!--Content area starts here-->
        <?php
            if(isset($_GET['post']))
                {
                    $post_id=$_GET['post'];
                    $select_posts="SELECT * FROM posts WHERE post_id='$post_id'";
                    $post_query=mysql_query($select_posts);
                    //Hardcoded for demo purpose.
                    if($post_id==1)
                        {
                            $post_video = 'Hme5BhT52_U';
                        }
                    else if($post_id==2)
                    {
                        $post_video = 'y8sj-PWgaTw';
                    }
                    else if($post_id==3)
                    {
                        $post_video = 'ChlgTe9Kdko';
                    }
                    while($query_row=mysql_fetch_array($post_query))
                    {
                            $post_title=$query_row['post_title'];
                            $post_date=$query_row['post_date'];
                            $post_author=$query_row['post_author'];
                            $post_keywords=$query_row['post_keywords'];
                            $post_image=$query_row['post_image'];
                            $post_content=$query_row['post_content'];
                            
                    }
					
		}
        ?>
          
        <div class="blog-post">                  
            <h1 class = "blog-title" ><?php echo $post_title; ?></h1>
            <h5><span class="glyphicon glyphicon-time blog-post-meta"></span><span class="blog-post-meta " > Posted By: <?php echo $post_author;  ?> on <?php echo $post_date;  ?></span> </h5>
            <div class='img-rounded' style='margin-right:10px;'><img src='images/<?php echo $post_image; ?>'width='850'height='350'></div>
            <p class = "blog-description" ><?php echo $post_content; ?></p>
            <h5><span class="blog-post-meta"> In this article: <?php echo $post_keywords; ?></span></h5><br>
            <br><br>
        </div>
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src='//www.youtube.com/embed/<?php echo $post_video; ?>'></iframe>
        </div>
        <!--End of content area-->
        </div><!--End of col-->
        <div class="col-sm-1 blog-main">
	</div><!--End of col-->
    </div><!--End of row-->
                
    <div class="row">
        <div class="col-sm-1 blog-main">
        </div>
        <div class="col-sm-10">
            <!-- including comment page--> 
            <div id="comments">
                <?php
                include 'comment_form.php';
                ?>
            </div>
        </div>
                     
        <div class="col-sm-1 blog-main">
                
        </div>                     
    </div>

</div><!--End of contaier-->
<!-- including footer page--> 
<?php
include 'footer.php';
?>
</body>
</html>