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

$naziv = $_POST['naziv'];
$datum_od= $_POST['datum_od'];
$datum_do= $_POST['datum_do'];
$kategorija= $_POST['kategorija'];
$kanal= $_POST['kanal'];
if(isset($_POST['kanal_id']))
	$kanal= $_POST['kanal_id'];



$samo_raspored = 'false';
if(isset($_POST['samo_raspored']))
	$samo_raspored = 'true';

$kanali = null;

// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function pretrazi() {
	global $db, $naziv,$datum_od,$datum_do,$kategorija, $kanal, $kanali; 
	include_once 'libs/util/tv_raspored.php';
	$tvr = new tv_raspored;
	$kanali = $tvr->pretrazi($db, $naziv,$datum_od,$datum_do,$kategorija, $kanal);
}



$smarty->assign("kanali",$kanali);
$smarty->assign("samo_raspored", $samo_raspored);
$smarty->display('tv_pretrazivanje_raspored.tpl');
?>