<?php 
	class controller_add_edit_user extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "add":
					$form_action="index.php?controller=add_edit_user&act=do_add";
					//load view
					include "view/view_add_edit_user.php";
					break;
				case "do_add":
					$email=isset($_POST['email'])?$_POST['email']:"";
					$password=md5(isset($_POST['password'])?$_POST['password']:"");
					$name=isset($_POST['fullname'])?$_POST['fullname']:"";
					$phone=isset($_POST['phonenumber'])?$_POST['phonenumber']:"";
					$address=isset($_POST['address'])?$_POST['address']:"";
					$this->model->execute("insert into admin(email,password,fullname,phonenumber,address) values('$email','$password','$name','$phone','$address')");
						//di chuyen den trang can chi dinh
						header("location:index.php?controller=user");
					break;
				case "edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//tao bien $form_action de luu action cua form
					$form_action="index.php?controller=add_edit_user&act=do_edit&id=$id";
					//lay ban ghi co id truyen vao tren url
					$arr = $this->model->fetch_one("select * from admin where admin_id=$id");
					//load view
					include "view/view_add_edit_user.php";
					break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$password=md5(isset($_POST['password'])?$_POST['password']:"");
					$name=isset($_POST['fullname'])?$_POST['fullname']:"";
					$phone=isset($_POST['phonenumber'])?$_POST['phonenumber']:"";
					$address=isset($_POST['address'])?$_POST['address']:"";
					$this->model->execute("update admin set password='$password',fullname='$name',phonenumber='$phone',address='$address' where admin_id='$id'");
					//di chuyen den trang can chi dinh
					header("location:index.php?controller=user");
					break;
				
			}
		}
	}
	new controller_add_edit_user();
 ?>