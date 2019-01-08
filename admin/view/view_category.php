<div class="col-md-10 col-md-offset-1">
	<div style="margin-bottom: 5px;">
		<a href="index.php?controller=add_edit_category&act=add" class="btn btn-primary">Add</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">category_product</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th style="width: 50px">STT</th>
					<th>Category name</th>
					<th style="width: 100px;"></th>
				</tr>
				<?php
				$stt = 0;
					foreach($arr as $rows)
					{
						$stt++;
				 ?>
				<tr>
					<td><?php echo $stt; ?></td>
					<td><?php echo $rows->c_name; ?></td>
					<td style="text-align: center;">
						<a href="index.php?controller=add_edit_category&act=edit&id=<?php echo $rows->category_id; ?>">Edit</a>&nbsp;&nbsp;
						<a href="index.php?controller=category&act=delete&id=<?php echo $rows->category_id; ?>" onclick="return window.confirm('Chắc chắn xóa?');">Delete</a>
					</td>
				</tr>
				<?php } ?>
			</table>
			<style type="text/css">
				.pagination{padding:0px; margin:0px;}
			</style>
			<ul class="pagination">
			<?php 
			for($i = 1;$i <= $number_page;$i++)
			{ 
			?>
			<li><a href="index.php?controller=category&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
			<?php } ?>
			</ul>
		</div>
	</div>
</div>