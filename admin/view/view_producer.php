<div class="col-md-7 col-xs-offset-2" >
	<div style="margin-bottom: 5px">
		<a href="index.php?controller=add_edit_producer&act=add" class="btn btn-primary">Add</a>
	</div>
	<?php 
		if(isset($_GET["err"]) && $_GET["err"]==1)
		{
	 ?>
	<div class="alert alert-danger">Producer này đã tồn tại</div>
	<?php } ?>
	<div class="panel panel-primary">
		<div class="panel-heading">Producer</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th style="width:50px;">STT</th>
					<th>Email</th>
					<th>Name</th>
					<th>Phone</th>
					<th>Address</th>
					<th style="width: 100px;">Hành Động</th>
				</tr>
				<?php 
					$stt = 0;
					foreach($arr as $rows)
					{
						$stt++;
				 ?>
				<tr>
					<td style="text-align: center;"><?php echo $stt; ?></td>
					<td><?php echo $rows->email; ?></td>
					<td><?php echo $rows->name; ?></td>
					<td><?php echo $rows->phone; ?></td>
					<td><?php echo $rows->address; ?></td>
					<td style="text-align: center;">
						<a href="index.php?controller=add_edit_producer&act=edit&id=<?php echo $rows->producer_id; ?>">Edit</a>&nbsp;
						<a href="index.php?controller=producer&act=delete&id=<?php echo $rows->producer_id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
				<?php } ?>
			</table>
			<style type="text/css">
				.pagination{padding:0px; margin:0px;}
			</style>
			<ul class="pagination">
			<?php for($i=1;$i<=$num_page;$i++){ ?>
				<li><a href="index.php?controller=producer&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
			<?php } ?>
			</ul>
		</div>
	</div>
</div>