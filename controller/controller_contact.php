<?php 
	class controller_hot_product extends controller{
		public function __construct(){
			parent::__construct();
			include "view/view_contact.php";
		}
	}
	new controller_hot_product();
 ?>