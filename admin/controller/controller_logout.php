<?php 
	class controller_logout{
		public function __construct(){
			//huy session $_SESSION["c_username"]
			unset($_SESSION["admin"]);
			header("location:index.php");
		}
	}
	new controller_logout();
 ?>