<?php 
	class controller_add_edit_producer extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "add":
					$form_action="index.php?controller=add_edit_producer&act=do_add";
					//load view
					include "view/view_add_edit_producer.php";
					break;
				case "do_add":
					$email=isset($_POST['email'])?$_POST['email']:"";
					$name=isset($_POST['name'])?$_POST['name']:"";
					$phone=isset($_POST['phone'])?$_POST['phone']:"";
					$address=isset($_POST['address'])?$_POST['address']:"";
					$this->model->execute("insert into producer(email,name,phone,address) values('$email','$name','$phone','$address')");
						//di chuyen den trang can chi dinh
						header("location:index.php?controller=producer");
					break;
				case "edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//tao bien $form_action de luu action cua form
					$form_action="index.php?controller=add_edit_producer&act=do_edit&id=$id";
					//lay ban ghi co id truyen vao tren url
					$arr = $this->model->fetch_one("select * from producer where producer_id=$id");
					//load view
					include "view/view_add_edit_producer.php";
					break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$email=isset($_POST['email'])?$_POST['email']:"";
					$name=isset($_POST['name'])?$_POST['name']:"";
					$phone=isset($_POST['phone'])?$_POST['phone']:"";
					$address=isset($_POST['address'])?$_POST['address']:"";
					$this->model->execute("update producer set email='$email',name='$name',phone='$phone',address='$address' where producer_id='$id'");
					//di chuyen den trang can chi dinh
					header("location:index.php?controller=producer");
					break;
				
			}
		}
	} 
	new controller_add_edit_producer();
 ?>