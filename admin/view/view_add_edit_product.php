<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit product</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>" enctype="multipart/form-data">
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Name</div>
						<div class="col-md-10">
							<input type="text" name="p_name" required value="<?php echo isset($arr->p_name)?$arr->p_name:""; ?>" class="form-control">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Category</div>
						<div class="col-md-10">
							<select name="fk_category_id">
								<option value="">Chọn loại sữa</option>
								<?php
									//lay tat ca cac ban ghi cua category
									$category = $this->model->fetch("select * from category order by category_id desc");
									foreach($category as $rows)
									{
								?>
								<option <?php echo isset($arr->fk_category_id)&&$arr->fk_category_id==$rows->category_id?"selected":""; ?> value="<?php echo $rows->category_id; ?>"><?php echo $rows->c_name; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Producer</div>
						<div class="col-md-10">
							<select name="fk_producer_id">
								<option value="">Chọn nhà cung cấp</option>
								<?php
									//lay tat ca cac ban ghi cua producer
									$producer = $this->model->fetch("select * from producer order by producer_id desc");
									foreach($producer as $rows)
									{
								?>

								<option <?php echo isset($arr->fk_producer_id)&&$arr->fk_producer_id==$rows->producer_id?"selected":""; ?> value="<?php echo $rows->producer_id; ?>"><?php echo $rows->name; ?></option>
								<?php } ?>
							</select>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Giá</div>
						<div class="col-md-10">
							<input type="number" name="p_price" required value="<?php echo isset($arr->p_price)?$arr->p_price:""; ?>" class="form-control">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Image</div>
						<div class="col-md-10">
							<input type="file" name="p_img">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Description</div>
						<div class="col-md-10">
							<textarea name="p_description">
							<?php echo isset($arr->p_description)?$arr->p_description:""; ?>
							</textarea>
							<script type="text/javascript">
								CKEDITOR.replace("p_description");
							</script>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="row" style="margin:5px">
					<div class="col-md-2">Content</div>
					<div class="col-md-10">
						<textarea style="width:700px;height:100px;" name="p_content">
						<?php
								echo isset($arr->p_content)?$arr->p_content:"";
						?>
						</textarea>
						<script type="text/javascript">
							CKEDITOR.replace("p_content");
						</script>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<input type="checkbox" <?php echo isset($arr->p_hotproduct)&&$arr->p_hotproduct==1?"checked":""; ?> name="p_hotproduct"> Hot product
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
								<input type="button" name="" value="Go back" class="btn btn-primary" placeholder="">
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
	function go_back() {
		// body...
		history.back(-1);
	}
</script>