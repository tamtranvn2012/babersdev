<div id="upload-img">
	<h2>Upload a file</h2>
	<!-- Upload function on action form -->
	<?php echo form_open_multipart('/upload/upload_img', array('id' => 'fileupload')); ?>
		Link:
		<input type="text" name="photo_link" value="" />
		Photo Tag:
		<input type="text" name="photo_tag" value="" />
		Photo Name:
		<input type="text" name="photo_name" value="" />
	<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
	<div class="row fileupload-buttonbar">
	
		<div class="span7">
			<!-- The fileinput-button span is used to style the file input field as button -->
			Photo images upload images:
			<span class="btn btn-success fileinput-button">
				<span><i class="icon-plus icon-white"></i> Add files...</span>
				<!-- Replace name of this input by userfile-->
				<input type="file" name="userfile">
			</span>
			<button type="submit" class="btn btn-primary start">
				<i class="icon-upload icon-white"></i> Start upload
			</button>

			<button type="reset" class="btn btn-warning cancel">
				<i class="icon-ban-circle icon-white"></i> Cancel upload
			</button>

			<button type="button" class="btn btn-danger delete">
				<i class="icon-trash icon-white"></i> Delete
			</button>

			<input type="checkbox" class="toggle">
		</div>

		<div class="span5">

		<!-- The global progress bar -->
			<div class="progress progress-success progress-striped active fade">
				<div class="bar" style="width:0%;"></div>
			</div>
		</div>
	</div>

	<!-- The loading indicator is shown during image processing -->
	<div class="fileupload-loading"></div>
	<br>
	<!-- The table listing the files available for upload/download -->
	<table class="table table-striped"><tbody class="files" data-toggle="modal-gallery" data-target="#modal-gallery"></tbody></table>
	<input type="submit" value="Submit" />	
	<?php echo form_close(); ?>

</div>