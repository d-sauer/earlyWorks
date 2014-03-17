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
<div id="right" style="padding:10px; width:70%;"> 
<?php
//-- log's
include_once '../class/log.php';
$log = new log;
$log->WriteLog();


switch ($_GET['obop']) {
	case 0:	//pregled osnovnih rezervacija -------------------------------------------------
		echo '<h2 style="letter-spacing: 4px">&nbsp</h2>';
		?>
		<p>Prikaz stanja smještaja</p>
        <form name="upit_0" method="get" action="./objekt.php">
        Između <input type="text" name="date_from" id="date_from" readonly onclick="fPopCalendar('date_from')" />
        i <input type="text" name="date_to" id="date_to" readonly onclick="fPopCalendar('date_to')" />
        <input type="hidden" name="obop" value="0" />
        <input type="hidden" name="pg" value="1" />
        <input type="submit" value="Prikaži" />
        </form>
		<hr/>		 
        <?php
		//('12.3.2008.','25.4.2008.',7,$_SESSION['id_ob'],1);
		include_once "../class/gant.php";
		$gant = new gant;
		if(isset($_GET['date_from']) && isset($_GET['date_to'])) {
			$date_from = str_replace('-','.',$_GET['date_from']);
			$date_to = str_replace('-','.',$_GET['date_to']);
		}
		else {
			$sql = "SELECT DATE_FORMAT(MAX(rez_do),'%e.%m.%Y.')  FROM rezervacija";
			$rs=$baza->query($sql);
			$row = mysql_fetch_row($rs);
			$date_from =  date('d.m.Y.');
			$date_to =  $row[0];
		}
		
		if(isset($_GET['pg']))
			$pg = $_GET['pg'];
		else 
			$pg=1;
			
		$prikaz=7;
		$gant->Create_Gant($date_from,$date_to,$prikaz,$_SESSION['id_ob'],$pg);
		
		//TODO ako su postavljeni datumi, da ih onda prosljedi, dalje..tj. ako su zadani
		//generiranje stranica
		echo '<div style="text-align: center;width:100%;">';
		$razlika = floor((strtotime($date_to) - strtotime($date_from)) / (60 * 60 * 24)) ;
		$num = $razlika;
		$n = ((int)($num / $prikaz)); //koliko ima cijelih stranica
		$o= $num-($n*$prikaz);		//koliko naslova je ostalo
			
		if($o!=0) {
			$n++;
		}
		//generiranje linkova za stranice
		$trenutna=$pg;
		$pg_prev = $trenutna -1;
		$pg_next = $trenutna +1;
		if($pg_prev>=1)
			echo '<a Style="text-decoration: none" href="objekt.php?obop=0&amp;pg=' .$pg_prev. '&amp;date_from=' .$date_from. '&amp;date_to=' .$date_to. '"> << </a>&nbsp';
		for ($s=1; $s<= $n;$s++) {
			if($trenutna==$s)
				echo '<span style="font-weight:bold">' .$s. ' </span>' ;
			else
				echo '<a href="objekt.php?obop=0&amp;pg=' .$s. '&amp;date_from=' .$date_from. '&amp;date_to=' .$date_to. '">'.$s.' </a> ';
		}
		if($pg_next<=$n)
			echo '<a Style="text-decoration: none" href="objekt.php?obop=0&amp;pg=' .$pg_next. '&amp;date_from=' .$date_from. '&amp;date_to=' .$date_to. '">&nbsp>> </a>';
		echo '</div>';
	
//------------------------------------------------------------------------------------------
		break;
	case 1:	//pregled rezervacija
		echo '<h2 style="letter-spacing: 4px">Pregled rezervacija</h2>';
		?>
        <p>Pretraživanje prema broju rezervacije</p>
        <form name="upit_1" method="get" action="./objekt.php">
        ID rezervacije <input type="text" name="id_rez" value="" />
        <input type="hidden" name="obop" value="1" />
        <input type="submit" value="Traži" />
        </form>
		<hr/>
    <?php
		if(isset($_GET['id_rez'])) {
			$id_ob=$_SESSION['id_ob'];
			$id_rez=$_GET['id_rez'];
			
			$sql = "SELECT s.id_sm, s.oznaka, r.id_kor, k.kor_ime, r.id_rez, DATE_FORMAT(r.rez_od, '%e.%m.%Y.') , DATE_FORMAT(r.rez_do, '%e.%m.%Y.'), r.prijavljen
			FROM rezervacija r, smjestaj s, korisnik k
			WHERE s.id_sm = r.id_sm
			AND k.id_kor = r.id_kor
			AND r.id_rez=" .$id_rez. "
			AND id_ob =" .$id_ob. " ORDER BY r.rez_od, r.id_rez";
			$rs = $baza->query($sql);

			if(mysql_num_rows($rs)!=0) {
				$row= mysql_fetch_row($rs);		
				//TODO Pitanje je dali ce se i zadnji dan racunat kao dan proveden u objektu? DA !! te se tek od sljedeceg dana moze netko rezervirat ili prijaviti, isto je uskladjeno s gantogramom
				$razlika = round((strtotime($row[6]) - strtotime($row[5])) / (60 * 60 * 24)) + 1 ;
				echo '<a href="rezervacija.php?rez=' .$row[4] .'">ID rezervacije: ' .$row[4]. '</a><br/>';
				echo 'Korisnik: ' .$row[3]. '<br/>
					  Smjestaj: ' .$row[1]. '<br/>
					  Rezervirano od: ' . $row[5] . '<br/>
					  Rezervirano do: ' . $row[6] . '<br/>
					  Trajanje: ' .$razlika. ' dana';				
			}
			else
				echo "Rezervacija nije pronađena! <br/>";
		}
		break;
	case 2:	//pregled rezervacija
		echo '<h2 style="letter-spacing: 4px">Pregled rezervacija</h2>';
		?>
        <p>Pretraživanje prema vremenskom razdoblju</p>
        <form name="upit_1" method="get" action="./objekt.php">
        Između <input type="text" name="date_from" id="date_from" readonly onclick="fPopCalendar('date_from')" />
        i <input type="text" name="date_to" id="date_to" readonly onclick="fPopCalendar('date_to')" />
        <input type="hidden" name="obop" value="2" />
        <input type="submit" value="Traži" />
        </form>
		<hr/>
	<?php
		if(isset($_GET['date_from']) && isset($_GET['date_to']) ) {		
			$date_from =  $_GET['date_from']; 
			$date_to =  $_GET['date_to']; 
			$id_ob=$_SESSION['id_ob'];
			
			$sql = "SELECT s.id_sm, s.oznaka, r.id_kor, k.kor_ime, r.id_rez, DATE_FORMAT(r.rez_od, '%e.%m.%Y.') , DATE_FORMAT(r.rez_do, '%e.%m.%Y.'), r.prijavljen
			FROM rezervacija r, smjestaj s, korisnik k
			WHERE rez_od
			BETWEEN  STR_TO_DATE('" .$date_from. "', '%d-%m-%Y') 
			AND  STR_TO_DATE('" .$date_to. "', '%d-%m-%Y') 
			AND s.id_sm = r.id_sm
			AND k.id_kor = r.id_kor
			AND id_ob =" .$id_ob. " ORDER BY r.rez_od, r.id_rez";
			$rs = $baza->query($sql);
			echo "Popis rezervacija u razdoblju od: " .$date_from. "   do: " .$date_to ."<br/><br/>";
			$date="";

			if(mysql_num_rows($rs)!=0) {		
				echo '<table border="0">';
				echo '<tr align="center"><td width="150px">Rezervirano od</td><td width="300px">Rezervacija</td></tr>';
			
				while($row = mysql_fetch_row($rs)) {	//izlistanje rezultata
				if($date!=$row[5]) {	//mjenja se datum
					$date=$row[5];
					echo '<tr> <td><hr/></td><td><hr/></td></tr>';
					echo "<tr>";
					echo '<td align="center">' .$date ."</td>";
					}
				else 
					echo "<td></td>";
				
				$razlika = round((strtotime($row[6]) - strtotime($row[5])) / (60 * 60 * 24)) +1 ; 
				echo '<td align="center"><a href="rezervacija.php?rez=' .$row[4] .'"><span style="font-size:x-small"> 
						ID rezervacije: ' .$row[4]. '<br/>
						Korisnik: ' .$row[3]. '<br/>
						Smjestaj: ' .$row[1]. '<br/>
						Rezervirano do: ' . $row[6] .'<br/>
						Trajanje: ' .$razlika. ' dana
						</span></a></td>';
				
				echo "</tr>";
				}	//end while
				echo "</table>";
			}
			else
				echo "U traženom razdoblju nema rezervacija! <br/>";
		
		}
		break;
	case 3:	//pregled rezervacija
		echo '<h2 style="letter-spacing: 4px">Pregled rezervacija</h2>';
		?>       
        <p>Pretraživanje prema korisničkom računu</p>
        <form name="upit_1" method="get" action="./objekt.php">
        Korisničko ime <input type="text" name="kor_ime" value="" />
        <input type="hidden" name="obop" value="3" />
        <input type="submit" value="Traži" />
        </form>
		<hr/>        
		<?php
		if(isset($_GET['kor_ime'])) {
			$id_ob=$_SESSION['id_ob'];
			$kor_ime=$_GET['kor_ime'];
			
			$sql = "SELECT s.id_sm, s.oznaka, r.id_kor, k.kor_ime, r.id_rez, DATE_FORMAT(r.rez_od, '%e.%m.%Y.') , DATE_FORMAT(r.rez_do, '%e.%m.%Y.'), r.prijavljen
			FROM rezervacija r, smjestaj s, korisnik k
			WHERE s.id_sm = r.id_sm
			AND k.id_kor = r.id_kor
			AND k.kor_ime='" .$kor_ime. "'
			AND r.id_rez NOT IN (SELECT id_rez FROM racun)
			AND id_ob =" .$id_ob. " ORDER BY r.rez_od, r.id_rez";
			$rs = $baza->query($sql);

			if(mysql_num_rows($rs)!=0) {
				echo 'Rezervacije za korisnika: ' .$kor_ime. '<br/><br/>';
				echo '<table border="0">';
				echo '<tr align="center"><td width="150px">Rezervirano od</td><td width="300px">Rezervacija</td></tr>';
			
				while($row = mysql_fetch_row($rs)) {	//izlistanje rezultata
				if($date!=$row[5]) {	//mjenja se datum
					$date=$row[5];
					echo '<tr> <td><hr/></td><td><hr/></td></tr>';
					echo "<tr>";
					echo '<td align="center">' .$date ."</td>";
					}
				else 
					echo "<td></td>";
				
				$razlika = round( (strtotime($row[6]) - strtotime($row[5])) / (60 * 60 * 24) ) +1;
				echo '<td align="center"><a href="rezervacija.php?rez=' .$row[4] .'"><span style="font-size:x-small"> 
						ID rezervacije: ' .$row[4]. '<br/>
						Smjestaj: ' .$row[1]. '<br/>
						Rezervirano do: ' . $row[6] .'<br/>
						Trajanje: ' .$razlika. ' dana
						</span></a></td>';
				
				echo "</tr>";
				}	//end while
				echo "</table>";				
			}
			else
				echo "Rezervacija na traženo korisničko ime nije pronađena! <br/>";
		
		}
		break;
	case 4:	//Pregled trenutnih gostiju
		echo '<h2 style="letter-spacing: 4px">Pregled trenutnih gostiju</h2>';
		$id_ob=$_SESSION['id_ob'];
		$sql = "SELECT s.id_sm, s.oznaka, r.id_kor, k.kor_ime,k.ime,k.prezime, r.id_rez, DATE_FORMAT(r.rez_od, '%e.%m.%Y.') , DATE_FORMAT(r.rez_do, '%e.%m.%Y.'), r.prijavljen
				FROM rezervacija r, smjestaj s, korisnik k
				WHERE s.id_sm = r.id_sm
				AND k.id_kor = r.id_kor
                AND s.id_ob=" .$id_ob. "
				AND r.prijavljen=1
                AND r.id_rez NOT IN (SELECT id_rez FROM racun);";
		$rs=$baza->query($sql);
		if(mysql_num_rows($rs)!=0) {
			while($row=mysql_fetch_row($rs)) {
				$razlika = round( (strtotime($row[8]) - strtotime($row[7])) / (60 * 60 * 24) ) +1;
				echo '<a href="rezervacija.php?rez=' .$row[6] .'">' .$row[1]. '</a><br/>';
				echo '<span style="margin-left:10px">Ime i prezime: ' .$row[4]. ' ' .$row[5]. ' (' .$row[3]. ')</span><br/>';
				echo '<span style="margin-left:10px">Rezervirano od: ' .$row[7]. '</span><br/>';
				echo '<span style="margin-left:10px">Rezervirano do: ' .$row[8]. '</span><br/>';
				echo '<span style="margin-left:10px">Trajanje: ' .$razlika. ' dana</span><br/><br/>';
			}
		}
		else
			echo "Nema trenutno prijavljenih gostiju!";
			
		break;
		
	case 5:	//Nove rezervacije
		echo '<h2 style="letter-spacing: 4px">Nove rezervacije</h2>';
		switch($_GET['sub']) {
			case 0:
				if(isset($_GET['err']) && $_GET['err']==1)
					$err_unos=1;	
				?>       
				<form method="post" name="kor_podatci" action="">
					<table>
						<tr>
							<td>*Ime</td>
							<td><input type="text" name="ime" size="20" value="<?php if($err_unos==1) echo $_POST['ime']; ?>" /></td>
						</tr>
						<tr>
							<td>*Prezime</td>
							<td><input type="text" name="prezime" size="20" value="<?php if($err_unos==1) echo $_POST['prezime']; ?>" /></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><input type="text" name="email" size="30" maxlength="50" value="<?php if($err_unos==1) echo $_POST['email']; ?>" /></td>
						</tr>
						<tr>
							<td>*Korisničko ime</td>
							<td><input type="text" name="kor_ime" size="20" value="<?php if($err_unos==1) echo $_POST['kor_ime']; ?>" /></td>
						</tr>
						<tr>
							<td>*Lozinka</td>
							<td><input type="password" name="lozinka" size="20" value="<?php if($err_unos==1) echo $_POST['lozinka']; ?>" /></td>
						</tr>
						<tr>
							<td>*Broj bankovnog računa:</td>
							<td><input type="text" name="bank_rac" size="30" maxlength="15" value="<?php if($err_unos==1) echo $_POST['bank_rac']; ?>" /></td>
						</tr>
						
						<tr>
							<td>Adresa</td>
							<td><input type="text" name="adresa" size="30" maxlength="100" value="<?php if($err_unos==1) echo $_POST['adresa']; ?>" /></td>
						</tr>
						<tr>
							<td>Telefon</td>
							<td><input type="text" name="tel" size="20" value="<?php if($err_unos==1) echo $_POST['tel']; ?>" /></td>
						</tr>
					</table>
					<br/>
					<input type="submit" name="btn_reg" value="Registriraj korisnika" onclick="document.kor_podatci.action='objekt.php?obop=5&amp;sub=1'; document.kor_podatci.submit();"/>
					<input type="submit" name="btn_find" value="Nađi korisnički račun" onclick="document.kor_podatci.action='objekt.php?obop=5&amp;sub=2'; document.kor_podatci.submit();"/>
				</form> 
				<hr/>	
				<?php
				break;
			case 1:	//registriraj korisnika
				//echo "Registracija novog korisnika <br/>";
					$reg = new reg_user;
					if(isset($_POST['ime']) && isset($_POST['prezime']) && isset($_POST['kor_ime']) && isset($_POST['lozinka']) && isset($_POST['bank_rac'])) {
						$kor_ime = $_POST['kor_ime'];
						$sql= "SELECT * FROM korisnik WHERE kor_ime='$kor_ime'";
						$rs = $baza->query($sql);
						$row1 = mysql_num_rows($rs);					
						$email = $_POST['email'];
						$sql= "SELECT * FROM korisnik WHERE email='$email'";
						$rs = $baza->query($sql);
						$row2 = mysql_num_rows($rs);
						$sql = 'SELECT * from bank_racun WHERE broj_racuna="' .$_POST['bank_rac']. '"';
						$rs = $baza->query($sql);
						$row3 = mysql_num_rows($rs);
						
						if($row1==0 && $row2==0 && $row3==0 ) {
							//registracija korisnika
							$actkey = $reg->gen_user_act_key();
							//$err=$reg->RegUser_SendMail($_POST['kor_ime'],$_POST['ime'],$_POST['prezime'],$_POST['adresa'],$_POST['tel'],$_POST['email'],$_POST['lozinka'],$actkey);	//Slanje aktivacijskog maila korisniku
							$err=false;
							if($err==false) {	//nema greske prilikom slanja maila
								//dodavanje korisnika
								$sql = "INSERT INTO korisnik (id_pri,kor_ime ,ime ,prezime ,adresa ,tel ,email ,lozinka ,aktivacijski_kljuc ,aktiviran) VALUES ('1', '".$_POST['kor_ime']."', '".$_POST['ime']."', '".$_POST['prezime']."', '".$_POST['adresa']."' , '".$_POST['tel']."' , '".$_POST['email']."', '".$_POST['lozinka']."', '".$actkey."' , 1)";
								$id_kor=$baza->query($sql);
								
								//dodavanje bankovnog racuna
								$sql = "INSERT INTO bank_racun(id_kor,broj_racuna) VALUES(" .$id_kor. "," .$_POST['bank_rac']. ")";
								$rs =$baza->query($sql);
								 
								echo "Korisnicki racun je registriran.<br/>";
								//echo "Aktivacijski kljuc je prosljedjen na vasu e-mail adresu!<br/>";
								//header('Location: vjezba_8_greska.php');
								header("Location: objekt.php?obop=5&sub=3&id_kor=$id_kor");
							}
							else {
								header('Location: error.php?msg=1');	
							}	
							//exit;
						}
						else {
							if($row1!=0)
								echo "Pogreška: Unjeli ste postojece korisnicko ime, pokusajte unjeti drugo korisnicko ime. <br/>";
							if($row2!=0)
								echo "Pogreška: Unjeli ste postojecu e-mail adresu. Vec postoji korisnik s tom e-mail adresom!<br/>";
							if($row3!=0)				
								echo "Pogreška: Unjeli ste postojeci bankovni racun!<br/>";
							$err_unos=1;
						}	
					}
					else {
						if(!isset($_POST['ime']))
							echo "Pogreška: Niste unjeli ime.<br/>"; 
						if(!isset($_POST['prezime']))
							echo "Pogreška: Niste unjeli prezime.<br/>"; 
						if(!isset($_POST['kor_ime']))
							echo "Pogreška: Niste unjeli korisnicko ime.<br/>"; 
						if(!isset($_POST['lozinka']) || strlen(isset($_POST['lozinka']))<6 )
							echo "Pogreška: Niste unjeli lozinku ili je krača do šest znakova.<br/>"; 
						if(!isset($_POST['bank_rac']))
							echo "Pogreška: Niste unjeli broj bankovnog racuna.<br/>"; 					
					}			
				break;
			case 2:	//Nadji korisnika
				//echo "Pretrazivanje korisnika <br/>";	
					if(isset($_POST['kor_ime'])) {
						$sql= "SELECT id_kor FROM korisnik WHERE kor_ime='" .$_POST['kor_ime']. "'";
						$rs = $baza->query($sql);
						$row = mysql_fetch_row($rs);
						if(mysql_num_rows($rs)!=0) {
							$id_kor = $row[0];
							header("Location: objekt.php?obop=5&sub=3&id_kor=$id_kor");
						}
						
						
					}
					if(isset($_POST['email'])) {
						$sql= "SELECT id_kor FROM korisnik WHERE email='" .$_POST['email']. "'";
						$rs = $baza->query($sql);
						$row = mysql_fetch_row($rs);
						
						if(mysql_num_rows($rs)!=0) {
							$id_kor = $row[0];
							header("Location: objekt.php?obop=5&sub=3&id_kor=$id_kor");
						}		
					}
					
					if(isset($_POST['bank_rac'])) {
						$sql = 'SELECT id_kor FROM bank_racun WHERE broj_racuna="' .$_POST['bank_rac']. '"';
						$rs = $baza->query($sql);
						$row = mysql_fetch_row($rs);
						if(mysql_num_rows($rs)!=0) {
							$id_kor = $row[0];
							header("Location: objekt.php?obop=5&sub=3&id_kor=$id_kor");
						}
										
					}
					
					echo "<br/>Korisnik nije pronadjen!<br/>";
				break;
				
			case 3:	//prikaz podataka o korisniku
				if(isset($_GET['id_kor'])) {
					$id_kor = $_GET['id_kor'];
					$sql = "SELECT id_kor, kor_ime, ime, prezime, email FROM korisnik WHERE id_kor =" .$id_kor;
					$rs=$baza->query($sql);
					$row = mysql_fetch_row($rs);
					$id_kor = $row[0];
					echo '<br/>Korisnicko ime: ' .$row[1] . '<br/>
						  Ime, prezime: ' .$row[2]. ' ' .$row[3]. '<br/>
						  e-mail: ' .$row[4];
						  
					if(mysql_num_rows($rs)!=0)
						$enable_rez=1;
				}
				else
					$enable_rez=0;
				
				if($enable_rez==1) {	//omogucena je rezervacije, korisnik je pronadjen ili registriran
					?>		
					<br/>
					<form name="rezerviraj" method="get" action="objekt.php">
					<table border="0">
					<tr> <td>Rezervacija u razdoblju od</td>
						  <td><input type="text" name="date_from" id="date_from" value="<?php echo date('d-m-Y'); ?>" readonly onclick="fPopCalendar('date_from')" />
							  do <input type="text" name="date_to" id="date_to" readonly onclick="fPopCalendar('date_to')" />
						  </td> 
					</tr>
					<tr><td>Oznaka smjestaja</td>
						<td><select name="id_sm" size="1">
							<?php
								$sql="SELECT id_sm, oznaka FROM smjestaj WHERE id_ob =" . $_SESSION['id_ob'];;
								$rs=$baza->query($sql);
								while($i=mysql_fetch_row($rs)) {
									printf("<option value=\"%d\">%s</option>",$i[0],$i[1]);
								}
							?>
							</select><br/>
						</td>
					</tr>
					</table>
					<hr/>  
					<br/>
					<input type="hidden" name="obop" value="5" />
					<input type="hidden" name="sub" value="4" />
                    <input type="hidden" name="id_kor" value="<?php echo $id_kor;?>" />
					<input type="submit" value="Prijavi" />
					</form>
					<?php
				}
			
				break;
			case 4:
				if(isset($_GET['date_from']) && isset($_GET['date_to']) && isset($_GET['id_sm']) ) {	//provjera dali je zadana rezervacija, datum_from i datum_to
					$date_from = strtotime(str_replace('-','.',$_GET['date_from']));
					$date_to = strtotime(str_replace('-','.',$_GET['date_to']));

					$id_sm = $_GET['id_sm'];
					$id_kor = $_GET['id_kor'];				
					
					$sql ="SELECT id_rez FROM rezervacija 
							WHERE (rez_od BETWEEN '" .date('Y-m-d',($date_from)). "' AND '" .date('Y-m-d',($date_to)). "'
								   OR rez_do BETWEEN '" .date('Y-m-d',($date_from)). "' AND '" .date('Y-m-d',($date_to)). "' )
						          AND id_sm =" .$id_sm;
					$rs=$baza->query($sql);			  
					if(mysql_num_rows($rs)==0) {//ima slobodnih rezervacija
						
						//provjera dali korisnik ima dovoljno para na racunu
						//stanje racuna
						$sql = "SELECT stanje_rac FROM bank_racun WHERE id_kor=". $id_kor;
						$rs=$baza->query($sql);
						$row=mysql_fetch_row($rs);
						$stanje_br = $row[0];
						//cijena smjestaja
						$sql = "SELECT cijena FROM smjestaj WHERE id_sm=". $id_sm;
						$rs=$baza->query($sql);
						$row=mysql_fetch_row($rs);
						$cijena_sm = $row[0];
						
						$rez_dana = round(($date_to-$date_from) / (60 * 60 * 24))+1;
						$cijena_sm *= $rez_dana;
						//----
						//echo $rez_dana.'Stanje rac:' .$stanje_br. '<br/>Cijena sm:' .$cijena_sm;
						
						if($stanje_br>=$cijena_sm) { //ima se para!!				
							//kreiranje rezervacije
							$sql = "INSERT INTO rezervacija (id_rez, id_kor, id_sm, rez_od, rez_do, datum_rez, osiguranje, prijavljen)
									VALUES (NULL , " .$id_kor. ", " .$id_sm. ", '" .date('Y-m-d',($date_from)). "', '" .date('Y-m-d',($date_to)). "', '" .date('Y-m-d  H:i:s'). "' , NULL , 1)";
							$id_rez = $baza->query($sql);
							
							header("Location: rezervacija.php?rez=$id_rez");						
							
						}
						else {
							echo "<br/>Korisnik nema dovoljno novca na računu, da bi platio smještaj za ".$rez_dana." dana, u iznosu od " .$cijena_sm. " kn!";
						}
					
					}	//nema slobodnih rezervacija
					else {
						echo "<br/>Nema slobodnih rezervacija!";
					}
				}
				else {
					echo "Nepotpun unos!";
				}
			
				break;
		}	//switch(sub)
		break;
		
	case 6:	//pregled racuna
		echo '<h2 style="letter-spacing: 4px">Pregled izdanih racuna</h2>';
		if(isset($_GET['pg']))
			$pg = $_GET['pg'];
		else
			$pg=1;
		
		$size=20;	//Broj prikaza rezultata po stranici
		
		$pg==1? $pg_from = ($pg-1) * $size : $pg_from = (($pg-1) * $size) +1;
		$pg_to = (($pg-1) * $size) + $size;
		
		//echo "Stranica:" .$pg. "  OD:" .$pg_from. "   DO:" .$pg_to;
		
		$sql="SELECT count(*) FROM racun";	//koliko ima zapisa u bazi
		$rs=$baza->query($sql);
		$row = mysql_fetch_row($rs);
		$num=$row[0];
		
		$sql = "SELECT r.id_rez, k.kor_ime, k.ime, k.prezime, k.email, DATE_FORMAT( rac.izdavanje, '%e.%m.%Y. %H:%i' ), rac.ukupno
				FROM rezervacija r, korisnik k, racun rac
				WHERE k.id_kor = r.id_kor 
					  AND rac.id_rez = r.id_rez
					  AND r.id_rez IN (SELECT id_rez FROM racun)
				ORDER BY rac.izdavanje DESC 
				LIMIT " .$pg_from." , " .$size;
				
		$rs=$baza->query($sql);
		while($row=mysql_fetch_row($rs)) {
			echo '<br/><a href="rezervacija.php?rez=' .$row[0] .'"><span style="font-weight:bold">ID rezervacije: ' .$row[0]. '</a><br/>';
			echo '<span style="font-weight:normal">Datum izdavanja racuna: ' .$row[5]. '<br/>
				  Vrijednost: ' .$row[6] . ' kn<br/>
				  Korisnicko ime: ' .$row[1] . ' (' .$row[2]. ' ' .$row[3]. ')<br/></span>';
			
		}
		
		//generiranje brojeva stranica
		$n = ((int)($num / $size)); //koliko ima cijelih stranica
		$o= $num-($n*$size);		//koliki je ostatak
		if($o!=0) 
			$n++;
		//generiranje linkova za stranice
		$trenutna=$pg;
		$pg_prev = $trenutna -1;
		$pg_next = $trenutna +1;
		echo '<div style="text-align: center;width:100%;">';
		if($pg_prev>=1)
			echo '<a Style="text-decoration: none" href="objekt.php?obop=6&amp;pg=' .$pg_prev. '"> << </a>&nbsp';
			for ($s=1; $s<= $n;$s++) {
				if($trenutna==$s)
					echo '<span style="font-weight:bold">' .$s. ' </span>' ;
				else
					echo '<a href="objekt.php?obop=6&amp;pg='.$s.'">'.$s.' </a> ';
			}
			if($pg_next<=$n)
				echo '<a Style="text-decoration: none" href="objekt.php?obop=6&amp;pg='.$pg_next.'">&nbsp>> </a>';
		echo '</div>';
			
	
	
	
		break;		
	case 7:	//Pregled cijenika
		echo '<h2 style="letter-spacing: 4px">Pregled cijena usluga</h2>';
		$id_ob=$_SESSION['id_ob'];
		$sql = "SELECT opis, cijena FROM cjenik WHERE id_ob=" .$id_ob;
		$rs = $baza->query($sql);
		
		echo '<table width="80%" style="margin-left:30px">';
		echo '<tr style="font-weight:bold;"><td width="80%" >Opis usluge</td><td width="20%" align="center">Cijena</td>';
		while($row=mysql_fetch_row($rs)) {
			echo '<tr>';
			echo '<td>' .$row[0]. '</td>';
			echo '<td align="center">' .$row[1]. '</td>';
			echo '</tr>';
		}
		echo '</table>';
	
		break;
	default:
		echo "<h2>Osoblje hotela</h2>";
		break;
}
		
?>
</div>
    
	<div id="left" style="padding:10px; width:30%;"> 
	<h2>Hotel:<?php echo $_SESSION['naziv_ob'];?></h2>
    <a href="./objekt.php?obop=0">Pregled rezervacija</a><br/>
    <a href="./objekt.php?obop=1"><span style="margin-left:15px">prema broju rezervacije</span></a><br/>
	<a href="./objekt.php?obop=2"><span style="margin-left:15px">prema vremenskom razdoblju</span></a><br/>
	<a href="./objekt.php?obop=3"><span style="margin-left:15px">prema korisničkom računu</span></a><br/>
    
    <a href="./objekt.php?obop=4">Pregled trenutnih gostiju</a><br/> 
    <a href="./objekt.php?obop=5&amp;sub=0">Nove rezervacije</a><br/>
    <a href="./objekt.php?obop=6">Pregled računa</a><br/>
    <a href="./objekt.php?obop=7">Pregled cijena usluga</a><br/>
   
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