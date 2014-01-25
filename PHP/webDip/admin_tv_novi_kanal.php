<?php
session_start();
//----------------------------------------------------------------------------------------
ob_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;


// Lokalne varijable
$naslov = "";
$tv_kanal_id = null;
$naziv_kanala = null;
$opis = null;
$url = null;
$epg_url = null;
$odobrenje = null;
$poruka = null;

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');
$db = new baza;

//----------------------------------------------------------------------------------------
if($_POST['tv_kanal_id'])
	$tv_kanal_id = $_POST['tv_kanal_id'];


// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function init() {
	global $db, $naslov, $tv_kanal_id, $naziv_kanala, $opis, $url, $epg_url, $odobrenje, $poruka;
	if($tv_kanal_id!=null) {
		$sql = "SELECT * FROM tv_kanali WHERE id_pk=" .$tv_kanal_id;
		$rs = $db->baza_upit($sql);
		$rez = mysql_fetch_object($rs);
		$naslov = "TV program - " . $rez->naziv_kanala;
		$tv_kanal_id = $rez->id_pk;
		$naziv_kanala = $rez->naziv_kanala;
		$opis = $rez->opis;
		$url = $rez->url;
		$epg_url = $rez->epg_url;
		$odobrenje = $rez->odobrenje;

		$naslov = "TV program:" . $naslov;	
	} else {
		$naslov = "Novi  TV program";	
	}
}

function spremi() {
	global $naslov;
	$naslov = "TV program:" . $_POST['naziv_kanala'];

	global $db, $naslov, $tv_kanal_id, $naziv_kanala, $opis, $url, $epg_url, $odobrenje, $poruka;
	if($tv_kanal_id==null) {
		if($_POST['odobrenje']=='on')
			$odobrenje = 1;
		else 
			$odobrenje = 0;	
		
		$sql = "INSERT INTO tv_kanali (id_pk ,naziv_kanala ,opis ,url ,epg_url ,odobrenje ,korisnik_id ,jezik_id) 
				              VALUES (NULL , '".$_POST['naziv_kanala']."', '".$_POST['opis']."', '".$_POST['url']."', '".$_POST['epg_url']."', '".$odobrenje."', '', '')";
		$db->baza_upit($sql);
		$poruka = "Uspješno ste dodali novi TV program.";
	} else {
		// UPDATE
		if($_POST['odobrenje']=='on')
			$odobrenje = 1;
		else 
			$odobrenje = 0;	
			
		$sql = "UPDATE tv_kanali SET naziv_kanala = '".$_POST['naziv_kanala']."', opis = '".$_POST['opis']."', url = '".$_POST['url']."', epg_url = '".$_POST['epg_url']."', odobrenje = '".$odobrenje."' 
				WHERE id_pk=" . $tv_kanal_id;
		
		$db->baza_upit($sql);
		$poruka = "Uspješno ste pohranili promjene TV program.";
	}
}

function obrisi() {
	global $db, $naslov, $tv_kanal_id, $naziv_kanala, $opis, $url, $epg_url, $odobrenje, $poruka;
	$sql = "DELETE FROM tv_kanali WHERE id_pk=" . $tv_kanal_id;
	$db->baza_upit($sql);
	header("location: admin_tv_kanali.php");
}

$smarty->assign("naslov", $naslov);
$smarty->assign("tv_kanal_id", $tv_kanal_id);
$smarty->assign("naziv_kanala", $naziv_kanala);
$smarty->assign("opis", $opis);
$smarty->assign("url", $url);
$smarty->assign("epg_url", $epg_url);
$smarty->assign("poruka", $poruka);
$smarty->assign("odobrenje", $odobrenje);

foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}
$smarty->display('admin_tv_novi_kanal.tpl');
ob_end_flush();
?>