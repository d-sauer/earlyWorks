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
<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/effects.js"></script>
<script type="text/javascript" src="js/builder.js"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />

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
					echo '<li><a href="./korisnik/korisnik.php" title="Korisnički račun, korisnik:'.$_SESSION['kor_ime'].'"><span>Korisnik</span></a></li>';								
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
  <h1>Ponuda 
  <?php
 	if(isset($_GET['vrsta'])){
		
		switch($_GET['vrsta']){
			case 0:
				echo 'hotela';
				$vrsta_objekta="Hotel";
				break;
			case 1:
				echo 'hostela';
				$vrsta_objekta="Hostel";
				break;
			case 2:
				echo 'kampova';
				$vrsta_objekta="Kamp";				
				break;
			}
	}
	?>
  </h1>
  <?php 
  
  	include_once "./class/baza.php";
	
  	if(isset($_GET['vrsta'])){
		
			//pregled svih hotela koje imamo u ponudi
				$baza = new baza();
				$sqlpodaci="select id_ob, naziv, opis, mjesto, br_zvjezdica, web_adresa from objekt where id_tip=".$_GET['vrsta']." and aktivan=1";				
				$podaci = $baza->query($sqlpodaci);
				
				
					while ($redpodaci = mysql_fetch_object($podaci)) {
						$objekt=$redpodaci->id_ob;
						//broj komentara
						$sql = "SELECT count( * ) FROM komentari WHERE id_ob =" .$objekt;
						$rs=$baza->query($sql);
						$row = mysql_fetch_row($rs);
						$num=$row[0];
						
						echo '<h2><table width="100%"> <tr>';
						echo '<td><span style="font-family:Arial, Helvetica, sans-serif; font-size:18px; color:#FFFFFF;">'.$vrsta_objekta.': '.$redpodaci->naziv .'</span></td>';
						echo '<td align="right">
								<a href="./korisnik/rezervacija.php?objekt='.$objekt.'"><span style="color:#EFFBFB;">Opis smještaja</span> </a>&nbsp;&nbsp;
								<a href="komentari.php?id_ob='.$objekt.'"><span style="color:#EFFBFB;">Komentari ('.$num.')</span> </a></td>';
						echo '<tr></table>';
						echo '<p>Lokacija: '.$redpodaci->mjesto.'</p>';
						$kategorija=$redpodaci->br_zvjezdica;
						echo '<p>Kategorija hotela: ';
						for ($i=0; $i<$kategorija; $i++){
							echo '<img src="slike/zvijezda.png">';
						} 
						echo '<div id="web"><p>Web: <a href="'.$redpodaci->web_adresa.'"><span style="color:#EFFBFB;">Hotel '.$redpodaci->naziv.'</span></a></p></div>';
						echo '<p>Opis:<br /><p>'.$redpodaci->opis.'</p>';
						echo '<p>Slike:</p>';
									
						$sqlslike="select id_ob, path, opis from slike where id_ob='" .$objekt. "'";
						$slike = $baza->query($sqlslike);					
							
						while ($redslike= mysql_fetch_object($slike)) {
							echo '<a href="'.$redslike->path.'" rel="lightbox['.$redslike->id_ob.']"title="'.$redslike->opis.'"> <img src="'.$redslike->path.'" width="100" height="100" border="0"> </a>';
								//echo '<div id="slike"><img src="'.$redslike->path.'" /><br/>'.$redslike->opis.'<br/><br/></div>';
						}
						echo '<br /><br /></h2>';
					}
	}
	
		
  ?>  
  	
  <p>&nbsp;</p>
</div>
</div>
<!--Main end-->

<!--Footer start-->
<div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008</div>
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
