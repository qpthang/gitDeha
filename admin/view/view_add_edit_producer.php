<div class="col-md-9 col-xs-offset-1">	
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit producer</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>">
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Email</div>
				<div class="col-md-10"><input type="text" name="email" class="form-control" value="<?php echo isset($arr->email)?$arr->email:""; ?>" ></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Name</div>
				<div class="col-md-10"><input type="text" name="name" class="form-control" value="<?php echo isset($arr->name)?$arr->name:""; ?>"></div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Phone Number</div>
				<div class="col-md-10"><input type="number" name="phone" class="form-control" value="<?php echo isset($arr->phone)?$arr->phone:""; ?>"></div>
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
				<div class="col-md-10"><a href="javascript:go_back()" title=""><input type="button" value="Go Back" class="btn btn-primary"></a></div>
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
<script type="text/javascript">
	function go_back(){
		history.back(-1);
	}
</script>