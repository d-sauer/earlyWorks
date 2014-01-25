<?php
session_start();
ob_start();

require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');
$db = new baza;
$msg = "";

// FUNKCIJE
include_once ('libs/util/akcija.php');

function init() {

}

function login() {
	global $db, $msg;
	$korIme = $_POST['kor_ime'];
	$korLoz = $_POST['kor_loz'];

	$sql = "select * from tv_korisnici where korisnicko_ime = '" . $korIme . "'";
	$rs = $db->baza_upit($sql);
	$red = mysql_fetch_assoc($rs);
	if(mysql_num_rows($rs)==1) {
		if($red['aktiviran']==1) {
			// provjera lozinke
			$db_pass = $red['lozinka'];
			echo 'db:' . $db_pass . '   pass:' . $korLoz;
			if($db_pass==$korLoz) {
				session_unset();
				session_start();
				$_SESSION['korisnicko_ime'] = $korIme;
				$_SESSION['korisnik_id'] = $red['id'];
				$_SESSION['tip_korisnika_id'] = $red['tip_korisnika_id'];
				
				header("location: user_home.php");
				
			} else {
				$msg = "Korisničko ime ili lozinka nije ispravno!";
			}
		} else {
			$msg = "Korisnički račun nije aktiviran!";
		}
	} else {
		$msg = "Korisničko ime i/ili lozinka nije ispravno!";
	}
}


$smarty->assign("msg", $msg);
$smarty->display('tv_login.tpl');
ob_end_flush();
?>