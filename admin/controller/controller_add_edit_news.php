<?php 
	class controller_add_edit_news extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$form_action="index.php?controller=add_edit_news&act=do_edit&id=$id";
					//lay ban ghi co id truyen vao
					$arr = $this->model->fetch_one("select * from news where n_id=$id");
					//load view
					include "view/view_add_edit_news.php";
					break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$n_name = $_POST["n_name"];
					$n_description = $_POST["n_description"];
					$n_content = $_POST["n_content"];
					$n_hotnews = isset($_POST["n_hotnews"])?1:0;
					//update ban ghi co id truyen vao
					$this->model->execute("update news set n_name='$n_name',n_description='$n_description',n_content='$n_content',n_hotnews=$n_hotnews where n_id=$id");
					//update image
					$n_img = "";
					if(isset($_FILES["n_img"]["name"])){
						$n_img = time().$_FILES["n_img"]["name"];
						//upload
						move_uploaded_file($_FILES["n_img"]["tmp_name"], "../public/upload/news/$n_img");
						//update db
						$this->model->execute("update news set n_img='$n_img' where n_id=$id");
					}
					header("location:index.php?controller=news");	
					break;
				case "add":
					$form_action="index.php?controller=add_edit_news&act=do_add";
						include "view/view_add_edit_news.php";
					break;
				case "do_add":
					$n_name = $_POST["n_name"];
					$n_description = $_POST["n_description"];
					$n_content = $_POST["n_content"];
					$n_hotnews = isset($_POST["n_hotnews"])?1:0;
					//update image
					$n_img = "";
					if(isset($_FILES["n_img"]["name"])){
						$n_img = time().$_FILES["n_img"]["name"];
						//upload
						move_uploaded_file($_FILES["n_img"]["tmp_name"], "../public/upload/news/$n_img");
					}
					$this->model->execute("insert news(n_name,n_description,n_content,n_img,n_hotnews) values('$n_name','$n_description','$n_content','$n_img',$n_hotnews)");
					header("location:index.php?controller=news");
					break;
			}
		}
	}
	new controller_add_edit_news();
 ?>