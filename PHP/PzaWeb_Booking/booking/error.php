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
    <li><a href="index.php" title="Po�etna stranica"><span>Po�etak</span></a></li>
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
					echo '<li><a href="./korisnik/korisnik.php" title="Korisni�ki ra�un, korisnik:'.$_SESSION['kor_ime'].'"><span>Korisnik</span></a></li>';
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
    <li><a href="pretrazi.php" title="Pretra�ivanje smje�taja"><span>Pretra�ivanje</span></a></li>
    <li><a href="rss.php" title="RSS slobodnog smje�taja"><span>RSS</span></a></li>
    <li><a href="onama.php" title="O nama - TIM 17"><span>O nama</span></a></li>
    <li><a href="dokumentacija.php" title="Projektna dokumentacija"><span>Dokumentacija</span></a></li>
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
	<h1>Do�lo je do pogre�ke</h1>
    	<?php
			switch($_GET['msg']) {
				case 0:
					echo "<p>Pogre�ka prilikom registracije. Poku�ajte ponovo.</p>";
					break;
				case 1:
					echo "<p>Do�lo je do pogre�ke prilikom registracije korisni�kog ra�una<br/>Poku�ajte ponovo.</p>";
					break;
				case 2:
					echo "<p>Do�lo je do pogre�ke u radu servisa! <br/>Poku�ajte kasnije ponovo.</p>";
					break;
				case 3:
					echo "<p>Niste se prijavljeni na sustav kao osoblje smje�tajnog objekta!<br/>Prijavite se na sustav!</p>";
					break;
				case 4:
					echo "<p>Nepostojeca ili neispravna rezervacija!</p>";
					break;
				case 5:
					echo "<p>Niste prijavljeni na sustav kao korisnik!<br/>Prijavite se na sustav!</p>";
					break;					
				case 6:
					echo "<p>Korisnik nema dovoljnu svotu na ra�unu, da bi podmirio trenutnu stanje transakcije!</p>";
					break;					

			}
			//-- log's
			include_once 'class/log.php';
			$log = new log;
			$log->WriteLog();
		
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
       src="http://jigsaw.w3.org/css-validator/images/vcss" 
       alt="Valid CSS!" />
 </a>
  </p>
</body>
</html>

<?php
ob_end_flush();
?>
