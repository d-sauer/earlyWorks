<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');

$db = new baza;
$popis = null;
$grupa = "";
$id = null;
if(isset($_POST['id']))
	$id = $_POST['id'];

// FUNKCIJE
include_once ('libs/util/akcija.php');


function emisijeGrupe() {
	global $db, $id, $popis, $grupa;;
	include_once 'libs/util/tv_raspored.php';
	$tvr = new tv_raspored;
	
	if($popis==null)
		$popis = array();
		
	$sql ="select r.*, kan.naziv_kanala, kat.naziv_kategorije from tv_kor_emisije tke, tv_raspored r, tv_kanali kan, tv_kategorije kat " .
			" WHERE kan.id_pk=r.kanal_id " .
			" AND kat.id=r.kategorija_id " .
			" AND r.id=tke.raspored_id " .
			" AND kor_grupa_id=" . $id;
	
	$rs = $db->baza_upit($sql);
	while($red = mysql_fetch_assoc($rs)) {
		$red['vrijeme'] = $tvr->dajVrijeme($red['pocetak'], 'H:i  d.m.Y '); 
		$popis[] = $red;
	}
	
	// dohvati naziv grupe
	$sql = "SELECT * FROM tv_kor_grupa WHERE id=" . $id;
	$rs = $db->baza_upit($sql);
	$red = mysql_fetch_assoc($rs);
	$grupa = $red['naziv'];
	
}

$smarty->assign('grupa', $grupa);
$smarty->assign('popis', $popis);
$smarty->display('user_home_grupe_popis.tpl'); 
?>