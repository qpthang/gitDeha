<?php
	class controller_order extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET['act'])?$_GET['act']:"";
			switch ($act) {
				case 'choduyet':
					$data=$this->model->fetch("select * from `order` where status=0 order by order_id desc limit 0,20");
					include "view/view_order.php";
					# code...
					break;
				
				case 'dahuy':
					$data=$this->model->fetch("select * from `order` where status=1 order by order_id desc limit 0,20");
					include "view/view_order.php";
					# code...
					break;
				
				case 'dagiao':
					$data=$this->model->fetch("select * from `order` where status=2 order by order_id desc limit 0,20");
					include "view/view_order.php";
					# code...
					break;
				case "giao":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//update status
					$this->model->execute("update `order` set status=2 where order_id=$id");					
					header("location:index.php?controller=order&act=choduyet");
				break;	
				case "huy":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//update status
					$this->model->execute("update `order` set status=1 where order_id=$id");					
					header("location:index.php?controller=order&act=choduyet");
				break;

				
				default:
					# code...
					break;
			}
		}
	}
	new controller_order();
?>