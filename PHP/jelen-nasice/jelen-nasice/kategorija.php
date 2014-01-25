<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
if(isset($_GET['kat'])) {
	$kat = $_GET['kat'];

	FormLoad($kat);
}


function FormLoad($kat) {
	include_once './class/baza.php';
	$baza = new baza;
	$sql = "SELECT i.naslov AS izbornik, k.naslov AS kategorija FROM kategorija k, izbornik i
				WHERE i.id_izb = k.id_izb AND k.id_kat=" .$kat;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	
	echo '<table><tr><td style="vertical-align: top;">';
	echo '<div class="kat_menu" id="kategorije">';
		echo '<span class="small_font">' .$row->izbornik .'</span>';
		echo '<h1 class="kategorija">&nbsp;' .$row->kategorija. '</h1><br/>';
		
		$sql = "SELECT id_text, naslov FROM tekst WHERE id_kat=" .$kat;
		$rs = $baza->query($sql);
		while($row = mysql_fetch_object($rs)) {
			$str = "'tekst.php?id_txt=" .$row->id_text. "','tekst'";  //prikaz u div tekst
			echo '<a class="level2" href="" onclick="ajax('.$str.'); return false;" />'.$row->naslov.'</a><br/>';	
		}	
	echo '</div></td>';
	echo '<td style="vertical-align: top;"><div class="kat_txt" id="tekst"></div></td></tr></table>';


}
?>
</body>
</html>
