<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;

include_once ('libs/util/baza.php');
$db = new baza;
$popis = array();
$kor_id = $_SESSION['korisnik_id'];
$raspored_id = $_POST['raspored_id'];
$group_id = $_POST['group_id'];


// FUNKCIJE
include_once ('libs/util/akcija.php');

function init() {
	global $db, $popis, $kor_id, $group_id;
	$sql = "SELECT * FROM tv_kor_grupa WHERE korisnik_id=" . $kor_id;
	$rs = $db->baza_upit($sql);
	while($red = mysql_fetch_assoc($rs)) {
		$popis[] = $red;
	}	
}


function addTofav() {
	global $db, $popis, $kor_id, $group_id, $raspored_id;
	$sql = "INSERT INTO tv_kor_emisije (kor_grupa_id, raspored_id) VALUES (".$group_id.", ".$raspored_id.")";
	$rs = $db->baza_upit($sql);
}

$smarty->assign("raspored_id", $raspored_id);
$smarty->assign("popis", $popis);
$smarty->display('am_fav.tpl');
?>