<a href="<?php echo base_url($username.'/manage/requestapprove/');?>"  target="_blank">Request Post approve on other baber bussiness page</a>
<?php 
	foreach($bpidsmanage as $perbpidobj){
		$approveurl =  base_url($username.'/manage/listapprove/'.$perbpidobj->bpid);
		echo '<p><a href="'.$approveurl.'">Manage approve of profile id='.$perbpidobj->bpid.'</a></p>';
	}
?>