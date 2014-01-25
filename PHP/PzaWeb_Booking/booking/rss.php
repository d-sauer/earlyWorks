<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>OnLine Booking</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
</style>
</head>

<body>
<div id="wrap">
<div id="menu">
<!--Menu start-->
  <div id="tabsJ">
  <ul>
    <li><a href="index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		if (isset($_GET['logout'])) {
			session_destroy();
			header('Location: index.php');
		}
	
		if(isset($_SESSION['id_kor'])) {
			$pristup = $_SESSION['pri'];
			
			switch ($pristup) {
				case 0:	//admin
					echo '<li><a href="./admin/admin.php" title="Administracija"><span>Administracija</span></a></li>';
					break;
				case 1:	//korisnik
					break;
				case 2:	//osoblje
					echo '<li><a href="./objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
				case 3:	//vlasnik
					echo '<li><a href="./objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
			}
			echo '<li><a href="index.php?logout='.$_SESSION['id_kor'].'" title="Odjava registriranog korisnika"><span>Odjava</span></a></li>';
		}
		else {
        	echo '<li><a href="prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
		}
	?>
    <li><a href="pretrazi.php" title="Pretraživanje smještaja"><span>Pretraživanje</span></a></li>
    <li><a href="rss.php" title="RSS slobodnog smještaja"><span>RSS</span></a></li>
    <li><a href="onama.html" title="O nama - TIM 17"><span>O nama</span></a></li>
    <li><a href="dokumentacija.html" title="Projektna dokumentacija"><span>Dokumentacija</span></a></li>
  </ul>      
</div>
</div>

<!--Menu end-->


<!--Header start-->
<div id="header">
  <div class="title">OnLine Booking</div>
</div>
<!--Header end-->
<div id="border"></div>

<!--Main end-->
<div id="main">

<div id="left" style="padding:10px; width:740px;">
  <h1>RSS slobodnog smještaja   </h1>
<?php 
/*
	include_once "./class/baza.php";
	$baza=new baza;
	
	$sada=$baza->vrijeme();
	$danas=date('Y-m-d',strtotime(date("r")));
	
	$fajl=fopen("rss.xml", "w");
			
			$_xml="<?xml version=\"1.0\" encoding=\"windows-1250\" ?>\r\n";
			$_xml .= "<rss version=\"2.0\">";
			$_xml .="<channel>
			  <title>Slobodan smještaj - Online Booking TIM 17</title>
			  <link>http://arka.foi.hr/PzaWeb/PzaWeb2007_17/rss.php</link>
			  <description>".$sada." - Pregled slobodnih smještajnih objekata</description>
			  <language>en-us</language>
			  <pubDate>".$sada."</pubDate>
			  <lastBuildDate>".$sada."</lastBuildDate>
			  <webMaster>webmaster@tim17.hr</webMaster>";
			
			$sqlupit="select s.id_sm, o.naziv, s.oznaka, t.naziv from smjestaj s, objekt o, tip t where s.id_ob=o.id_ob and o.id_tip=t.id_tip and s.id_sm not in (select id_sm from rezervacija where ".$danas." between rez_od and rez_do)";
			$sqlRez=$baza->query($sqlupit);			
			while ($red=mysql_fetch_array($sqlRez)){
			
				$_xml .="<item>
						<title>".$red[3]." ".$red[1]."</title>
						<link>http://arka.foi.hr/PzaWeb/PzaWeb2007_17/korisnik/rezervacija.php?rezerviraj=".$red[0]."</link>
						<description> ".$red[2]."</description>
						</item>\r\n";			
			}
			$_xml .="</channel></rss>";
			
			fwrite ($fajl, $_xml);
			fclose($fajl);
			header ('Location: rss.php');
			header ('Location: rss.xml');
*/			
			header ('Location: rss.xml');

?>
</div>
</div>
<!--Main end-->

<!--Footer start-->
<div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008 | <?php if(isset($_SESSION['id_kor'])) echo 'Logirani korisnik:' .$_SESSION['kor_ime'];?></div>
<!--Footer end-->
<div id="bottom_line"></div>
</div>
<p>
    <a href="http://validator.w3.org/check?uri=referer"><img
        src="http://www.w3.org/Icons/valid-xhtml10-blue"
        alt="Valid XHTML 1.0 Transitional" height="31" width="88" border="0" /></a> <a href="http://jigsaw.w3.org/css-validator/">
  <img style="border:0;width:88px;height:31px"
       src="http://jigsaw.w3.org/css-validator/images/vcss-blue" 
       alt="Valid CSS!" />
 </a>
  </p>
</body>
</html>
