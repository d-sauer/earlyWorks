<?php

if(!isset($_GET['cmd']))
	if(isset($_GET['id_txt'])) {
		LoadForm($_GET['id_txt']);	
	}
	else {
		echo 'Pogreška: Nepostojeći tekst!';
	}
else {
	switch($_GET['cmd']) {
		case 'load_pic':
			$id_txt = $_GET['id_txt'];
			$pg = $_GET['pg'];
			$prikaz = $_GET['prikaz'];
			LoadPic($id_txt, $pg, $prikaz);
			break;
		case 'show_pic':
			$id_pic = $_GET['id_pic'];
			ShowPic($id_pic);
			break;
	}

}

function LoadForm($id_txt) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT naslov, tekst,DATE_FORMAT(datum, '%e.%m.%Y.') AS datum FROM tekst WHERE id_text=" .$id_txt;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	echo '<table width="740px" border="0"><tr><td><div id="text">';
		//echo '<span id="small_font">(' .$row->datum. ')</span><br/>';
		echo '<h1>' .$row->naslov. '</h1>';

		echo $row->tekst;
		echo '<br/>';
	echo '</div></td></tr>';
	echo '<tr><td><div id="slideshow">';
		LoadPicMenu($id_txt,0,5);	
	echo '</div></td></tr></table>';
}

function LoadPicMenu($id_txt,$pg,$prikaz=5) {
	include_once './class/baza.php';
	$baza = new baza;
	$sql = "SELECT count(*) AS broj FROM slika WHERE id_text=" .$id_txt;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	$br = $row->broj;
	echo '<br/>';
	if($br==1) {
		$sql = "SELECT id_slika FROM slika WHERE id_text=" .$id_txt;
		$rs = $baza->query($sql);
		$row = mysql_fetch_object($rs);
		$id_pic = $row->id_slika;
		echo '<div align="center">';
			ShowPic($id_pic,200);
		echo '</div>';
	}
	else {
		$n = ((int)($br / $prikaz)); //koliko ima cijelih stranica
		$o= $br-($n*$prikaz);		//ostatak
		if($o!=0) {
			$n++;
		}
	
		echo '<table width="80%" align="center" border="0">
				<tr><td align="center">
					<div id="slika">
					</div>
				</td></tr>
				
				<tr><td align="center"><div id="tbl_pic">';
					LoadPic($id_txt,$pg,$prikaz);
		echo '		</div></td></tr>';
		if($n>1) {
			echo '<tr><td align="center">';
				for($i=0;$i<$n;$i++) {
					$limit = $i * $prikaz;
					
					$str = "'tekst.php?cmd=load_pic&amp;id_txt=" .$id_txt. "&amp;pg=".$i."&amp;prikaz=".$prikaz."','tbl_pic'";  //prikaz u div tekst
					echo '<a class="level2" href="" onclick="ajax('.$str.'); return false;" />'.($i+1).'</a>&nbsp;';	
				}
			echo '</td></tr>';
		}
		echo '</table>';
	}			

}

function LoadPic($id_txt, $pg, $prikaz) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$limit = $pg * $prikaz;
	$sql = "SELECT id_slika, path, opis FROM slika WHERE id_text=" .$id_txt . ' LIMIT ' .$limit. ', ' .$prikaz;
	$rs = $baza->query($sql);
	echo '<table border="0"><tr>';
	while($row = mysql_fetch_object($rs)) { //prikaz umanjenih slika, po stranicama
		echo '<td align="center">';
		$str = "'tekst.php?cmd=show_pic&amp;id_pic=".$row->id_slika."','slika'";
		echo '<img align="middle" src="'.$row->path.'" width="130px" title="'.$row->opis.'" onclick="ajax('.$str.'); return false;" />';
		echo '</td>';
	}
	echo '</tr></table>';	
}

function ShowPic($id_pic, $width=100) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql = "SELECT path, opis FROM slika WHERE id_slika=" .$id_pic;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);

	echo '<img src="'.$row->path.'" width="'.$width.'%" title="'.$row->opis.'" />';
	echo '<br/><hr/>';
}

?>
