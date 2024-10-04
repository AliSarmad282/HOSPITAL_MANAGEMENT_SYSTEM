<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "hospital";

$con = mysqli_connect($servername,$username,$password,$database);
 if($con){
 	echo "Connection Created Successfully.";
 }else{
 	echo "Connection is Die";
 }

?>