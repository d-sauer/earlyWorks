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
$popis_kanala = null;
$popis_kategorija = null;

// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function init() {
	global $db;
	dajPopisKanala();
	dajPopisKategorija();
}

function dajPopisKanala() {
	global $db, $popis_kanala;
	$sql = "select * from tv_kanali WHERE odobrenje=1 ORDER BY naziv_kanala";
	$rs=$db->baza_upit($sql);
	while($redak=mysql_fetch_assoc($rs)) {
		$popis_kanala[]=$redak;
	}
}

function dajPopisKategorija() {
	global $db, $popis_kategorija;
	$sql = "select * from tv_kategorije ORDER BY naziv_kategorije";
	$rs=$db->baza_upit($sql);
	while($redak=mysql_fetch_assoc($rs)) {
		$popis_kategorija[]=$redak;
	}
}


$smarty->assign("popis_kanala",$popis_kanala);
$smarty->assign("popis_kategorija",$popis_kategorija);
$smarty->display('tv_pretrazivanje.tpl');
?>