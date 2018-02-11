<!-- This page is the header section of web-site-->
<!-- Including inc php for connecting to database-->
<?php
    include "includes/inc.php";
?>
<!DOCTYPE HTML">
<html>
<head>
<title>Article Inc</title>
<meta charset="utf-8"
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link type="text/css"rel="stylesheet"href="css/bootstrap.min.css"/>
<link type="text/css"rel="stylesheet"href="styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="blog-header">
    <div class="container-fluid">
        <h1 class="blog-title">Article Inc</h1>
         <p></p>
    </div>
</div>
    
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid" >
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="index.php">Home</a>
    </div>
    <div class="navbar-collapse collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-left">
            <?php
                $select_cat="SELECT * FROM categories";
                    $result=mysql_query($select_cat);
                        while($cat_row=mysql_fetch_array($result))
                            {
                                $cat_id=$cat_row['cat_id'];
                                $cat_title=$cat_row['cat_title'];                                      
                                echo "<li><a style='font-size:20px;' href='details.php?post=$cat_id'>$cat_title</a></li>";
                            }				
            ?>
        </ul>  
        <!-- Social media icons-->
        <ul class="nav navbar-nav navbar-right">          
            <li><a target="_blank" href="https://www.facebook.com/manishdashora"><i class="fa fa-facebook" style="font-size:30px;"></i></a></li>
            <li><a target="_blank" href="https://twitter.com"><i class="fa fa-twitter" style="font-size:30px;"></i></a></li>
            <li><a target="_blank" href="https://www.linkedin.com/in/manishdashora"><i class="fa fa-linkedin" style="font-size:30px;"></i></a></li>
            <li><a target="_blank" href="https://www.youtube.com/feed/trending"><i class="fa fa-youtube" style="font-size:30px;"></i></a></li>
        </ul>         
    </div>
  </div>
</nav>
</div>
	
</body>
</html>