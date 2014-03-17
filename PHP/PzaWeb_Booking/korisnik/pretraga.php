<?php
	ob_start();
	session_start();	//Start session
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>Rezultati pretraživanja</title>
<link href="../style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/prikaz.js"></script>

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
    <li><a href="../index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		include_once "../class/baza.php";
		include_once "../class/reg.php";
		$baza = new baza;

		
		if (isset($_GET['logout'])) {
			session_destroy();
			header('Location: ../index.php');
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
        	echo '<li><a href="../prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
			//header('Location: ../error.php?msg=3');
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


<!--Header start-->
<div id="header">
  <div class="title">OnLine Booking</div>
</div>
<!--Header end-->
<div id="border"></div>

<!--Main end-->
<div id="main">

<div id="left" style="padding:10px; width:740px;">
  <h1>Rezultati pretraživanja   </h1>
  
    
<?php 
	include_once "../class/baza.php";
	$baza=new baza;
	
	if(isset($_POST['search'])){
		
		$tip_smjestaj=$_POST['tip_smjestaj'];
		$pocetak=$_POST['pocetak'];		
		$datum_poc=date('Y-m-d',strtotime($pocetak));
		$kraj=$_POST['kraj'];
		$datum_kraj=date('Y-m-d', strtotime($kraj));
		
		
		$hotel_kategor=$_POST['kategor'];
		$hotel_tip_sobe=$_POST['soba'];
		$hotel_krevet=$_POST['krevet'];
		$hotel_pogled=$_POST['pogled'];
		
		$hostel_krevet=$_POST['kreveth'];
		$hostel_pogled=$_POST['pogledh'];
		
		$velicina=$_POST['velicina'];
		$sunce=$_POST['sunce'];	
			
	}
	
	switch ($tip_smjestaj){
		//>>>>>>>>>>>>>>>>PRETRAŽIVANJE HOTELA>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>POČETAK>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		case 1:
			$hot_kate='';
			$hot_soba='';
			$hot_krevet='';
			$hot_pogled='';
			
			echo '<div id="hotel">';
			echo 'Za pretraživanje su korišteni ovi podaci<br /><br />';
			echo 'Tip smještaja: Hotel<br />';
			echo 'Razdoblje pretraživanja: od '.$pocetak.' do '.$kraj.'<br />';
			
			//ispis kategorija hotela
			switch($hotel_kategor){
				case 0:
					//svejedno
					$p_hotel_kategor='Svejedno';
					
					$sql_hotel_kategor='select s.id_sm from smjestaj s, objekt o where s.id_ob=o.id_ob and o.br_zvjezdica in (1,2,3,4,5)';
					$rez_hotel_kategor=$baza->query($sql_hotel_kategor);
					$red=mysql_fetch_object($rez_hotel_kategor);					
					while ($reza=mysql_fetch_object($rez_hotel_kategor)){
						$poz=strpos($hot_kate, $reza->id_sm);
						if($poz===false){
							$hot_kate .= $reza->id_sm.',';
						}
					}
					break;
				case 1:
					//dvije zvijezdice
					$p_hotel_kategor='<img src="../slike/zvijezda.png" alt="1"><img src="../slike/zvijezda.png" alt="2">';
					
					$sql_hotel_kategor='select s.id_sm from smjestaj s, objekt o where s.id_ob=o.id_ob and o.br_zvjezdica=2';
					$rez_hotel_kategor=$baza->query($sql_hotel_kategor);
					$red=mysql_fetch_object($rez_hotel_kategor);					
					while ($reza=mysql_fetch_object($rez_hotel_kategor)){
						$poz=strpos($hot_kate, $reza->id_sm);
						if($poz===false){
							$hot_kate .= $reza->id_sm.',';
						}
					}
					
					break;
				case 2:
					//tri zvijezdice
					$p_hotel_kategor='<img src="../slike/zvijezda.png" alt="1"><img src="../slike/zvijezda.png" alt="2"><img src="../slike/zvijezda.png" alt="3">';
										
					$sql_hotel_kategor='select s.id_sm from smjestaj s, objekt o where s.id_ob=o.id_ob and o.br_zvjezdica=3';
					$rez_hotel_kategor=$baza->query($sql_hotel_kategor);					
					while ($reza=mysql_fetch_object($rez_hotel_kategor)){
						$poz=strpos($hot_kate, $reza->id_sm);
						if($poz===false){
							$hot_kate .= $reza->id_sm.',';
						}
					}
					
					break;
				case 3:
					//četiri zvijezdice
					$p_hotel_kategor='<img src="../slike/zvijezda.png" alt="1"><img src="../slike/zvijezda.png" alt="2"><img src="../slike/zvijezda.png" alt="3"><img src="../slike/zvijezda.png" alt="4">';
					
					$sql_hotel_kategor='select s.id_sm from smjestaj s, objekt o where s.id_ob=o.id_ob and o.br_zvjezdica=4';
					$rez_hotel_kategor=$baza->query($sql_hotel_kategor);					
					while ($reza=mysql_fetch_object($rez_hotel_kategor)){
						$poz=strpos($hot_kate, $reza->id_sm);
						if($poz===false){
							$hot_kate .= $reza->id_sm.',';
						}
					}
					
					break;
				case 4:
					//pet zvijezdica
					$p_hotel_kategor='<img src="../slike/zvijezda.png" alt="1"><img src="../slike/zvijezda.png" alt="2"><img src="../slike/zvijezda.png" alt="3"><img src="../slike/zvijezda.png" alt="4"><img src="../slike/zvijezda.png" alt="5">';
					
					$sql_hotel_kategor='select s.id_sm from smjestaj s, objekt o where s.id_ob=o.id_ob and o.br_zvjezdica=5';
					$rez_hotel_kategor=$baza->query($sql_hotel_kategor);					
					while ($reza=mysql_fetch_object($rez_hotel_kategor)){
						$poz=strpos($hot_kate, $reza->id_sm);
						if($poz===false){
							$hot_kate .= $reza->id_sm.',';
						}
					}
				
				
			} //switch($hotel_kategor)
			$kategorija_hotel=rtrim($hot_kate,",");			
			echo 'Kategorija hotela: '.$p_hotel_kategor.'<br />';
			
			
			//ispis tip sobe			
			switch ($hotel_tip_sobe){
				case 0:
					//svejedno
					$p_hotel_tip_sobe='Svejedno';
					$sql_hotel_tip_sobe="select distinct s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=0 and p.id_sm=s.id_sm and p.id_atr=4";
					$rez_hotel_tip_sobe=$baza->query($sql_hotel_tip_sobe);					
					while ($tipsobe=mysql_fetch_object($rez_hotel_tip_sobe)){
						$poz=strpos($hot_soba, $tipsobe->id_sm);
						if($poz===false){
							$hot_soba .= $tipsobe->id_sm.',';
						}
					}
					
					break;
				
				case 1:
					//soba
					$p_hotel_tip_sobe='Soba';
					
					$sql_hotel_tip_sobe="select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and opis='Soba'";
					$rez_hotel_tip_sobe=$baza->query($sql_hotel_tip_sobe);					
					while ($tipsobe=mysql_fetch_object($rez_hotel_tip_sobe)){
						$poz=strpos($hot_soba, $tipsobe->id_sm);
						if($poz===false){
							$hot_soba .= $tipsobe->id_sm.',';
						}
					}
					
					break;
					
				case 2:
					//apartman
					$p_hotel_tip_sobe='Apartman';
					
					$sql_hotel_tip_sobe="select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and opis='Apartman'";
					$rez_hotel_tip_sobe=$baza->query($sql_hotel_tip_sobe);					
					while ($tipsobe=mysql_fetch_object($rez_hotel_tip_sobe)){
						$poz=strpos($hot_soba, $tipsobe->id_sm);
						if($poz===false){
							$hot_soba .= $tipsobe->id_sm.',';
						}
					}
					
					
					
			}//switch ($hotel_tip_sobe)				
			$soba_hotel=rtrim($hot_soba,",");				
			echo 'Tip sobe: '.$p_hotel_tip_sobe.'<br />';
			
			//ispis vrste kreveta
			switch ($hotel_krevet){
				case 0:
					//svejedno
					$p_hotel_krevet='Svejedno';
					$sql_hotel_krevet='select distinct s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=0 and p.id_sm=s.id_sm';
					$rez_hotel_krevet=$baza->query($sql_hotel_krevet);					
					while ($reza=mysql_fetch_object($rez_hotel_krevet)){
						$poz=strpos($hot_krevet, $reza->id_sm);
						if($poz===false){
							$hot_krevet .= $reza->id_sm.',';
						}
					}
					break;

				case 1:
					//običan krevet
					$p_hotel_krevet='Obični krevet';
					
					$sql_hotel_krevet='select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and o.id_atr=3';
					$rez_hotel_krevet=$baza->query($sql_hotel_krevet);					
					while ($reza=mysql_fetch_object($rez_hotel_krevet)){
						$poz=strpos($hot_krevet, $reza->id_sm);
						if($poz===false){
							$hot_krevet .= $reza->id_sm.',';
						}
					}
					
					break;
					
				case 2:
					//bračni krevet
					$p_hotel_krevet='Bračni krevet';
					
					$sql_hotel_krevet='select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and o.id_atr=2';
					$rez_hotel_krevet=$baza->query($sql_hotel_krevet);					
					while ($reza=mysql_fetch_object($rez_hotel_krevet)){
						$poz=strpos($hot_krevet, $reza->id_sm);
						if($poz===false){
							$hot_krevet .= $reza->id_sm.',';
						}
					}
					
					break;
					
				case 3:
					//običan i bračni krevet
					$p_hotel_krevet="Običan i bračni krevet";
					$sql_hotel_krevet="select distinct id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and o.id_atr in (2,3)";
					$rez_hotel_krevet=$baza->query($sql_hotel_krevet);					
					while ($reza=mysql_fetch_object($rez_hotel_krevet)){
						$poz=strpos($hot_krevet, $reza->id_sm);
						if($poz===false){
							$hot_krevet .= $reza->id_sm.',';
						}
					}
					
			}//switch(hotel_krevet)
			$krevet_hotel=rtrim($hot_krevet,",");
			echo 'Vrsta kreveta: '.$p_hotel_krevet.'<br />';
			
			switch ($hotel_pogled){
				case 0:
					//svejedno
					$p_hotel_pogled='Svejedno';
					$sql_hotel_pogled="select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=0 and p.id_sm=s.id_sm and p.id_atr=17";
					$rez_hotel_pogled=$baza->query($sql_hotel_pogled);					
					while ($reza=mysql_fetch_object($rez_hotel_pogled)){
						$poz=strpos($hot_pogled, $reza->id_sm);
						if($poz===false){
							$hot_pogled .= $reza->id_sm.',';
						}
					}
					break;
				
				case 1:
					//pogled na more
					$p_hotel_pogled="Pogled na more";
					$sql_hotel_pogled="select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and o.id_atr=17 and o.vrijednost=1";
					$rez_hotel_pogled=$baza->query($sql_hotel_pogled);					
					while ($reza=mysql_fetch_object($rez_hotel_pogled)){
						$poz=strpos($hot_pogled, $reza->id_sm);
						if($poz===false){
							$hot_pogled .= $reza->id_sm.',';
						}
					}
					
					break;
					
				case 2:
					//pogled na park
					$p_hotel_pogled="Pogled na park";
					$sql_hotel_pogled="select id_sm from opis o, atributi a where o.id_atr=a.id_atr and a.id_tip=0 and o.id_atr=17 and o.vrijednost=2";	
					$rez_hotel_pogled=$baza->query($sql_hotel_pogled);					
					while ($reza=mysql_fetch_object($rez_hotel_pogled)){
						$poz=strpos($hot_pogled, $reza->id_sm);
						if($poz===false){
							$hot_pogled .= $reza->id_sm.',';
						}
					}				
					
			}			
			$pogled_hotel=rtrim($hot_pogled,",");
			echo 'Pogled: '.$p_hotel_pogled.'<br />';
				
			$polje_kategorija = explode(",", $kategorija_hotel);	
			$polje_soba = explode(",", $soba_hotel);
			$polje_krevet = explode(",", $krevet_hotel);
			$polje_pogled = explode(",", $hot_pogled);
			$kategorija_tip = array_intersect($polje_kategorija, $polje_soba);
			$kategorija_tip_krevet = array_intersect($kategorija_tip, $polje_krevet);	
			$svihoteli = array_intersect($kategorija_tip_krevet, $polje_pogled);
			if(count($svihoteli)==0){
				$spojeno_hotel="(0)";	
			}
			else{
				$spojeno_hotel ="(".implode(",", $svihoteli).")";
			}	
			
			
			$sql_hoteli="select s.id_sm, o.naziv, s.oznaka from objekt o, smjestaj s where o.id_ob=s.id_ob and s.id_sm not in (select r.id_sm from rezervacija r, smjestaj s, objekt o where rez_od between '".$datum_poc."' and '".$datum_kraj."' or rez_do between '".$datum_poc."' and '".$datum_kraj."' and r.id_sm=s.id_sm and s.id_ob=o.id_ob and o.id_tip=0) and s.id_sm in ".$spojeno_hotel." ";
			$reza_hoteli=$baza->query($sql_hoteli);			
			$broj_hotel=mysql_num_rows($reza_hoteli);
			if ($broj_hotel==0){
				echo '<br /><div align="center">Nažalost nema slobodnih soba koje bi odgovarale Vašim potrebama</div><br />';
			}else{
				while($ispis_hotel=mysql_fetch_object($reza_hoteli)){
					$param=$ispis_hotel->id_sm;
					echo '<h2>Hotel '.$ispis_hotel->naziv.', '.$ispis_hotel->oznaka.'</h2>';
					echo '<form name="rezerva" id="rezerva" method="get" action="rezervacija.php">';
					echo '<input type="hidden" name="date_from" id="datum1" value="'.$pocetak.'" />';
					echo '<input type="hidden" name="date_to" id="datum2" value="'.$kraj.'" />';
					echo '<input type="hidden" name="rezerviraj" id="smjestaj" value="'.$ispis_hotel->id_sm.'" />';
					$smjesti="smjesti".$ispis_hotel->id_sm;
					$stranica="'prikaz.php?s=".$ispis_hotel->id_sm."','".$smjesti;
					
					echo '<input type="submit" name="rezerv" value="Rezerviraj" />';
					echo '<input type="button" name="detalji'.$ispis_hotel->id_sm.'" id="detalji'.$ispis_hotel->id_sm.'" value="Detalji" onclick="getData('.$stranica.'\'); pokazi(\''.$ispis_hotel->id_sm.'\')" />';
					echo '</form>';						
					echo "<div id=".$smjesti.">";					
					echo "</div>";	
				}
			}	
			
			break;	
		//<<<<<<<<<<KRAJ<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<PRETRAŽIVANJE HOTELA<<<<<<<<<<<<<<<
		
		//>>>>>>PRETRAŽIVANJE HOSTELA>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>POČETAK>>>>>>>>>>>>>>>>>>>
		case 2:
			$host_krevet='';
			$host_pogled='';
			echo '<div id="hostel">';
			echo 'Za pretraživanje su korišteni ovi podaci<br /><br />';
			echo 'Tip smještaja: Hostel<br />';
			echo 'Razdoblje pretraživanja: od '.$pocetak.' do '.$kraj.'<br />';
			if ($zupa != 0){
				echo 'Odabrana županija: '.$zupanija.'<br /><br />';
			}
			else{
				echo 'Odabrana županija: Svejedno<br /><br />';
			}
			
			echo '<hr />';
		
			
			switch ($hostel_krevet){
				case 0:
					//svejedno
					$p_hostel_krevet='Svejedno';
					$sql_hostel_krevet='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and (p.id_atr=9 or p.id_atr=10)';
					$rez_hostel_krevet=$baza->query($sql_hostel_krevet);					
					while ($reza=mysql_fetch_object($rez_hostel_krevet)){
						$poz=strpos($host_krevet, $reza->id_sm);
						if($poz===false){
							$host_krevet .= $reza->id_sm.',';
						}
					}	
					break;
					
				case 1:
					//obični krevet
					$p_hostel_krevet='Obični krevet';
					$sql_hostel_krevet='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and p.id_atr=9';
					$rez_hostel_krevet=$baza->query($sql_hostel_krevet);					
					while ($reza=mysql_fetch_object($rez_hostel_krevet)){
						$poz=strpos($host_krevet, $reza->id_sm);
						if($poz===false){
							$host_krevet .= $reza->id_sm.',';
						}
					}	
					break;
					
				case 3:
					//krevet na kat	
					$p_hostel_krevet='Krevet na kat';
					$sql_hostel_krevet='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and p.id_atr=10';
					$rez_hostel_krevet=$baza->query($sql_hostel_krevet);					
					while ($reza=mysql_fetch_object($rez_hostel_krevet)){
						$poz=strpos($host_krevet, $reza->id_sm);
						if($poz===false){
							$host_krevet .= $reza->id_sm.',';
						}
					}			
			}
			$krevet_hostel=rtrim($host_krevet,",");
			echo 'Vrsta kreveta: '.$p_hostel_krevet.'<br />';
			
			switch ($hostel_pogled){
				case 0:
					//svejedno
					$p_hostel_pogled='Svejedno';
					$sql_hostel_pogled='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and p.id_atr=18';
					$rez_hostel_pogled=$baza->query($sql_hostel_pogled);					
					while ($reza=mysql_fetch_object($rez_hostel_pogled)){
						$poz=strpos($host_pogled, $reza->id_sm);
						if($poz===false){
							$host_pogled .= $reza->id_sm.',';
						}
					}			
					break;
				
				case 1:
					//pogled na more
					$p_hostel_pogled='Pogled na more';
					$sql_hostel_pogled='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and p.id_atr=18 and p.vrijednost=1';
					$rez_hostel_pogled=$baza->query($sql_hostel_pogled);					
					while ($reza=mysql_fetch_object($rez_hostel_pogled)){
						$poz=strpos($host_pogled, $reza->id_sm);
						if($poz===false){
							$host_pogled .= $reza->id_sm.',';
						}
					}			
					break;
					
				case 2:
					//pogled na park
					$p_hostel_pogled='Pogled na park';
					$sql_hostel_pogled='select s.id_sm from smjestaj s, objekt o, tip t, opis p where s.id_ob=o.id_ob and o.id_tip=t.id_tip and t.id_tip=1 and p.id_sm=s.id_sm and p.id_atr=18 and p.vrijednost=2';
					$rez_hostel_pogled=$baza->query($sql_hostel_pogled);					
					while ($reza=mysql_fetch_object($rez_hostel_pogled)){
						$poz=strpos($host_pogled, $reza->id_sm);
						if($poz===false){
							$host_pogled .= $reza->id_sm.',';
						}
					}										
			}	
			$pogled_hostel=rtrim($host_pogled,",");
			echo 'Pogled: '.$p_hostel_pogled.'<br />';
			
			$polje_kreveth = explode(",", $krevet_hostel);
			$polje_pogledh = explode(",", $pogled_hostel);
			$svihosteli = array_intersect($polje_kreveth, $polje_pogledh);	
			if(count($svihosteli)==0){
				$spojeno_hostel="(0)";	
			}
			else{
				$spojeno_hostel ="(".implode(",", $svihosteli).")";	
			}	
			
			$sql_hosteli="select s.id_sm, o.naziv, s.oznaka from objekt o, smjestaj s where o.id_ob=s.id_ob and s.id_sm not in (select r.id_sm from rezervacija r, smjestaj s, objekt o where rez_od between '".$datum_poc."' and '".$datum_kraj."' or rez_do between '".$datum_poc."' and '".$datum_kraj."' and r.id_sm=s.id_sm and s.id_ob=o.id_ob and o.id_tip=2) and s.id_sm in ".$spojeno_hostel." ";
			$reza_hosteli=$baza->query($sql_hosteli);
			$broj_hostel=mysql_num_rows($reza_hosteli);
			if ($broj_hostel==0){
				echo 'Nažalost nema slobodnih soba koje bi odgovarale Vašim potrebama<br />';
			}else{
				while($ispis_hostel=mysql_fetch_object($reza_hosteli)){
					echo '<br />'.$ispis_hostel->id_sm.', Hostel '.$ispis_hostel->naziv.', '.$ispis_hostel->oznaka.'<br /><br />';
					echo '<form name="rezerva" id="rezerva" method="get" action="rezervacija.php">';
					echo '<input type="hidden" name="date_from" id="datum1" value="'.$pocetak.'" />';
					echo '<input type="hidden" name="date_to" id="datum2" value="'.$kraj.'" />';
					echo '<input type="hidden" name="rezerviraj" id="smjestaj" value="'.$ispis_hostel->id_sm.'" />';
										
					$smjesti="smjesti".$ispis_hostel->id_sm;
					$stranica="'prikaz.php?s=".$ispis_hostel->id_sm."','".$smjesti;
					
					echo '<input type="submit" name="rezerv" value="Rezerviraj" />';
					echo '<input type="button" name="detalji'.$ispis_hostel->id_sm.'" id="detalji'.$ispis_hostel->id_sm.'" value="Detalji" onclick="getData('.$stranica.'\'); pokazi(\''.$ispis_hostel->id_sm.'\')" />';
					echo '</form>';					
					echo "<div id=".$smjesti."> </div>";
					
				}//kraj while
			}//kraj else			
			
			break;
		//<<<<<<<<KRAJ<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<PRETRAŽIVANJE HOSTELA<<<<<<<<<<<<<<<<
			
		//>>>>>>>>>>PRETRAŽIVANJE KAMPOVA>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>POČETAK>>>>>>>>>
		case 3:
			$kam_vel='';
			$kam_sun='';
			
			echo '<div id="kamp">';
			echo 'Za pretraživanje su korišteni ovi podaci<br /><br />';
			echo 'Tip smještaja: Kamp<br />';
			echo 'Razdoblje pretraživanja: od '.$pocetak.' do '.$kraj.'<br />';
			if ($zupa != 0){
				echo 'Odabrana županija: '.$zupanija.'<br /><br />';
			}
			else{
				echo 'Odabrana županija: Svejedno<br /><br />';
			}
			
			switch ($velicina){
				case 0:
					//svejedno 
					$p_kamp_velicina='Svejedno';
					$sql_kamp_velicina='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=13';
					$rez_kamp_velicina=$baza->query($sql_kamp_velicina);					
					while ($reza=mysql_fetch_object($rez_kamp_velicina)){
						$poz=strpos($kam_vel, $reza->id_sm);
						if($poz===false){
							$kam_vel .= $reza->id_sm.',';
						}
					}			
					break;
				
				case 1:
					//parcela za auto i šator 
					$p_kamp_velicina='Parcela za auto i šator';
					$sql_kamp_velicina='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=13 and p.vrijednost=1';
					$rez_kamp_velicina=$baza->query($sql_kamp_velicina);					
					while ($reza=mysql_fetch_object($rez_kamp_velicina)){
						$poz=strpos($kam_vel, $reza->id_sm);
						if($poz===false){
							$kam_vel .= $reza->id_sm.',';
						}
					}		
					break;
					
				case 2:
					//parcela za auto-prikolicu
					$p_kamp_velicina='Parcela za auto-prikolicu';
					$sql_kamp_velicina='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=13 and p.vrijednost=2';
					$rez_kamp_velicina=$baza->query($sql_kamp_velicina);					
					while ($reza=mysql_fetch_object($rez_kamp_velicina)){
						$poz=strpos($kam_vel, $reza->id_sm);
						if($poz===false){
							$kam_vel .= $reza->id_sm.',';
						}
					}	
					break;
					
				case 3:
					//parcela za kamper
					$p_kamp_velicina='Parcela za kamper';
					$sql_kamp_velicina='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=13 and p.vrijednost=3';
					$rez_kamp_velicina=$baza->query($sql_kamp_velicina);					
					while ($reza=mysql_fetch_object($rez_kamp_velicina)){
						$poz=strpos($kam_vel, $reza->id_sm);
						if($poz===false){
							$kam_vel .= $reza->id_sm.',';
						}
					}					
			}
			$velicina_kamp=rtrim($kam_vel,",");
			echo 'Veličina parcele: '.$p_kamp_velicina.'<br />';
			switch($sunce){
				case 0:
					//svejedno
					$p_kamp_sunce='Svejedno';
					$sql_kamp_sunce='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=16';
					$rez_kamp_sunce=$baza->query($sql_kamp_sunce);					
					while ($reza=mysql_fetch_object($rez_kamp_sunce)){
						$poz=strpos($kam_sun, $reza->id_sm);
						if($poz===false){
							$kam_sun .= $reza->id_sm.',';
						}
					}		
					break;
					
				case 1:
					//parcela na suncu
					$p_kamp_sunce='Osunčana parcela';
					$sql_kamp_sunce='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=16 and p.vrijednost=1';
					$rez_kamp_sunce=$baza->query($sql_kamp_sunce);					
					while ($reza=mysql_fetch_object($rez_kamp_sunce)){
						$poz=strpos($kam_sun, $reza->id_sm);
						if($poz===false){
							$kam_sun .= $reza->id_sm.',';
						}
					}		
					break;
					
				case 2:
					//parcela u hladovini
					$p_kamp_sunce='Parcela u hladovini';
					$sql_kamp_sunce='select distinct s.id_sm from smjestaj s, objekt o, opis p, atributi a where o.id_ob=s.id_ob and s.id_sm=p.id_sm and p.id_atr=16 and p.vrijednost=2';
					$rez_kamp_sunce=$baza->query($sql_kamp_sunce);					
					while ($reza=mysql_fetch_object($rez_kamp_sunce)){
						$poz=strpos($kam_sun, $reza->id_sm);
						if($poz===false){
							$kam_sun .= $reza->id_sm.',';
						}
					}		
			}
			$sunce_kamp=rtrim($kam_sun,",");
			echo 'Osunčanost parcele: '.$p_kamp_sunce.'<br />';
			
			$polje_sunce = explode(",", $sunce_kamp);
			$polje_velicina = explode(",", $velicina_kamp);
			$svikampovi = array_intersect($polje_sunce, $polje_velicina);			
			$arrayObject = new ArrayObject($svikampovi);				
			if((count($svikampovi)==0) || (empty($arrayObject['0']))){
				$spojeno_kamp="(0)";
			}
			else{
				$spojeno_kamp ='('.implode(",", $svikampovi).')';
			}
			
			
			$sql_kampovi="select s.id_sm, o.naziv, s.oznaka from objekt o, smjestaj s where o.id_ob=s.id_ob and s.id_sm not in (select r.id_sm from rezervacija r, smjestaj s, objekt o where rez_od between '".$datum_poc."' and '".$datum_kraj."' or rez_do between '".$datum_poc."' and '".$datum_kraj."' and r.id_sm=s.id_sm and s.id_ob=o.id_ob and o.id_tip=2) and s.id_sm in ".$spojeno_kamp." ";
			$reza_kampovi=$baza->query($sql_kampovi);
			$broj_kamp=mysql_num_rows($reza_kampovi);
			
			if ($broj_kamp==0){
				echo '<div align="center"><br />Nažalost nema slobodnih parcela koje bi odgovarale Vašim potrebama</div><br />';
			}else{
				while($ispis_kamp=mysql_fetch_object($reza_kampovi)){
					echo '<br />'.$ispis_kamp->id_sm.', Kamp '.$ispis_kamp->naziv.', '.$ispis_kamp->oznaka.'<br /><br />';
					echo '<form name="rezerva" id="rezerva" method="get" action="rezervacija.php">';
					echo '<input type="hidden" name="date_from" id="datum1" value="'.$pocetak.'" />';
					echo '<input type="hidden" name="date_to" id="datum2" value="'.$kraj.'" />';
					echo '<input type="hidden" name="rezerviraj" id="smjestaj" value="'.$ispis_kamp->id_sm.'" />';
										
					$smjesti="smjesti".$ispis_kamp->id_sm;
					$stranica="'prikaz.php?s=".$ispis_kamp->id_sm."','".$smjesti;
					
					echo '<input type="submit" name="rezerv" value="Rezerviraj" />';
					echo '<input type="button" name="detalji'.$ispis_kamp->id_sm.'" id="detalji'.$ispis_kamp->id_sm.'" value="Detalji" onclick="getData('.$stranica.'\'); pokazi(\''.$ispis_kamp->id_sm.'\')" />';
					echo '</form>';						
					echo "<div id=".$smjesti."> </div>";						
					
				}//kraj while
			}//kraj else
			
		//<<<<<<<<KRAJ<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<PRETRAŽIVANJE KAMPOVA<<<<<<<<<<<<<<	
	
	}//kraj switch(tip_smjestaj)		
?>


</div>
</div>
<!--Main end-->

<!--Footer start-->
<div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008 <?php if(isset($_SESSION['id_kor'])) echo 'Logirani korisnik:' .$_SESSION['kor_ime'] ;?></div>
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

