<?php 
	class controller_hot_product extends controller{
		public function __construct(){
			parent::__construct();
			$arr = $this->model->fetch("select * from product where p_hotproduct=1 order by product_id desc");
			include "view/view_hot_product.php";
		}
	}
	new controller_hot_product();
 ?>