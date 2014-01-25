<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}

$msg = "";
if(isset($_GET['poruka']) || isset($_POST['poruka'])) {
	if(isset($_GET['poruka']))
		poruka($_GET['poruka']);
	if(isset($_POST['poruka']))
		poruka($_POST['poruka']);
}

include_once ('libs/util/isUserLogedIn.php');

function poruka($poruka) {
	global $msg;
	$msg = urldecode ($poruka);
}

$smarty->assign('msg', $msg);
$smarty->display('msg.tpl'); 
?>