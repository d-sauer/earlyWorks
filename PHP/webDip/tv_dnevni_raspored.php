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
$kanali = null;
$samo_raspored = 'false';
if(isset($_POST['samo_raspored']))
	$samo_raspored = 'true';
	
$db = new baza;


// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function init() {
	global $db, $naziv,$datum_od,$datum_do,$kategorija, $kanal, $kanali; 
	include_once 'libs/util/tv_raspored.php';
	$tvr = new tv_raspored;
	$datum_od = date('d.m.Y H:i:s');	
	$kanali = $tvr->pretrazi($db, $naziv,$datum_od,$datum_do,$kategorija, $kanal, true);
}




$smarty->assign("kanali",$kanali);
$smarty->assign("samo_raspored", $samo_raspored);
$smarty->display('tv_dnevni_raspored.tpl');
?>