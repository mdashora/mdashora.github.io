<!-- This is a php file connection to database is defined-->
<?php
$connect=mysql_connect("localhost","root","")or die("Error occured in connecting to the database");
mysql_select_db("news",$connect)or die("Database not selected");
?>