<div style="margin-top: 20px; margin-bottom: 20px;">
	<?php
		if($this->cart_number()<=0)
		{
			echo "<h1>Không có sản phẩm nào</h1>";
	}else{?>
	<table cellpadding="5" border="1" style="width:100%; border-collapse: collapse;">
		<tr>
			<th style="width:100px;">Ảnh</th>
			<th>Tên sản phẩm</th>
			<th style="width:100px;">Số lượng</th>
			<th style="width: 100px;">Đơn giá</th>
			<th style="width:100px;"></th>
		</tr>
		<?php
			foreach($_SESSION["cart"] as $product)
			{
		?>
		<tr>
			<td style="text-align: center;">
				<img src="public/upload/product/<?php echo $product["p_img"]; ?>" style="width: 100px;">
			</td>
			<td><?php echo $product["p_name"]; ?></td>
			<td style="text-align: center;"><?php echo $product["number"]; ?></td>
			<td style="text-align: center;"><?php echo number_format($product["p_price"]); ?> VNĐ</td>
			<td style="text-align: center;">
				<a href="index.php?controller=cart&act=delete&id=<?php echo $product["product_id"] ?>">Delete</a>
			</td>
		</tr>
		<?php } ?>
		<tr>
			<td colspan="6">
				<a href="index.php?controller=cart&act=destroy" class="button pull-left">
					<input type="button" class="btn btn-danger" value="Xóa toàn bộ" name="">
				</a>
				
			</td>
		</tr>
	</table>
	<div class="total-cart" style="margin: 10px">
		<span style="font-size: 20px; font-weight: bold;">Tổng tiền thanh toán: <?php echo number_format($this->cart_total()); ?>₫ </span><br>
	</div>
	<div id="thongtin" style="border: 1px solid black; padding: 20px; ">
		<form method="post" action="index.php?controller=cart&act=do_bill">
			<table cellpadding="10" border="1">
				<tr>
					<td>họ tên</td>
					<td style="width: 200px"><input type="text" name="ten" value="" placeholder=""></td>
				</tr>
				<tr>
					<td>Số điện thoại</td>
					<td><input type="number" name="sdt" value="" placeholder=""></td>
				</tr>
				<tr>
					<td>Địa chỉ nhận hàng</td>
					<td><input type="text" name="diachi" value="" placeholder=""></td>
				</tr>
			</table>
			<div>
				<label for="">Hình Thức Thanh Toán</label>
				<br>
				&nbsp; &nbsp; <input type="radio" name="httt" value="0" checked> Thanh Toán Khi Giao Hàng
				<br>
				&nbsp; &nbsp; <input type="radio" name="httt" value="1"> Thanh Toán Online Qua Ngân Lượng
			</div>
			<div>
				<input type="submit" name="" value="Đặt Hàng">
			</div>
		</form>
	</div>
	
	<?php } ?>
	<div>
		<a href="index.php" class="button pull-right">
			<button class="btn btn-info">Tiếp tục mua hàng</button>
		</a>
	</div>
	
</div>