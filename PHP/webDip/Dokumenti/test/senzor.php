<html>
<head>
<title>PHP - Temperatura</title>
<link href="senzor.css" rel="stylesheet" type="text/css" />
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>




<?php
include_once '../../libs/util/citaj_epg.php';
include_once '../../libs/util/baza.php';
$epg = new citaj_epg;
$db = new baza;

$vrijeme =  date('Y-m-d H:i:s', mktime(8, 0, 0, 5, 13, 2011));
$epg->citajEPG('http://tvprofil.net/xmltv/data/htv1.hr/weekly_htv1.hr_tvprofil.net.xml', $vrijeme,'',$db);

?>

</body>
</html>
