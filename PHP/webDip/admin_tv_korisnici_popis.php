<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');
$db = new baza;

//----------------------------------------------------------------------------------------
$korisnici=array(); //u polje se sprema popis korisnika





// FUNKCIJE
include_once ('libs/util/akcija.php');
	
function init() {
	global $db,$korisnici; //zbog smartyja moraju biti globalne
	$sql="select * from tv_korisnici tk, tv_tip_korisnika ttk where ttk.id=tk.tip_korisnika_id";
	$rs=$db->baza_upit($sql);
	while($redak=mysql_fetch_assoc($rs)) //u var redak se upisuje rezultat 1 reda iz sql upita
	{$korisnici[]=$redak;}	//u globalnu varijablu korisnici se upisuju svi korisnici

}



foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}
$smarty->assign("korisnici",$korisnici); // smarty dobiva variajblu pod def nazivom i vrijednost te varijable
$smarty->display('admin_tv_korisnici_popis.tpl');
?>