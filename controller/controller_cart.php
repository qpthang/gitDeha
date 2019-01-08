<?php ob_start();
	class controller_cart extends controller{
		public function __construct(){
			parent::__construct();
			//khởi tạo giỏ hàng
			if(!isset($_SESSION['cart'])) $_SESSION['cart'] = array();
			//=================
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "add":
					$product_id = isset($_GET["id"])?$_GET["id"]:0;
					$this->cart_add($product_id);
					echo "<meta http-equiv='refresh' content='0; URL=index.php?controller=cart'>";
					break;
				case "delete":
					$product_id = isset($_GET["id"])?$_GET["id"]:0;
					$this->cart_delete($product_id);
					echo "<meta http-equiv='refresh' content='0; URL=index.php?controller=cart'>";
					break;
				case "destroy":
					$this->cart_destroy();
					echo "<meta http-equiv='refresh' content='0; URL=index.php?controller=cart'>";
					break;
				case "do_bill":
				
					if($_SERVER["REQUEST_METHOD"] == "POST"){
						$ten = $_POST["ten"];
						$diachi = $_POST["diachi"];
						$sdt = $_POST["sdt"];
						$now = getdate();
						$ngaymua=$now["year"] . "-" . $now["mon"] . "-" . $now["mday"];
						$httt = $_POST["httt"];
						//insert thong tin vao bang hoa don: order
						$thanhtien = $this->cart_total();
						$this->model->execute("insert into `order`(order_id,ngaymua,thanhtien,ten,sdt,diachi,status,httt) values(null,'$ngaymua',$thanhtien,'$ten','$sdt','$diachi',0,$httt)");
						//lay id order vua moi insert vao
						$arr_order_id = $this->model->get_insert_id("order_id","`order`");
						$order_id = $arr_order_id["order_id"];
						$total_cart_nl=0;
						//insert thong tin vao bang chi tiet hoa don: order_detail
						foreach($_SESSION["cart"] as $cart){
						$p_id = $cart["product_id"];
						$number = $cart["number"];
						$total_cart_nl=$this->cart_total();
						$this->model->execute("insert into `order_detail`(order_detail_id,order_id,product_id,o_number) values(null,$order_id,$p_id,$number)");	
						}
						//xoa toan bo gio hang
						$this->cart_destroy();
						function url(){
							return "http://localhost/babyshop";
						}
						if($httt==0){
							?>
							<script>
								alert("Thông tin đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian gần nhất !");
							</script>
							<?php
							echo "<meta http-equiv='refresh' content='0; URL=index.php?controller=cart'>";
						}else{
							header("location:https://www.nganluong.vn/button_payment.php?receiver=thanhtb170@gmail.com&product_name=$order_id&price=".$total_cart_nl."&return_url=".url()."&comments=true");

						}
						
					}
					break;
			}				
			//load view
			include "view/view_cart.php";
			//=================
		}

		public function cart_add($product_id){
		    if(isset($_SESSION['cart'][$product_id])){
		        //nếu đã có sp trong giỏ hàng thì số lượng lên 1
		        $_SESSION['cart'][$product_id]['number']++;
		    } else {
		        //lấy thông tin sản phẩm từ CSDL và lưu vào giỏ hàng
		        //$product = get_a_record($pk_product_id);
		        $product = $this->model->fetch_one("select * from product where product_id=$product_id");
		        
		        $_SESSION['cart'][$product_id] = array(
		            'product_id' => $product_id,
		            'p_name' => $product->p_name,
		            'p_img' => $product->p_img,
		            'number' => 1,
		            'p_price' => $product->p_price
		        );
		    }
		}
		/**
		 * Cập nhật số lượng sản phẩm
		 * @param int
		 * @param int
		 */
		public function cart_update($product_id, $number){
		    if($number==0){
		        //xóa sp ra khỏi giỏ hàng
		        unset($_SESSION['cart'][$product_id]);
		    } else {
		        $_SESSION['cart'][$product_id]['number'] = $number;
		    }
		}
		/**
		 * Xóa sản phẩm ra khỏi giỏ hàng
		 * @param int
		 */
		public function cart_delete($product_id){
		    unset($_SESSION['cart'][$product_id]);
		}
		/**
		 * Tổng giá trị giỏ hàng
		 */
		public function cart_total(){
		    $total = 0;
		    foreach($_SESSION['cart'] as $product){
		        $total += $product["p_price"] * $product["number"];
		    }
		    return $total;
		}
		/**
		 * Số sản phẩm có trong giỏ hàng
		 */
		public function cart_number(){
		    $number = 0;
		    foreach($_SESSION['cart'] as $product){
		        $number += $product["number"];
		    }
		    return $number;
		}
		/**
		 * Danh sách sản phẩm trong giỏ hàng
		 */
		public function cart_list(){
		    return $_SESSION['cart'];
		}
		/**
		 * Xóa giỏ hàng
		 */
		public function cart_destroy(){
		    $_SESSION['cart'] = array();
		}

	}
	new controller_cart();
ob_end_flush(); ?>