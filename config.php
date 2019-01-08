<?php
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$database = "babyshop";
	$link = mysqli_connect($hostname,$username,$password,$database);
	mysqli_set_charset($link,"UTF8");
?>