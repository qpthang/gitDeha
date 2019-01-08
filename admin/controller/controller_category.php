<?php
	/**
	 * summary
	 */
	class controller_category extends controller
	{
	    /**
	     * summary
	     */
	    public function __construct()
	    {
	     	// gọi hàm tạo của class controller để khởi tạo biến model là 1 object của class model. Khi đó biến model của class controller có thể gọi các hàm bên trong class model
	     	parent::__construct();
	     	$act = isset($_GET["act"])?$_GET["act"]:"";
	     	switch ($act) {
	     	   	case "delete":
		     	   		// code...
		     	   		$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
		     	   		// xóa bản ghi
		     	   		$this->model->execute("delete from category where category_id = $id");
		     	   		header("loaction:index.php?controller=category");
	     	   		break;
	     	   	
	     	   	default:
	     	   		// code...
	     	   		break;
	     	   }
	     	   // khai báo số bản ghi trên 1 trang
	     	   $record_per_page = 10;
	     	   // tổng số bản ghi
	     	   $total_record = $this->model->count("select category_id from category");
	     	   //số trang = tongsobanghi/sobanghitren1trang
	     	   $number_page = $total_record/$record_per_page;
	     	   // lấy biến p truyền vào từ url, biến này chỉ trang hiện tại
	     	   $p = isset($_GET["p"])&&is_numeric($_GET["p"])&&$_GET["p"]>=1 ? ($_GET["p"]-1):0;
	     	   // từ trang hiện tại, xác định lấy bản ghi nào đến bản ghi nào
	     	   $from = $p * $record_per_page;
	     	   // gọi hàm fetch của class model để thực hiện câu lệnh sql
	     	   $arr = $this->model->fetch("select * from category order by category_id desc limit $from,$record_per_page");
	     	   //load view
	     	   include "view/view_category.php";
	    }
	}
	new controller_category();
?>