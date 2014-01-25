<?php
session_start();

require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
//foreach ($_POST as $key => $value) {
//	$smarty->assign($key, $value);
//}

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');
$db = new baza;
$msg = "";

// FUNKCIJE
include_once ('libs/util/akcija.php');

function init() {
	global $msg, $smarty;
	$msg = "Uspješno ste se odjavili iz sustava!";	
	$_SESSION['korisnicko_ime'] = '';
	$_SESSION['tip_korisnika_id'] = '';
	session_unset();
	session_destroy();
	$smarty->clear_assign('is_loged_in');
	$smarty->clear_assign('tip_korisnika_id');
}



$smarty->assign("msg", $msg);
$smarty->display('msg.tpl');
?>