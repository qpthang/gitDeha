<div class="col-md-7 col-xs-offset-2" >
	<div style="margin-bottom: 5px">
		<a href="index.php?controller=add_edit_user&act=add" class="btn btn-primary">Add</a>
	</div>
	<?php 
		if(isset($_GET["err"]) && $_GET["err"]==1)
		{
	 ?>
	<div class="alert alert-danger">User này đã tồn tại</div>
	<?php } ?>
	<div class="panel panel-primary">
		<div class="panel-heading">User</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th style="width:50px;">STT</th>
					<th>Email</th>
					<th>Name</th>
					<th>Phone</th>
					<th>Address</th>
					<th style="width: 100px;"></th>
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
					<td><?php echo $rows->fullname; ?></td>
					<td><?php echo $rows->phonenumber; ?></td>
					<td><?php echo $rows->address; ?></td>
					<td style="text-align: center;">
						<a href="index.php?controller=add_edit_user&act=edit&id=<?php echo $rows->admin_id; ?>">Edit</a>&nbsp;
						<a href="index.php?controller=user&act=delete&id=<?php echo $rows->admin_id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
				<?php } ?>
			</table>
			<style type="text/css">
				.pagination{padding:0px; margin:0px;}
			</style>
			<ul class="pagination">
			<?php for($i=1;$i<=$num_page;$i++){ ?>
				<li><a href="index.php?controller=user&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
			<?php } ?>
			</ul>
		</div>
	</div>
</div>