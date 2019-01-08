<?php 
	class controller_category extends controller{
		public function __construct(){
			parent::__construct();
			//duyet cac ban ghi
			$arr = $this->model->fetch("select * from category");
			//load view
			include "view/view_category.php";
		}
	}
	new controller_category();
 ?>