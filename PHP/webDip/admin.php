<?php
session_start();
require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
include_once ('libs/util/isUserLogedIn.php');

$smarty->assign("sadrzaj", "Administrator");



$smarty->display('admin.tpl'); 
?>