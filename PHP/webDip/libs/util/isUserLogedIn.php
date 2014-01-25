<?php
session_start();

if(isset($_SESSION['korisnicko_ime'])) {
	$smarty->assign("is_loged_in",$_SESSION['korisnicko_ime']);
	$smarty->assign("tip_korisnika_id",$_SESSION['tip_korisnika_id']);
}
	
?>