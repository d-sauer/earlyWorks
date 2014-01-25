<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}
include_once ('libs/util/isUserLogedIn.php');





$smarty->display('admin_tv_korisnici.tpl');
?>