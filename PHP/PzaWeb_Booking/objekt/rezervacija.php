<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>OnLine Booking</title>
<link href="../style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
</style>

<!--Kalendar-->
<link rel="stylesheet" title="CSS StyleSheet" href="../kalendar/cwcalendar.css" type="text/css" media="all" />		
<script type="text/javascript" src="../kalendar/calendar.js"></script>
<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
.EnqList TD, .EnqList TH{
	background:white;
	padding:0px 2px;
}

.CalFld{background:#FFFFD8;}
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
			header('Location: ../error.php?msg=3');
		}
	?>
    <li><a href="../pretrazi.php" title="Pretraživanje smještaja"><span>Pretraživanje</span></a></li>
    <li><a href="../rss.php" title="RSS slobodnog smjeĹˇtaja"><span>RSS</span></a></li>
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

<?php

if(!isset($_SESSION[''])) {
	$id_kor = $_SESSION['id_kor'];
	$sql = 'SELECT id_ob,naziv FROM objekt WHERE id_ob=(SELECT id_ob from korisnik_objekt WHERE id_kor=' .$id_kor. ');';
	$rs = $baza->query($sql);
	$row = mysql_fetch_row($rs);
	$_SESSION['id_ob'] = $row[0];
	$_SESSION['naziv_ob'] = $row[1];;
	
}
?>

<!--Main end-->
<div id="main">	
<?php
if(isset($_GET['rez']))
	$id_rez =$_GET['rez'];
else
	header('Location: ../error.php?msg=4');

$err_nema_para=0;

//prijavi korisnika, da je dosao na recepciju...
if(isset($_GET['rez']) &&  isset($_GET['prijavi_kor']) && $_GET['prijavi_kor']==1) {
	$sql ="UPDATE rezervacija SET prijavljen =1 WHERE id_rez=" .$id_rez;
	$rs=$baza->query($sql);
	
//-- log's
include_once '../class/log.php';
$log = new log;
$log->WriteLog();
	
}


//otkazivanje rezervacije od strane osoblja -------
if(isset($_GET['rez']) &&  isset($_GET['del_rez']) && $_GET['del_rez']==1) { //otkazivanje rezervacije
	//-- log's
	include_once '../class/log.php';
	$log = new log;
	$log->WriteLog();
	//---------------
	$id_rez=$_GET['rez'];
	$sql = "SELECT s.id_ob,id_kor,DATE_FORMAT(r.datum_rez, '%d.%m.%Y.'),DATE_FORMAT(r.rez_od, '%d.%m.%Y.'),r.osiguranje
			FROM rezervacija r, smjestaj s
			WHERE s.id_sm=r.id_sm AND id_rez=". $id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	
	$osiguranje = $row[4];
	$id_kor = $row[1];
	$id_ob = $row[0];
	
	$date = date('d.m.Y');
		
	$br_dana = round( (strtotime($row[3]) - strtotime($date)) / (60 * 60 * 24)); //koliko dana ima do rezerviranog termina
	if(strtotime($date) > strtotime($row[3]))
		$br_dana = 0;

	//trazenje postotka naplate, ovisno koliko dana unaprjed se odjavljuje rezervacija
	$sql = "SELECT iznos FROM odjava WHERE broj_dana BETWEEN 0 AND ".$br_dana." AND id_ob=".$id_ob." ORDER BY broj_dana DESC LIMIT 0,1";
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	
	if(mysql_num_rows($rs)!=0)
		$vratit = $osiguranje * $row[0];
	else
		$vratit = $osiguranje * 0;	//broj dana je ispod granice za koju se vraca svota, te se u ovom slucaju nista ne vraca korisniku
	
	//stanje racuna
	$sql = "SELECT b.stanje_rac				
						FROM rezervacija r,bank_racun b
						WHERE b.id_kor=r.id_kor
						AND r.id_rez =". $id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$stanje_br = $row[0] + $vratit; //vraca se postotak od uplacene garancije
	
	$sql = "UPDATE bank_racun SET stanje_rac = ".$stanje_br." WHERE id_kor=".$id_kor;
	$rs=$baza->query($sql);
	
	//obrisat rezervaciju
	$sql = "DELETE FROM rezervacija WHERE id_rez=".$id_rez;
	$rs=$baza->query($sql);	
	
	//Generiranje RSS-a
	include_once '../class/rss.php';
	$rss = new rss;
	$rss->GenerirajRSS();
	header('Location: objekt.php');
}

//izdavanje racuna------------
if(isset($_GET['rez']) &&  isset($_GET['izd_rac']) && $_GET['izd_rac']==1) {	
	//-- log's
	include_once '../class/log.php';
	$log = new log;
	$log->WriteLog();
	//---------------

	$send_rac = new reg_user;
	
	$datum = date('Y-m-d H:i:s');
	$sql="SELECT SUM( c.cijena * s.kolicina ) AS Ukupno
			FROM cjenik c, stavke s
			WHERE c.id_cjenik = s.id_cjenik
			AND s.id_rez =" .$id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$stavke= $row[0];
	
	$sql="SELECT s.cijena,DATE_FORMAT(r.rez_od, '%d.%m.%Y.'),DATE_FORMAT(r.rez_do, '%d.%m.%Y.'),r.osiguranje
			FROM smjestaj s, rezervacija r
			WHERE s.id_sm = r.id_sm
			AND r.id_rez=" .$id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$br_dana = round((strtotime($row[2]) - strtotime($row[1])) / (60 * 60 * 24))+1;
	$osiguranje=$row[3];
	$cijena_sm= ($br_dana*$row[0])- $osiguranje; //+osiguranje, jer se osiguranje vraca!!
	
	
	//konacna cijena .. 
	$ukupno= $stavke+ $cijena_sm ;
	
	$sql = "INSERT INTO racun(id_rez,izdavanje,ukupno) VALUES(" .$id_rez. ",'" .$datum. "'," .$ukupno. ")";
	$id_rac=$baza->query($sql);
	
	//skidanje svote s korisnickog racuna
	$sql = "SELECT b.stanje_rac				
					FROM rezervacija r,bank_racun b
					WHERE b.id_kor=r.id_kor
					AND r.id_rez =". $id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$stanje_br = $row[0];

	$sql = "SELECT id_kor FROM rezervacija WHERE id_rez =".$id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$id_kor = $row[0];

	$novo_stanje = $stanje_br - $ukupno;
	$sql = "UPDATE bank_racun SET stanje_rac = ".$novo_stanje." WHERE id_kor=".$id_kor;
	$rs=$baza->query($sql);
		
	$send_rac->SendRacun($id_rez,$id_rac);


	//Generiranje RSS-a
	include_once '../class/rss.php';
	$rss = new rss;
	$rss->GenerirajRSS();
	
	header("Location: rezervacija.php?rez=$id_rez"); //zbog refresha
}

if(isset($_GET['rez']) &&  isset($_GET['btn'])) {
	//-- log's
	include_once '../class/log.php';
	$log = new log;
	$log->WriteLog();
	//---------------
	$id_rez= $_GET['rez'];

	switch($_GET['btn']) {
		case 'Dodaj':	//dodavanje na korisnicki racun
			//TODO - dali korisnik moze ici u minus? I dali mu se moze dodat stavka racuna ako nema dovoljno iznosa na racunu
			//provjera korisnickog racuna
			
			//stanje racuna
			$sql = "SELECT b.stanje_rac				
					FROM rezervacija r,bank_racun b
					WHERE b.id_kor=r.id_kor
					AND r.id_rez =". $id_rez;
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			$stanje_br = $row[0];
			
			//iznos za stavke
			$sql = "SELECT SUM(c.cijena * s.kolicina)
					FROM cjenik c, stavke s
					WHERE c.id_cjenik = s.id_cjenik
					AND s.id_rez =".$id_rez;
			$rs=$baza->query($sql);
			$row = mysql_fetch_row($rs);
			$ukupno = $row[0];
			
			//koliko dana je rezervirano
			$sql = "SELECT DATE_FORMAT(rez_od, '%d.%m.%Y.'),DATE_FORMAT(rez_do, '%d.%m.%Y.'), osiguranje FROM rezervacija
					WHERE id_rez =".$id_rez;	
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			$akontacija = $row[2];
			$rez_dana = round((strtotime($row[1]) - strtotime($row[0])) / (60 * 60 * 24))+1;
			
			//cijena sobe
			$sql = "SELECT s.cijena FROM smjestaj s, rezervacija r WHERE s.id_sm = r.id_sm
					AND r.id_rez=" .$id_rez;
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			$ukupno += (($row[0] * $rez_dana) - $akontacija);
			
			//racunanje kolika ce bit nova cijena
			$id_cjenik = $_GET['id_cjenik'];
			$kol = $_GET['kolicina'];
			
			$sql = "SELECT cijena FROM cjenik WHERE id_cjenik=".$id_cjenik ;
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			//Kolika ce bit nova cijena
			$nova_cijena = ($row[0] * $kol) + $ukupno;
			//---
			
			if($stanje_br >= $nova_cijena) { //tada je moguce dodat stavku na racun
				$sql = "SELECT kolicina FROM stavke WHERE id_rez=" .$id_rez. " AND id_cjenik=" .$id_cjenik;
				$rs=$baza->query($sql);
				$row=mysql_fetch_row($rs);
				if(mysql_num_rows($rs)!=0){	//postoje stavke, te im se moze dodat nova kolicina
					$tren_kol=$row[0];
					$nov_kol = $tren_kol + $kol;
					$sql = "UPDATE stavke SET kolicina =" .$nov_kol. " WHERE id_rez =".$id_rez." AND id_cjenik=".$id_cjenik." AND kolicina =".$tren_kol;
					$baza->query($sql);			
				}
				else {	//nepostoje takve stavke, te se dodaju nove stavke
					$sql = "INSERT INTO stavke(id_rez,id_cjenik,kolicina) VALUES (".$id_rez. "," .$id_cjenik. "," .$kol. ")";
					$baza->query($sql);
				}
			}
			else {
				header('Location: ../error.php?msg=6');
				exit;
			}
			break;
			
		case 'Ukloni':	//brisanje s korisnickog racuna
			$id_cjenik = $_GET['id_cjenik'];
			$kol = $_GET['kolicina'];
			$sql = "SELECT kolicina FROM stavke WHERE id_rez=" .$id_rez. " AND id_cjenik=" .$id_cjenik;
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			if(mysql_num_rows($rs)!=0)	{	//postoji usluga u stavkama
				$tren_kol=$row[0];
				$nov_kol = $tren_kol - $kol;
				
				if($nov_kol<=0)	//brise se usluga iz racuna
					$sql = "DELETE FROM stavke WHERE id_rez = ".$id_rez." AND id_cjenik = ".$id_cjenik." AND kolicina =" .$tren_kol;					
				else 	//dodaje se umanjena vrijdnost
					$sql = "UPDATE stavke SET kolicina =" .$nov_kol. " WHERE id_rez =".$id_rez." AND id_cjenik=".$id_cjenik." AND kolicina =".$tren_kol;
				
				$baza->query($sql);	
			}

			break;
	}
header("Location: rezervacija.php?rez=$id_rez");	//postavlja adresu, da pise samo rezervacija, jer ako se refresha, tada ce se ponovit radnja dodavanja ili uklanjanja usluge iz stavke
}		


	
?>
    <div id="right" style="padding:10px; width:65%;"> 
        <h2 style="letter-spacing: 4px">Rezervacija</h2>
        <?php
		$racun=0;	//racun nije izdan
		$pri=0; //korisnik nije prijavljen
		
		$sql = "SELECT k.kor_ime, k.ime, k.prezime, k.email, k.adresa, k.tel, DATE_FORMAT( r.rez_od, '%e.%m.%Y.' ), DATE_FORMAT( r.rez_do, '%e.%m.%Y.' ), DATE_FORMAT( r.datum_rez, '%e.%m.%Y. %H:%i' ), r.osiguranje, r.prijavljen,b.broj_racuna,b.stanje_rac				
				FROM korisnik k, rezervacija r,bank_racun b
				WHERE k.id_kor = r.id_kor
				AND b.id_kor=r.id_kor
				AND r.id_rez =". $id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		echo '<span style="font-weight:bold">ID rezervacije:' .$id_rez. '</span><br/>';
		echo 'Korisnicko ime: ' .$row[0]. '<br/>';
		echo 'Ime i prezime: ' .$row[1]. ' ' .$row[2]. '<br/>';
		echo 'E-mail: ' .$row[3]. '<br/>';		
		echo 'Adresa: ' .$row[4]. '<br/>';		
		echo 'Telefon: ' .$row[5]. '<br/>';		
		echo 'Broj bankovnog računa: ' .$row[11]. '<br/>';	
			
		$stanje_br=$row[12];
		
		echo 'Datum rezervacije: ' .$row[8]. '<br/>';		
		if(strlen($row[9])>0)
					echo 'Placeno osiguranje: ' .$row[9]. '<br/>';		
					$osiguranje = $row[9];
		echo 'Rezervirano od: ' .$row[6]. '<br/>';				
		echo 'Rezervirano do: ' .$row[7] . '<br/>';				
		$rez_od = $row[6];
		$sql="SELECT count( * ) FROM racun WHERE id_rez =" .$id_rez;
		$rs=$baza->query($sql);
		$row_2=mysql_fetch_row($rs);
			
		if($row_2[0]==0) //nije placen racun
			if(bin2hex($row[10])=='01') {
				echo 'Status: prijavljen <br/>';
				$pri=1;
			}
			else
				echo 'Status: rezervirano <br/>';
		else {	//placen racun
			echo 'Status: placeno <br/>';
			$racun=1;
		}
		echo '<hr/>';
		
		//racun za sobu
		echo '<span style="font-weight:bold;letter-spacing:4px;">Račun</span><br/><br/>';	
			
		$sql="SELECT s.cijena,DATE_FORMAT(r.rez_od, '%d.%m.%Y.'),DATE_FORMAT(r.rez_do, '%d.%m.%Y.') FROM smjestaj s, rezervacija r WHERE s.id_sm = r.id_sm
			  AND r.id_rez=" .$id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		$cijena_sobe=$row[0];
		$br_dana = round((strtotime($row[2]) - strtotime($row[1])) / (60 * 60 * 24))+1;
		$suma=$br_dana*$cijena_sobe;
		
		echo '<table border="1" width="100%" class="table_1"><tr style="font-weight:bold;" align="center"> 
					<td width="60%" >Opis usluge</td> <td width="10%">Cijena</td> <td width="10%">Količina</td> <td width="20%">Ukupno</td>
					</tr>';				
		//Osiguranje
		echo '<tr>
				<td>Akontacija prilikom rezervacije (osiguranje)</td><td align="center">' .$osiguranje. '</td><td align="center">1</td><td align="center">-' .$osiguranje. '</td>
			  </tr>';
		//cijena sobe
		echo '<tr>
				<td>Korištenje smještaja</td><td align="center">' .$cijena_sobe. '</td><td align="center">'.$br_dana.'</td><td align="center">' .($cijena_sobe*$br_dana). '</td>
			  </tr>';
		$sql= "SELECT c.opis, c.cijena, s.kolicina, (c.cijena * s.kolicina) AS Ukupno
				FROM cjenik c, stavke s
				WHERE c.id_cjenik = s.id_cjenik
				AND s.id_rez =".$id_rez;
		$rs=$baza->query($sql);
		while($row=mysql_fetch_row($rs)) {
			$suma+=$row[3];
			echo '<tr>
				<td>' .$row[0]. '</td><td align="center">' .$row[1]. '</td><td align="center">' .$row[2]. '</td><td align="center">' .$row[3]. '</td>
			  </tr>';
		}
		$suma-=$osiguranje;	//oduzimanje uplacene akontacije (osiguranje) od osnovne cijene, jer se ta svota vraca korisniku
		echo '<tr style="font-weight:bold;">
			<td colspan="3">Ukupno</td><td align="center">' .$suma. '</td>
		  </tr>';
		echo '</table><br/>';
		
		
		//dodavanje stavaka na racun
		//ako je racun vec izdan tada se stavke ne mogu dodavat, ili ako korisnik jos nije prijavljen
		if($racun==0 && $pri==1) {
			echo '<br/><hr/>';
			echo '<span style="font-weight:bold;letter-spacing:4px;">Dodavanje stavaka računu</span><br/><br/>';
			?>		
			<form name="racun" method="get" action="">
			<table border="0">
				<tr><td>Opis usluge</td>
					<td><select name="id_cjenik" size="1">
						<?php
						$sql="SELECT id_cjenik, opis, cijena FROM cjenik WHERE id_ob =" . $_SESSION['id_ob'];
						$rs=$baza->query($sql);
						while($i=mysql_fetch_row($rs)) {
							echo '<option value="'.$i[0].'">'.$i[1].' (Cijena: '.$i[2].')</option>';
						}
						?>
						</select>
					</td>
				</tr>
                <tr>
                   	<td>Količina</td>
                    <td><input type="text" name="kolicina" size="2" maxlength="2" value="1"/></td>
                </tr>
			</table>
            <input type="hidden" name="rez" value="<?php echo $id_rez;?>" />
			<input type="submit" name="btn" value="Dodaj" onclick="document.rezerviraj.action='rezervacija.php'; document.racun.submit();"/>
			<input type="submit" name="btn" value="Ukloni" onclick="document.rezerviraj.action='rezervacija.php'; document.racun.submit();"/>

            </form>     
			<?php		
		}		
			
        ?>
    </div>
  
  
  
  
    <div id="left" style="padding:10px; width:35%;"> 
        <h2>Hotel: <?php echo $_SESSION['naziv_ob'];?></h2>   
        <?php
			$sql = "SELECT s.oznaka
					FROM smjestaj s, rezervacija r
					WHERE s.id_sm = r.id_sm AND r.id_rez =" .$id_rez;
			$rs = $baza->query($sql);
			$row = mysql_fetch_row($rs);
			echo '<span style="font-weight:bold">' .$row[0]. '</span><br/>';
								
			$sql = "SELECT o.id_atr, a.naziv_atr, o.vrijednost, o.opis
					FROM opis o, atributi a, rezervacija r
					WHERE a.id_atr = o.id_atr
					AND o.id_sm = r.id_sm
					AND r.id_rez =".$id_rez;
			$rs = $baza->query($sql);
			while($row = mysql_fetch_row($rs)) {
				if(strlen($row[2])>0 || strlen($row[3])>0) {
					echo '<span style="font-style:italic;letter-spacing:1px;margin-left:5px;">' .$row[1] . ':<br/>';
					
					if(strlen($row[3])>0)
						echo '<span style="margin-left:15px;letter-spacing:0px;font-style:normal;">'.$row[3] .'</span>';
					
					if(strlen($row[2])>0 && $row[2]!=0)
						echo '<span style="margin-left:15px;letter-spacing:0px;font-style:normal;"> ('.$row[2] .')</span>';	
					echo '<br/>';
				}
			}
		?>
        <br/><br/>
        <?php if($pri==0 && $racun==0) {?>
            <form name="del_rez" method="get" action="rezervacija.php">
                <input type="hidden" name="rez" value="<?php echo $id_rez;?>" />
                <input type="hidden" name="del_rez" value="1" />
                <input type="submit" name="btn_odjava" value="Otkaži rezervaciju"/>
            </form>
            
            <form name="prijava" method="get" action="rezervacija.php">
                <input type="hidden" name="rez" value="<?php echo $id_rez;?>" />
                <input type="hidden" name="prijavi_kor" value="1" />
                <input type="submit" name="btn_odjava" value="Prijavi"/>
            </form>
     	<?php 
		}
		if($racun==0 && $pri==1) {
		?>
            <form name="racun" method="get" action="rezervacija.php">
                <input type="hidden" name="rez" value="<?php echo $id_rez;?>" />
                <input type="hidden" name="izd_rac" value="1" />
                <input type="submit" name="btn_odjava" value="Izdaj racun"/>
            </form>
		<?php
		}
		?>
    </div>
</div>
<!--Main end-->

<!--Footer start-->
<div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008 | <?php if(isset($_SESSION['id_kor'])) echo 'Logirani korisnik:' .$_SESSION['kor_ime'] ;?></div>
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