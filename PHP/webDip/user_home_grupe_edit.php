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
$msg = "";
$naslov = "Nova TV grupa";
$korisnik_id = $_SESSION['korisnik_id'];
$naziv = "";
$opis = "";

$id = null;
if(isset($_POST['id']))
	$id = $_POST['id'];

// FUNKCIJE
include_once ('libs/util/akcija.php');


function init() {
	global $db, $id, $korisnik_id, $naslov, $naziv, $opis;
	if($id!=null) {
		$sql = "SELECT * FROM tv_kor_grupa WHERE id=" . $id;
		$rs = $db->baza_upit($sql);
		$red = mysql_fetch_assoc($rs);
		$naziv = $red['naziv'];
		$opis = $red['opis'];
		if(isset($id))
			$naslov = "TV grupa : " . $naziv;
	}
}

function spremi() {
	global $db, $id, $korisnik_id, $naslov, $msg, $naziv, $opis;
	$naziv = $_POST['naziv'];
	$opis = $_POST['opis'];
	
	if(strlen($naziv)>0) {
		if($id==null) { // insert
			$sql = "insert into tv_kor_grupa (korisnik_id,naziv, opis) VALUES(".$korisnik_id.",'".$naziv."', '".$opis."')";
			$db->baza_upit($sql);
			$msg = "Nova grupa uspješno pohranjena.";
			$naslov = "TV grupa : " . $naziv;
		} else {		// update
			$sql = "update tv_kor_grupa SET naziv='".$naziv."', opis='".$opis."' where id=" .$id;
			$db->baza_upit($sql);
			$msg = "Promjene uspješno pohranjene.";
			$naslov = "TV grupa : " . $naziv;
		}	
	} else {
		$msg = "Unesite naziv grupe!";
	}
	
}


function obrisi() {
	global $db, $id;
	// Obriši vezane emisije
	$sql = "DELETE FROM tv_kor_emisije WHERE kor_grupa_id=" . $id;
	$db->baza_upit($sql);
	
	// Obriši grupu
	$sql = "DELETE FROM tv_kor_grupa WHERE id=" .$id;
	$db->baza_upit($sql);
	header("location: user_home_grupe.php");
}

if(isset($id) && $id!=null)
	$smarty->assign('id', $id);
	
$smarty->assign('naziv', $naziv);
$smarty->assign('opis', $opis);
$smarty->assign('naslov', $naslov);
$smarty->assign('msg', $msg);
$smarty->assign('korisnik_id', $korisnik_id);
$smarty->display('user_home_grupe_edit.tpl'); 
?>