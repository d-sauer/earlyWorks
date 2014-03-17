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
  <h1>Dokumentacija   </h1>
  <hr />
  <h2><a name="sadrzaj" id="sadrzaj"></a>Sadr�aj</h2>
   <ol>
    <li><a href="#opis">Opis projektnog zadatka</a></li>
    <li><a href="#teh">Kori�tene tehnologije i alati</a></li>
    <li><a href="#res">Kori�teni vanjski resursi </a></li>
	<li><a href="#use">Dijagram slu�aja kori�tenja</a></li>
	<li><a href="#act1">Dijagram aktivnosti - rezervacija</a></li>
	<li><a href="#era">ERA model</a></li>
   
	<li><a href="#koris">Korisni�ka dokumentacija</a></li>
    <li><a href="#proj">Projektna dokumentacija</a></li>
  </ol>
  <h2><a name="opis" id="opis"></a>Opis projektnog zadatka</h2>
   <p>Sustav treba omogu�iti vo�enje rezervacija i naplatu smje�taja u hotelima, hostelima i kampovima preko Internet-a. Hoteli i hosteli organizirani su po sobama (va�ni atributi su broj le�aja, kat, pogled i sl), dok su kampovi po parcelama (va�ni atributi m2, hladovina, pogled, red i sl).			
                </p>
                <p>Korisnik mo�e tra�iti slobodni smje�taj (sobu ili parcelu) odre�enih atributa u nekom mjestu, hotelu (hostelu ili kampu) i sl. unutar zahtjevanog razdoblja. Za rezervaciju smje�taja korisnik se mora prijaviti. Rezervacija smje�taja mo�e biti pokrivena osiguranjem koje se posebno pla�a. Kod zahtjeva za rezervacijom smje�taja korisniku se �alje email poruka u kojoj se podaci koje on treba unijeti kao potvrdu identiteta i rezervacije. 			
                </p>
                <p>Korisnik treba imati ra�un u nekoj banci tako da se kod rezervacije smje�taja s njegovog ra�una mo�e prebaciti odre�eni % iznosa kao garancija te tro�kovi osiguranja. Ako ne postoji dovoljan iznos tada rezervacija nije mogu�a. Nakon uspje�ne rezervacije korisniku se emailom �alje ID rezervacije (u predmetu poruke) koji se koristi kod ostalih upita kao �to je smje�taj i pla�anje. Korisnik mo�e zahtjevati poni�tenje rezervacije pri �emu mu se mo�e vratiti dio iznosa garancije u skladu s pravilima (npr. 100 dana prije vra�a se 80%, 50 dana prije 50%, 20 dana prije 20% i sl). Kod rezervacije s osiguranjem mo�e se vratiti 100% iznosa. Svaki smje�tajni objekat (hotel, hostel, kamp) mo�e imati vlastita pravila.			
                </p>
                <p>Korisnik se prijavljuje na recepciji s danom po�etka rezervacije. Nakon zavr�etka kori�tenja slijedi pla�anje ra�una tako da se potrebni iznos prenosi s bankovnog ra�una korisnika. Nakon pla�anja korisniku se emailom �alje ra�un.			
                </p>
                <p>Aplikacija treba imati 3 vrste uloga: administrator, osoblje, korisnik. 
Administrator definira smje�tajne objekte, njihovu organizaciju i jedinice i sl. Administrator mo�e pregledavati nov�ano stanje korisnika, nov�ane transakcije korisnika, prihode smje�tajnih objekata i jedinica i sl. Osoblje prima korisnike s rezervacijom na smje�taj i napla�uje smje�taj na kraju. Osoblje mo�e primiti korisnika bez rezervacije na postoji slobodni smje�taj i napla�uje smje�taj na kraju. Korisnik mo�e dati svoj komentar na smje�taj koji mogu vidjeti ostali korisnici. 		
                </p>
                <p>Potrebno je napraviti RSS za pregledavanje trenutno slobodnog smje�taja. Administracija smje�tajnih objekata (i jedinica) i osoblja mora se provoditi AJAX-om.				
                </p>
	<div align="right">
    	<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
    </div>
                
    <h2><a name="teh" id="teh"></a>Kori�tene tehnologije i alati</h2>
   		<p>
        <ul>
		<li>Kori�tene tehnologije:</li> 
            <ul>            
            	<li>XHTML</li>
                <li>AJAX</li>
                <li>PHP</li>
                <li>MySQL baza podataka</li>
                <li>Apache poslu�itelj</li>
             </ul>
             <br />
        <li>Kori�teni alati:</li> 
            <ul>            
            	<li>WampServer 1.7.4, 2.0b</li>
                <li>Xampp Server 1.6.6a</li>
                <li>Dreamweaver CS 3</li>
                <li>Notepad++</li>
                <li>SSH Secure Shell Client</li>
                <li>FileZilla 3</li>
                <li>DBDesigner 4.0.5.6</li>
             </ul>
        </ul>
  		</p>
		<div align="right">
			<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
        </div>
        
    <h2><a name="res" id="res"></a>Kori�teni vanjski resursi</h2>
   		<p>
        <ul>
		<li>Dizajn:</li> 
            <ul>            
            	<li>Travel Site</li>
                <li>Autor: Web Industry</li>
                <li>Web: <a href="http://industrija.co.yu/">Web Industry</a></li>
                <li>Gotovo grafi�ko rje�enje smo prilagodili na�im potrebama</li>
             </ul>
             <br />
        <li>Kalendar:</li> 
            <ul>            
            	<li>Javascript calendar widget</li>
                <li>Autor: adisan</li>
                <li>Web: <a href="http://codetale.com/2007/02/23/javascript-calendar-widget/">Javascript calendar widget
</a></li>
                <li>Rje�enje smo prilagodili na�im potrebama</li>
             </ul>
             <br />
        <li>Prikaz novosti:</li> 
            <ul>            
            	<li>Multiple Message Vertical Scroller v7.0</li>
                <li>Autor: vbarsan</li>
                <li>Web: <a href="http://vertical-scroller.vbarsan.com/">Javascript Vertical Scroller</a></li>
                <li>Rje�enje smo prilagodili na�im potrebama</li>
             </ul>
             <br />
        <li>Prikaz slika objekata:</li> 
            <ul>            
            	<li>Lightbox v2.04</li>
                <li>Autor: Lokesh Dhakar</li>
                <li>Web: <a href="http://lokeshdhakar.com/projects/lightbox2/">Lokesh Dhakar projects - Lightbox 2</a></li>
                <li>Rje�enje smo prilagodili na�im potrebama</li>
             </ul>
        </ul>
        <div align="right">
			<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
        </div>
    
   <h2><a name="use" id="use"></a>Dijagram slu�aja kori�tenja</h2>
  		<p>
        <div align="center">
		<a href="slike/use.png" target="win2"><img src="slike/use_mali.png" alt="Kliknite za prikaz slike u punoj veli�ini" border="0"/></a>
        <br  />Slika 1. Dijagram slu�aja kori�tenja
        </div>			
  		</p> 
		<div align="right">
			<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
        </div>
   
   <h2><a name="act1" id="act1"></a>Dijagram aktivnosti - rezervacija</h2>
   		<p>
		<div align="center">
		<a href="slike/activ1.png" target="win2"><img src="slike/activ1.png" alt="Kliknite za prikaz slike u punoj veli�ini" width="550" border="0"/></a>
        <br  />Slika 2. Dijagram aktivnosti - rezervacija
        </div>			
  		</p>
		<div align="right">
			<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
        </div>
           
   <h2><a name="era" id="era"></a>ERA model</h2>
   		<p>
        <div align="center">
		<a href="slike/Baze_pzw.png" target="win2"><img src="slike/Baze_pzw.png" alt="Kliknite za prikaz slike u punoj veli�ini" width="650" border="0"/></a>
        <br  />Slika 3. ERA model baze
        </div>
  		</p>
		<div align="right">
			<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
        </div>
        
   <h2><a name="koris" id="koris"></a>Korisni�ka dokumentacija</h2>
        <p>Kliknite na link kako bi otvorili korisni�ku dokumentaciju.</p>
		<a href="booking_help.pdf" target="win2">Pomo� u radu s aplikacijom</a>
	<h2><a name="proj" id="proj"></a>Projektna dokumentacija</h2>
        <p>Kliknite na link kako bi otvorili projektnu dokumentaciju.</p>
		<a href="online_booking.pdf" target="win2">Projektna dokumentacija</a>

<div align="right">
	<a href="#sadrzaj">Povratak na sadr�aj &raquo;</a>
</div>
        
   <h2></h2>
   
    
  <p>&nbsp;</p>
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
