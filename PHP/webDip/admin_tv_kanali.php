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

//----------------------------------------------------------------------------------------
$kanali = array();


// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function init() {
	global $db, $kanali;
	
	$sql = "SELECT * FROM tv_kanali";
	$rs = $db->baza_upit($sql);
	while($rez=mysql_fetch_assoc($rs)) {
		$kanali[] = $rez;
	}	
}

function azuriraj_epg() {
	$polje = $_POST;	
	global $db;
	include_once ('libs/util/citaj_epg.php');
	$epgUtil = new citaj_epg;
	
	foreach ($polje as $key => $value) {
		//provjerit dali je key ch_x
		$a = substr($key, 0, strripos($key, "_"));
		if ($a == 'ch' && $value=='on') {
			$id = substr($key, strripos($key, "_") + 1, strlen($key));
			$sql = "SELECT * FROM tv_kanali WHERE epg_url IS NOT NULL AND id_pk=" .$id;
			$rs = $db->baza_upit($sql);
			$red = mysql_fetch_object($rs);
			$epg_url = $red->epg_url;
			$epgUtil->zapisiEPG($epg_url, $id, $db, false);
		}
	}
	
}

$smarty->assign("kanali", $kanali);
$smarty->display('admin_tv_kanali.tpl');
?>