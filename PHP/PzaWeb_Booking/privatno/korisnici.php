<?php
	ob_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>Baza korisnika - TIM 17</title>
<style type="text/css">
<!--
tr.sivo {
	background-color:#CCCCCC;
}
th.naslov{
	background-color:#000000;
	color: #FFFFFF;
}
-->
</style>
</head>

<body>
  <h1>Baza korisnika - TIM 17</h1>
  <div align="center">
  	<?php
		include_once "../class/baza.php";
		$baza=new baza;
		$sql_korisnici="select k.kor_ime, k.lozinka, p.pristup from korisnik k, pravo_pristupa p where k.id_pri=p.id_pri";
		$reza = $baza->query($sql_korisnici);
		$broj = mysql_num_rows($reza);	
		echo '<table border=1><th class="naslov" colspan="4">Korisnici</th><tr><td>Redni broj</td><td>Korisničko ime</td><td>Lozinka</td><td>Tip korisnika</td></tr>';	
		$i=1;
		while ($kor=mysql_fetch_object($reza)){	
			if ($i%2==0){
				echo '<tr class="sivo"><td>'.$i.'</td><td>'.$kor->kor_ime.'</td><td>'.$kor->lozinka.'</td><td>'.$kor->pristup.'</td></tr>';
				$i++;
			}else{
				echo '<tr><td>'.$i.'</td><td>'.$kor->kor_ime.'</td><td>'.$kor->lozinka.'</td><td>'.$kor->pristup.'</td></tr>';
				$i++;
			}
		}
		echo '</table>';
		
	?>
    
<br />&copy; TIM 17 | Programiranje za Web | 2008 | </div>
</body>
</html>
