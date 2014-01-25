<?php header("Content-Type: text/html; charset=Windows-1250");?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<script type="text/javascript" src="../js/prikaz.js"></script>
<title>Untitled Document</title>
</head>

<body>

<?php 
	include_once "../class/baza.php";
	$baza=new baza;
	
	if(isset($_GET['s'])){		
		$id_sm=$_GET['s'];
		$sql_upit="select t.naziv as tip, o.naziv, z.zupanija, o.mjesto, o.opis, o.br_zvjezdica, o.web_adresa from tip t, objekt o, zupanija z, smjestaj s where o.id_ob=s.id_ob and s.id_ob=o.id_ob and o.id_zup=z.id_zup and s.id_ob=o.id_ob and t.id_tip=o.id_tip and s.id_sm='".$id_sm."'";
		$reza=$baza->query($sql_upit);
		while($ispisi=mysql_fetch_object($reza)){	
			$smjesti="smjesti".$id_sm;		
			echo $ispisi->tip.' '.$ispisi->naziv.'<br /><br />';
			echo 'Lokacija: '.'<br />';
			echo 'Županija: '.$ispisi->zupanija.'<br />';
			echo 'Grad: '.$ispisi->mjesto.'<br /><br />';
			echo 'Opis <br />';
			echo $ispisi->opis;
			if ($ispisi->tip==='Hotel'){
				echo '<br />';
				$kategorija=$ispisi->br_zvjezdica;
				echo 'Kategorija hotela: ';
				for ($i=0; $i<$kategorija; $i++){
					echo '<img src="../slike/zvijezda.png" alt="'.$i.'">';
				} 
				echo '<br />';
			}
			
			echo '<br />Web adresa: <a href="'.$ispisi->web_adresa.'">'.$ispisi->tip.' '.$ispisi->naziv.'</a><br />';
			
			
		}
		$smjesti = 'smjesti' .$id_sm;
		
		echo '<br /><input type="button" name="skri'.$id_sm.'" id="skri'.$id_sm.'" value="Sakrij detalje" onclick="skri(\''.$smjesti.'\')" /><br />';
	}
	else{
		echo '';
	}	
?>
</body>
</html>

