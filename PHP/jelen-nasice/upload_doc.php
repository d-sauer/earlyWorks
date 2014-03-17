<?php
$uploaddir = $_POST['up_path'];
$uploadfile = $uploaddir . basename($_FILES['myfile']['name']);


if (move_uploaded_file($_FILES['myfile']['tmp_name'], $uploadfile)) {
    $var= "Datoteka je uspješno postavljena.";
} else {
    $var = "Postavljanje datoteke nije uspjelo!";
}
sleep(4);
?>
<script language="javascript">
	alert('<?php echo $var;?>');
</script>
