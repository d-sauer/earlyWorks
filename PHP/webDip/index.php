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
$emitiranje = null;
$popularno = null;


// FUNKCIJE
include_once ('libs/util/akcija.php');


function init() {
	include_once 'libs/util/tv_raspored.php';
	$tr = new tv_raspored;
	global $db, $emitiranje, $popularno;
	
	if($emitiranje==null)
		$emitiranje = array();
		
	//
	// trenutno emitirano
	//
	$trenutno_vrijeme = date('Y-m-d H:i:s');
	$sql = "SELECT r.*, kat.naziv_kategorije, kan.naziv_kanala " .
					" FROM tv_raspored r, tv_kategorije kat, tv_kanali kan " .
					" WHERE kan.id_pk=r.kanal_id " .
					" AND kat.id=r.kategorija_id " .
					" AND pocetak <= '" . $trenutno_vrijeme . "' AND kraj >= '" . $trenutno_vrijeme . "' " .
					" GROUP BY r.kanal_id " .
					" ORDER BY r.pocetak";
	
	$rs = $db->baza_upit($sql);
	while($red=mysql_fetch_assoc($rs)) {
		$red['vrijeme'] = $tr->dajVrijeme($red['pocetak'], 'H:i'); 
		$red['vrijeme_kraj'] = $tr->dajVrijeme($red['kraj'], 'H:i'); 
		
		$emitiranje[] = $red;
	}	
	
	
	//
	// Najpopularnije
	//
	$sql = "select r.*, ke.raspored_id, count(ke.raspored_id) from tv_raspored r,  tv_kor_emisije ke " . 
			" WHERE r.id=ke.raspored_id " .
			" GROUP BY ke.raspored_id " .
			" ORDER BY count(ke.raspored_id) DESC, pocetak LIMIT 0,10";
	$rs = $db->baza_upit($sql);
	while($red=mysql_fetch_assoc($rs)) {
		$red['vrijeme_dan'] = $tr->dajVrijeme($red['pocetak'], 'd.m.Y'); 
		$red['vrijeme'] = $tr->dajVrijeme($red['pocetak'], 'H:i'); 
		$red['vrijeme_kraj'] = $tr->dajVrijeme($red['kraj'], 'H:i'); 
		
		
		$popularno[] = $red;
	}	
	
}


$smarty->assign("popularno", $popularno);
$smarty->assign("emitiranje", $emitiranje);
$smarty->display('index.tpl'); 
?>