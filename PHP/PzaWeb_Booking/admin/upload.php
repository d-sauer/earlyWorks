<?php
function UpdatePic($id_ob, $path, $opis) {
	include_once '../class/baza.php';
	$baza=new baza;
	
	$sql = "INSERT INTO slike (id_ob,path,opis) VALUES (".$id_ob.", '".$path."', '".$opis."')";
	$baza->query($sql);
	
}
	$fname = strtolower($_FILES["myfile"]["name"]);
	$u_path = $_POST['u_path'] . $fname;
	$db_path = $_POST['db_path'] . $fname;
	$opis = $_POST['opis'];
	$id_ob = $_POST['id_ob'];
	
	$result = 0;
	$target_path =$u_path;
	echo $target_path;
	if(@move_uploaded_file($_FILES['myfile']['tmp_name'], $target_path)) {
		UpdatePic($id_ob,$db_path,$opis);
		$result = 1;
	}
	sleep(1);
	
?>
<script language="javascript" type="text/javascript">window.top.window.stopUpload(<?php echo $result; ?>);</script>   