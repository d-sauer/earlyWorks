<?php
include_once './class/baza.php';
$baza = new baza;

$sql = "SELECT MAX( id_slika ) AS id_pic FROM slika";
$rs=$baza->query($sql);
$row = mysql_fetch_object($rs);
$id_pic = ($row->id_pic) + 1;

$fname = sprintf("image%05s",   $id_pic);

$uploaddir = './slike/';
$uploadfile = $uploaddir . $fname . "." . basename($_FILES['myfile']['type']);


if (move_uploaded_file($_FILES['myfile']['tmp_name'], $uploadfile)) {
	//dodavanje u bazu
	$opis = $_POST['opis'];
	$id_txt = $_POST['id_txt'];
	$sql = "INSERT INTO slika(id_text,path,opis) VALUES(".$id_txt.",'".$uploadfile."','".$opis."')";
	$baza->query($sql);
    $var= "Slika je uspjesno postavljena.";
	
} else {
    $var = "Postavljanje slike nije uspjelo!";
}
echo $var;
?>
<script language="javascript">
	alert('<?php echo $var;?>');
</script>
