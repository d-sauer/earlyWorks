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
  <h1>O nama - TIM 17   </h1>
  <h2>Davor Sauer</h2>
  <div align="center">
  <table width="95%">
  <tr>
  	<td width="23%"><img src="slike/sheky.jpg" border="0" width="100" /></td>
    <td width="77%" align="left">
    	 <ul>
                <li><strong>voditelj tima</strong></li><br />
                <li>Baza podataka, dizajn, rezervacija, prikaz objekata</li>
                <li>XHTML, CSS, PHP, Javascript, AJAX</li>
                <li><a href="http://student.foi.hr/~dsauer/PzaWeb/vjezba_2.html">Web stranica Davor Sauer</a></li> 
              
          </ul>
    </td>
  </tr>
  </table>
  </div>
  <h2>Neven Milek</h2>
  <div align="center">
  <table width="95%">
  <tr>
  	<td width="23%"><img src="slike/fotka.jpg" border="0" width="100" /></td>
    <td width="77%" align="left">
    	  <ul>
                <li>Pretraživanje, prikaz objekata, dizajn, dokumentacija, testiranje</li>
                <li>XHTML, CSS, PHP, Javascript, AJAX, RSS</li>
                <li><a href="http://student.foi.hr/~nmilek/PzaWeb/vjezba_2.html">Web stranica Neven Milek</a></li> 
               
          </ul>
    </td>
  </tr>
  </table>
  </div>
  <h2>Marko Todorić</h2>
  <div align="center">
  <table width="95%">
  <tr>
  	<td width="23%"><img src="slike/todoric.jpg" border="0" width="150" /></td>
    <td width="77%" align="left">
    	   <ul>
               <li>Administracija objekata i korisnika, dizajn</li>
               <li>XHTML, CSS, AJAX, Javascript, PHP</li>  
               <li><a href="http://student.foi.hr/~mtodoric/PzaWeb/vjezba_2.html">Web stranica Marko Todorić</a></li> 
               
           </ul>
    </td>
  </tr>
  </table>
  </div>
  <h2>Marko Topolovec</h2>
  <div align="center">
  <table width="95%">
  <tr>
  	<td width="23%"><img src="slike/topo.jpg" border="0" width="100" /></td>
    <td width="77%" align="left">
    	    <ul>
                <li>Pronalaženje primjera smještaja, dizajn, dokumentacija, testiranje</li>
                <li>XHTML, CSS, PHP, RSS</li>
                <li><a href="http://student.foi.hr/~mtopolov/PzaWeb/vjezba_2.html">Web stranica Marko Topolovec</a></li> 
              
 			</ul>
    </td>
  </tr>
  </table>
  </div>
  
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
