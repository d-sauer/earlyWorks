<?php
ob_start();
session_start();
$admin="zsauer"; //korisnicko ime za adminisratora
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
if(isset($_SESSION['user']) && $_SESSION['user']==$admin) {
	
	if( (isset($_GET['id_txt']) || isset($_GET['file'])) && isset($_GET['save'])) { //snimanje primjena
		if(isset($_GET['id_txt']) && $_GET['save']==1) {
			$id_txt = $_GET['id_txt'];
			$text = $_GET['freeRTE_content'];
			include_once '../class/baza.php';
			$baza = new baza;
			
			$sql = "UPDATE tekst SET tekst='" .$text. "' WHERE id_text=" .$id_txt;
			$baza->query($sql);
			
			echo 'Tekst je uspješni snimljen!';
			exit();
		}
		if(isset($_GET['file']) && $_GET['save']==1) {
			$path = "../statut/statut/statut.txt";//$_GET['file'];
			$text = $_GET['freeRTE_content'];
		
			$handle = fopen($path,"w");	
			if (fwrite($handle, $text) === FALSE) {
		        echo "Cannot write to file ($path)";
        		exit;
    		}
		    fclose($handle);	
			echo 'Tekst je uspješni snimljen!';
			exit();
		}
	}
	else { //ucitavanje
		echo 'ucitavanje...';
		if(isset($_GET['id_txt'])) {
			$id_txt = $_GET['id_txt'];
			include_once '../class/baza.php';
			$baza = new baza;
			
			$sql = "SELECT naslov, tekst FROM tekst WHERE id_text=" .$id_txt;
			$rs = $baza->query($sql);
			$row = mysql_fetch_object($rs);

			$tekst = $row->tekst;
			if( (strstr($tekst, '<br />')) || (strstr($tekst, '<meta')) ) {
				$tekst = "'" .$tekst . "'";
			}

			$naslov = $row->naslov;
			$cmd = '<input type="hidden" name="id_txt" value="'.$id_txt.'" />';
		}
		
		if(isset($_GET['file'])) {
			$path = "../statut/statut/statut.txt";//$_GET['file'];
			$naslov = basename($path);

			$handle = fopen($path,"r");
			$tekst = fread($handle, filesize($path));
			
			if(!strstr($tekst, '/>')) {
				$tekst = "'" .$tekst . "'";
			}
			fclose($handle);
			$cmd = '<input type="hidden" name="file" value="'.$path.'" />';
		}
	}
	echo "Naslov: " .$naslov .'<br/>';
	?>
	<form method="get" action="rte.php">
		<!-- Include the Free Rich Text Editor Runtime -->
		<script src="./js/richtext.js" type="text/javascript" language="javascript"></script>
		<!-- Include the Free Rich Text Editor Variables Page -->
		<script src="./js/config.js" type="text/javascript" language="javascript"></script>
		<!-- Initialise the editor -->
		<script>
		  initRTE(<?php echo $tekst;?>);
		</script>
		<?php echo $cmd;?>
        <input type="hidden" name="save" value="1" />
		<input type="submit" value="Spremi tekst">
	</form>
<?php
}
else {
	echo "Niste prijavljeni na sustav!<br/>Logirajte se!";
}

?>    
</body>
</html>
