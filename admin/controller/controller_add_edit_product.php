<?php 
	class controller_add_edit_product extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$arr = $this->model->fetch_one("select * from product where product_id=$id");
					$form_action = "index.php?controller=add_edit_product&act=do_edit&id=$id";
					include "view/view_add_edit_product.php";
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$p_name = $_POST["p_name"];
					$p_hotproduct = isset($_POST["p_hotproduct"])?1:0;
					$p_description = $_POST["p_description"];
					$p_content = $_POST["p_content"];
					$p_img = "";
					$p_price = $_POST["p_price"];
					$fk_category_id = $_POST["fk_category_id"];
					$fk_producer_id = $_POST["fk_producer_id"];
					$this->model->execute("update product set p_name='$p_name',p_hotproduct=$p_hotproduct,p_description='$p_description',p_content='$p_content',p_price=$p_price,fk_category_id=$fk_category_id,fk_producer_id=$fk_producer_id where product_id=$id");
					///kiem tra, neu user chon anh thi thuc hien upload anh
					if($_FILES["p_img"]["name"] != ""){
						//----------
						//xoa anh cu
						//lay 1 ban ghi
						$old_img = $this->model->fetch_one("select p_img from product where product_id=$id");
						if($old_img->p_img != "" && file_exists("../public/upload/product/".$old_img->p_img))
							//xoa file
							unlink("../public/upload/product/".$old_img->p_img);
						//----------
						//thuc hien update anh
						$p_img = $_FILES["p_img"]["name"];
						$p_img = time().$_FILES["p_img"]["name"];
						move_uploaded_file($_FILES["p_img"]["tmp_name"], "../public/upload/product/$p_img");
						//update ban ghi
						$this->model->execute("update product set p_img='$p_img' where product_id=$id");
					}
					header("location:index.php?controller=product");
				break;
				case "add":
					$form_action = "index.php?controller=add_edit_product&act=do_add";
					include "view/view_add_edit_product.php";
				break;
				case "do_add":
					$p_name = $_POST["p_name"];
					$p_hotproduct = isset($_POST["p_hotproduct"])?1:0;
					$p_description = $_POST["p_description"];
					$p_content = $_POST["p_content"];
					$p_img = "";
					$p_price = $_POST["p_price"];
					$fk_category_id = $_POST["fk_category_id"];
					$fk_producer_id = $_POST["fk_producer_id"];
					if($_FILES["p_img"]["name"] != ""){
						$p_img = time().$_FILES["p_img"]["name"];
						move_uploaded_file($_FILES["p_img"]["tmp_name"], "../public/upload/product/$p_img");
					}
					$this->model->execute("insert into product(p_name,p_description,p_content,p_img,p_hotproduct,p_price,fk_category_id,fk_producer_id) values('$p_name','$p_description','$p_content','$p_img',$p_hotproduct,$p_price,$fk_category_id,$fk_producer_id)");
					header("location:index.php?controller=product");
				break;
			}
		}
	}
	new controller_add_edit_product();
 ?>