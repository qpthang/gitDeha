<div class="col-md-10 col-xs-offset-1">
	<div style="margin-bottom:5px;">
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			List order
		</div>
		<div class="panel-body">
			<table class="table table-bordered table-hover">
			<tr>
				<th style="width:50px">Mã Đơn Hàng</th>	
				<th style="width:100px;">Ngày Mua</th>
				<th>Thành Tiền</th>
				<th style="width:100px;">Tên Khách Hàng</th>
				<th>Số Điện Thoại</th>
				<th>Địa Chỉ</th>
				<th>HTTT</th>
				<th>Hành Động</th>
			</tr>
			<?php 
				foreach($data as $rows)
				{
			 ?>
			<tr>
				<td style="text-align:center"><?php echo $rows->order_id; ?></td>
				<td style="text-align:center"><?php echo $rows->ngaymua ?></td>		
				<td><?php echo $rows->thanhtien ?></td>
				<td><?php echo $rows->ten; ?></td>
				<td><?php echo $rows->sdt ?></td>
				<td><?php echo $rows->diachi ?></td>
				<td><?php echo $rows->httt==1?"Online":"TT khi giao hàng"; ?></td>
				<td style="text-align:center">
					<a href="index.php?controller=order&act=giao&id=<?php echo $rows->order_id; ?>">Giao</a>&nbsp;
					<a href="index.php?controller=order&act=huy&id=<?php echo $rows->order_id; ?>" onclick="return window.confirm('Are you sure?');">Hủy</a>&nbsp;
				</td>
			</tr>
			<?php } ?>
			</table>
		</div>
	</div>
</div>