<div class="col-md-9 col-xs-offset-1">	
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit user</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>">
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Email</div>
				<div class="col-md-10"><input type="text" name="email" class="form-control" value="<?php echo isset($arr->email)?$arr->email:""; ?>" <?php echo isset($arr->email)?"disabled":""; ?>></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Password</div>
				<div class="col-md-10"><input type="password" name="password" class="form-control" <?php echo isset($arr->email)?"placeholder='Nhập mật khẩu mới nếu muốn thay đổi mật khẩu, nếu không thì để trắng'":""; ?>></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Name</div>
				<div class="col-md-10"><input type="text" name="fullname" class="form-control" value="<?php echo isset($arr->fullname)?$arr->fullname:""; ?>"></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Phone</div>
				<div class="col-md-10"><input type="text" name="phonenumber" class="form-control" value="<?php echo isset($arr->phonenumber)?$arr->phonenumber:""; ?>"></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Address</div>
				<div class="col-md-10"><input type="text" name="address" class="form-control" value="<?php echo isset($arr->address)?$arr->address:""; ?>"></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2"></div>
				<div class="col-md-10"><input type="submit" value="Process" class="btn btn-primary"></div>
			</div>
			<!-- end row -->
			</form>
		</div>
	</div>
</div>