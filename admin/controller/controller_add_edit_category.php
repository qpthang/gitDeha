<?php 
	class controller_add_edit_category extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
					//lay ban ghi co id truyen vao
					$arr = $this->model->fetch_one("select * from category where category_id=$id");
					//tao bien $form_action de dieu phoi action tu the form
					$form_action="index.php?controller=add_edit_category&act=do_edit&id=$id";
					//load view
					include "view/view_add_edit_category.php";
				break;
				case "do_edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
					$c_name = $_POST["c_name"];
					//update c_name
					$this->model->execute("update category set c_name='$c_name' where category_id=$id");					
					header("location:index.php?controller=category");
				break;
				case "add":
					$form_action = "index.php?controller=add_edit_category&act=do_add";
					//load view
					include "view/view_add_edit_category.php";
				break;
				case "do_add":
					$c_name = $_POST["c_name"];
					//insert ban ghi
					$this->model->execute("insert into category(c_name) values('$c_name')");
					header("location:index.php?controller=category");
				break;
			}
		}
	}
	new controller_add_edit_category();
 ?>