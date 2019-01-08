<?php 
	class controller_login extends controller{
		public function __construct(){
			//goi ham __construct cua class controller
			parent::__construct();
			//----------
			if($_SERVER["REQUEST_METHOD"] == "POST"){
				$email = $_POST["email"];
				$password = md5($_POST["password"]);
				$arr = $this->model->fetch_one("select email,password from admin where email='$email'");
				if(isset($arr->email)){
					//kiem tra password
					if($arr->password == $password){
						//dang nhap thanh cong
						$_SESSION["admin"] = $email;
					}
				}else{
					echo "not ok";
				}
				header("location:index.php");
			}
			//----------
			//load view
			include "view/view_login.php";
		}
	}
	new controller_login();
 ?>