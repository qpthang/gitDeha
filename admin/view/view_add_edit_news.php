<div class="col-md-10 col-xs-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit news</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action; ?>" enctype="multipart/form-data">
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Title</div>
				<div class="col-md-10">
					<input type="text" name="n_name" class="form-control" required value="<?php echo isset($arr->n_name)?$arr->n_name:""; ?>">
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<input <?php echo isset($arr->c_hotnews)&&$arr->n_hotnews==1?"checked":""; ?> type="checkbox" name="n_hotnews" id="hot_news"> <label for="hot_news">Hot news</label>
				</div>
			</div>			
			<!-- end row -->
			
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Description</div>
				<div class="col-md-10">
					<textarea style="width:700px;height:100px;" name="n_description">
						<?php 
							echo isset($arr->n_description)?$arr->n_description:"";
						?>
					</textarea>	
					<script type="text/javascript">
						CKEDITOR.replace("n_description");
					</script>				
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Content</div>
				<div class="col-md-10">
					<textarea style="width:700px;height:100px;" name="n_content">
					<?php 
							echo isset($arr->n_content)?$arr->n_content:"";
						?>
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("n_content");
					</script>
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2">Image</div>
				<div class="col-md-10">
					<input type="file" name="n_img">
				</div>
			</div>			
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin:5px">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<input type="submit" name="btn" class="btn btn-primary" value="Process">
				</div>
			</div>			
			<!-- end row -->
			</form>
		</div>
	</div>
</div>