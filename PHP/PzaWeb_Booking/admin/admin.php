<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
    <title>OnLine Booking - Admin panel</title>
	<!--<link rel="stylesheet" type="text/css" href="admin.css">-->
    <link rel="stylesheet" type="text/css" href="../style.css">
	<script type="text/javascript" src="admin_ajax.js"></script>
   	<script type="text/javascript" src="admin.js"></script>
   
</head>

<body>
<div id="wrap">
<div id="menu">
<!--Menu start-->
  <div id="tabsJ">
  <ul>
    <li><a href="../index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		include_once "../class/baza.php";
		$baza = new baza;

		
		if (isset($_GET['logout'])) {
			session_destroy();
			header('Location: index.php');
		}
	
		if(isset($_SESSION['id_kor'])) {
			$pristup = $_SESSION['pri'];
			
			switch ($pristup) {
				case 0:	//admin
					echo '<li><a href="../admin/admin.php" title="Administracija"><span>Administracija</span></a></li>';
					break;
				case 1:	//korisnik
					echo '<li><a href="../korisnik/korisnik.php" title="Korisnički račun, korisnik:'.$_SESSION['kor_ime'].'"><span>Korisnik</span></a></li>';
					break;
				case 2:	//osoblje
					echo '<li><a href="../objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
				case 3:	//vlasnik
					echo '<li><a href="../objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
			}
			echo '<li><a href="../index.php?logout='.$_SESSION['id_kor'].'" title="Odjava registriranog korisnika"><span>Odjava</span></a></li>';
		}
		else {
        	//echo '<li><a href="../prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
			header('Location: ../error.php?msg=5');
		}
	?>
    <li><a href="../pretrazi.php" title="Pretraživanje smještaja"><span>Pretraživanje</span></a></li>
    <li><a href="../rss.php" title="RSS slobodnog smještaja"><span>RSS</span></a></li>
    <li><a href="../onama.php" title="O nama - TIM 17"><span>O nama</span></a></li>
    <li><a href="../dokumentacija.php" title="Projektna dokumentacija"><span>Dokumentacija</span></a></li>
  </ul>      
</div>
</div>

<!--Menu end-->

    <div class="header">
    	<h2>&nbsp;&nbsp;Online Booking - Admin panel Team_17</h2>
    </div>
 <div id="main">
 	<br/><br/>
    <div class="menuContainer" style="float:left;width:30%;" >
        <ul id="izbornik">
            <li><a href="smjestaj.php" onClick="ajax('smjestaj.php?akt=1','glavna');return false;">Smještaj</a></li>
          <ul>
            <li><a href="smjestaj.php" onClick="ajax('smjestaj.php?akt=objNovi','glavna');return false;">Novi</a></li>
            <li><a href="smjestaj.php" onClick="ajax('smjestaj.php?akt=objIzbor&pakt=1','glavna');return false;">Izmjena</a></li>
            <li><a href="smjestaj.php" onClick="ajax('smjestaj.php?akt=objIzbor&pakt=2','glavna');return false;">Organizacija</a></li>
            <li><a href="smjestaj.php" onClick="ajax('smjestaj.php?akt=objIzbor&pakt=3','glavna');return false;">Dodavanje/Brisanje slika</a></li>
            <li><a href="financije.php" onClick="ajax('financije.php?akt=cjenik','glavna');return false;">Cijenici</a></li>
			<li><a href="financije.php" onClick="ajax('financije.php?akt=cj_odjava','glavna');return false;">Cijenici odjava</a></li>                        
          </ul>
            <li><a href="korisnici.php" onClick="ajax('korisnici.php','glavna');return false;">Korisnici</a></li>
            <li><a href="korisnici.php" onClick="ajax('korisnici.php?akt=osobljeStart','glavna');return false;">Osoblje</a></li>
          <li><a href="financije.php" onClick="ajax('financije.php?akt=prihodi','glavna');return false;">Prihodi</a></li>          
          
        </ul>
    </div>  
	<br/>
    <div id="glavna" class="aktContainer" style="float:right;width:70%;"></div>
</div>

    <!--Footer start-->
    <div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008 | <?php if(isset($_SESSION['id_kor'])) echo 'Logirani korisnik:' .$_SESSION['kor_ime'];?></div>
    <!--Footer end-->
    <div id="bottom_line"></div>
</div>

</body>
</html>

<?php
ob_end_flush();
?>