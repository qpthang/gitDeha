<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit category_product</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>">				
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-1">Tên</div>
						<div class="col-md-11">
<input type="text" name="c_name" value="<?php echo isset($arr->c_name)?$arr->c_name:""; ?>" class="form-control">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<a href="javascript:go_back()" title="">
								<input type="button" class="btn btn-primary" name="" value="Go back" placeholder="" >
							</a>
							<input type="submit" class="btn btn-primary" value="Process"> 
							<input type="reset" class="btn btn-danger" value="Reset">
 						</div>
					</div>
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