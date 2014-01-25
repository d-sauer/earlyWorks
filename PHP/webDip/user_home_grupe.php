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

// FUNKCIJE
include_once ('libs/util/akcija.php');


function init() {
	global $db, $popis;
	if($popis==null)
		$popis = array();
	
	$sql = "select * from tv_kor_grupa where korisnik_id=" . $_SESSION['korisnik_id'];
	$rs = $db->baza_upit($sql);
	while($red = mysql_fetch_assoc($rs)) {
		// Dohvati koliko komentara emisija ima za tu grupu
		$sql = "select count(id) AS broj from tv_kor_emisije WHERE kor_grupa_id=" . $red['id'];
		$rs2 = $db->baza_upit($sql);
		$red2 = mysql_fetch_assoc($rs2);
		$broj = $red2['broj'];
		$red['broj'] = $broj;
		$popis[] = $red;
	}
	
}


$smarty->assign('popis', $popis);
$smarty->display('user_home_grupe.tpl'); 
?>