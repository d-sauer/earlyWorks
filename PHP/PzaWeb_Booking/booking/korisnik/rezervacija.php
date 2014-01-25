<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>Rezervacija </title>
<link href="../style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../js/prototype.js"></script>
<script type="text/javascript" src="../js/effects.js"></script>
<script type="text/javascript" src="../js/builder.js"></script>
<script type="text/javascript" src="../js/lightbox.js"></script>
<link rel="stylesheet" href="../lightbox.css" type="text/css" media="screen" />

<script type="text/javascript" src="../js/prikaz.js"></script>

<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
</style>

<!--Kalendar-->
<link rel="stylesheet" title="CSS StyleSheet" href="../kalendar/cwcalendar.css" type="text/css" media="all" />		
<script type="text/javascript" src="../kalendar/calendar.js"></script>
<style type="text/css">

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
		$baza = new baza;

		
		if (isset($_POST['logout'])) {
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
        	echo '<li><a href="../prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
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


<?php
include_once "../class/baza.php";
$baza=new baza;
?>
<div align="left" style="padding:10px; width:25%;float:left">
<h1>Opis smještaja</h1>

<?php
if(isset($_GET['rezerviraj']))
	$_GET['smjestaj']=$_GET['rezerviraj'];

if(isset($_GET['smjestaj'])){
	$sql = "SELECT id_sm, oznaka FROM smjestaj s
			WHERE id_ob=(SELECT id_ob from smjestaj where id_sm=".$_GET['smjestaj'].") ORDER BY oznaka";
}

if(isset($_GET['objekt'])){
	$sql = "SELECT id_sm, oznaka FROM smjestaj s
			WHERE id_ob=".$_GET['objekt']. " ORDER BY oznaka" ;
}

	$rs=$baza->query($sql);
	while($row=mysql_fetch_row($rs)) {
		echo '<a href="rezervacija.php?smjestaj='.$row[0].'">'.$row[1].'</a><br/>';
	}

?>

</div>


<div align="left" style="padding:10px; width:50%;float:left">  
<?php 
//otkazivanje rezervacije	
if(isset($_GET['odjava_rez']) && isset($_GET['odjavi'])  && isset($_SESSION['id_kor'])) {
	$id_rez = $_GET['odjava_rez'];
	$id_kor = $_SESSION['id_kor'];
	$vratit= $_GET['odjavi'];
	$sql = "SELECT b.stanje_rac				
						FROM rezervacija r,bank_racun b
						WHERE b.id_kor=r.id_kor
						AND r.id_rez =". $id_rez;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$stanje_br = $row[0] + $vratit; //vraca se postotak od uplacene garancije(akontacije)

	$sql = "UPDATE bank_racun SET stanje_rac = ".$stanje_br." WHERE id_kor=".$id_kor;
	$baza->query($sql);
	
	//obrisat rezervaciju
	$sql = "DELETE FROM rezervacija WHERE id_rez=".$id_rez;
	$rs=$baza->query($sql);

	//Generiranje RSS-a
	include_once '../class/rss.php';
	$rss = new rss;
	$rss->GenerirajRSS();
	
	header('Location: korisnik.php');		
}
		echo '<br/><br/><br/>';
		
	if(isset($_GET['smjestaj'])){		//prikaz podataka o smjestaju
		$id_sm=$_GET['smjestaj'];
		$pocetak=$_GET['datum1'];		
		$datum_poc=date('Y-m-d',strtotime($pocetak));
		$kraj=$_GET['datum2'];
		$datum_kraj=date('Y-m-d', strtotime($kraj));
		$smjestaj=$_GET['smjestaj'];
		
		$sql = "SELECT o.id_tip,o.naziv,o.mjesto,o.adresa,z.zupanija,o.br_zvjezdica, o.email, o.web_adresa,s.oznaka,o.id_ob
				FROM objekt o, smjestaj s, zupanija z
				WHERE o.id_ob=s.id_ob AND z.id_zup=o.id_zup AND s.id_sm=".$id_sm;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);	
		$sm_naziv=$row[8];
		$id_ob=$row[9];
		
		echo '<p style="margin-left:30px">';
		switch($row[0]) {
			case 0:
				echo 'Hotel: ';
				break;
			case 1:
				echo 'Hostel: ';
				break;
			case 2:
				echo 'Kamp: ';
				break;
		}
		echo '<span style="font-style:italic;font-weight:bold;">' .$row[1] .'</span><br/>';
		echo 'Mjesto: <span style="font-style:italic;">' .$row[2] .'</span><br/>';
		echo 'Adresa: <span style="font-style:italic;">' .$row[3] .'</span><br/>';
		echo 'Županija: <span style="font-style:italic;">' .$row[4] .'</span><br/>';
		echo 'Broj zvjezdica: ';
		for ($i=0; $i<$row[5]; $i++){
			echo '<img src="../slike/zvijezda.png">';
		} 
		echo '<br/>E-Mail: <span style="font-style:italic;">' .$row[6] .'</span><br/>';
		echo 'Web adresa: <a href="'.$row[7].'">'.$row[7].'</a><br/>';
		
		$sql = "SELECT count( * ),AVG(ocjena) FROM komentari WHERE id_ob =" .$id_ob;
		$rs=$baza->query($sql);
		$row = mysql_fetch_row($rs);
		$num=$row[0];
		$ocijena = $row[1];
		echo '<br/><a href="../komentari.php?id_ob='.$id_ob.'">Komentari korisnika ('.$num.') </a>';
		echo '<br/>';
		echo 'Ocjena korisnika <span style="font-size:x-small;">('.round($ocijena,2).' / 5)</span>: ';
		for ($i=0; $i<round($ocijena); $i++){
				echo '<img src="../slike/zvijezda.png">';
		}
		echo '<br/>';
		echo '</p>';
		
		//opis sobe/parcele..
		$sql = "SELECT cijena FROM smjestaj
				WHERE id_sm=".$id_sm;
		$rs = $baza->query($sql);										
		$row=mysql_fetch_row($rs);
		$cijena = $row[0];
		
		
		$sql = "SELECT a.naziv_atr,o.vrijednost,o.opis
				FROM opis o, atributi a, smjestaj s
				WHERE a.id_atr=o.id_atr AND o.id_sm=".$id_sm."
				GROUP BY a.id_atr;";
		$rs = $baza->query($sql);

		echo '<br/><span style="margin-left:30px;font-style:italic;font-weight:bold;">Opis smještaja</span><br/>';
		echo '<p style="margin-left:35px">';
		echo 'Oznaka: '.$sm_naziv. '<br/>';
		echo 'Cijena: '.$cijena. ' kn<br/><br/>';
		while ($row=mysql_fetch_row($rs))  {
			
			if(strlen($row[1])>0 || strlen($row[2])>0) {
				echo $row[0] .': ';
				if(strlen($row[1])>0 && $row[1]!='0')
					echo $row[1] .' ';
				if(strlen($row[2])>0)
					echo $row[2] .' ';
				echo '<br/>';
			}
		}
		echo '</p>';
		if(!isset($_GET['rezerviraj']))
			echo '<a href="rezervacija.php?rezerviraj='.$id_sm.'">Rezervacija smještaja</a><br/>';

		//odjava smještaja, odjava_rez=ID rezervacije
		if(isset($_GET['odjava_rez']) && isset($_SESSION['id_kor'])){
			echo '<br/><hr/>';
			echo '<div style="margin-left:35px">';
			echo '<span style="font-weight:bold;letter-spacing:4px;">Odjava</span><span style="font-style:italic;font-size:x-small;">(' .date('d.m.Y.') .')</span><br/><br/>';
			$id_rez=$_GET['odjava_rez'];
			$sql = "SELECT s.id_sm, s.cijena, r.osiguranje, DATE_FORMAT(r.rez_od, '%d.%m.%Y.'), DATE_FORMAT(r.rez_do, '%d.%m.%Y.'),DATE_FORMAT(r.datum_rez, '%d.%m.%Y.'),s.id_ob
					FROM rezervacija r, smjestaj s
					WHERE s.id_sm = r.id_sm
					AND r.id_rez=".$id_rez;
			$rs=$baza->query($sql);
			$row = mysql_fetch_row($rs);
			$rez_dana =round((strtotime($row[4]) - strtotime($row[3])) / (60 * 60 * 24))+1;
			$dana_do_isteka =round( strtotime($row[3]) - strtotime(date('d.m.Y.')))  / (60 * 60 * 24);
			$cijena_sm=$row[1];
			$id_ob=$row[6];
			echo 'Datum rezervacije: <span style="font-style:italic;">' .$row[5] .'</span><br/>';
			echo 'Rezervirano od: <span style="font-style:italic;">' .$row[3] .'</span><br/>';
			echo 'Rezervirano do: <span style="font-style:italic;">' .$row[4] .'</span><br/>';
			echo 'Rezervirano dana: <span style="font-style:italic;">' .$rez_dana .'</span><br/><br/>';
			echo 'Preostalo dana do rezervacije: <span style="font-style:italic;font-weight:bold;">' .$dana_do_isteka .'</span><br/>';			
			echo 'Akontacija (osiguranje): <span style="font-style:italic;">' .$row[1] .' kn</span><br/><br/>';
			//echo 'Osiguranje: <span style="font-style:italic;">' .$row[2] .' kn</span><br/>';
			
			$sql = "SELECT iznos,opis FROM odjava WHERE broj_dana BETWEEN 0 AND ".$dana_do_isteka." AND id_ob=".$id_ob." ORDER BY broj_dana DESC LIMIT 0,1";
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
	
			if(mysql_num_rows($rs)!=0)
				$vratit = $row[0]* $cijena_sm;
			else
				$vratit = $cijana_sm * 0;
			
			echo 'U slučaju odjave, '.$row[1].'<br/>';
			echo '&nbsp;&nbsp;Iznos za vratit: <span style="font-style:italic;font-weight:bold;">' .$vratit .' </span>kn<br/><br/>';			
			?>
			<form name="odjava" method="get" action="rezervacija.php">
			    <input type="hidden" name="smjestaj" value="<?php echo $id_rez;?>" />            
                <input type="hidden" name="odjava_rez" value="<?php echo $id_rez;?>" />
                <input type="hidden" name="odjavi" value="<?php echo $vratit;?>" />
                <input type="submit" name="btn_odjava" value="Odjavi rezervaciju"/>
            </form>            
            <?php
			echo '<br/><span style="text-decoration:underline;">Cijeniku u slučaju odjavljivanja rezervacije</span><br/>';
			$sql = "SELECT opis FROM odjava WHERE id_ob=".$id_ob." ORDER BY broj_dana DESC";
			$rs=$baza->query($sql);
			while($row=mysql_fetch_row($rs)) {
				echo '&nbsp;&nbsp;- ' .$row[0].'<br/>';
			}
			
			
			echo '</div>';	
		}
		//Potvrda rezervacije + formular za rezervaciju
		if(isset($_GET['rezerviraj'])){
			$id_sm=$_GET['rezerviraj'];
            echo '<br/><hr/>';
			if(isset($_SESSION['id_kor'])) { //omoguci rezervaciju ako je korisnik logiran
					?>	
                    <div id="fez_form">
					<table border="0">
					<tr> <td>Rezervacija u razdoblju od</td>
						  <td><input type="text" name="date_from" id="date_from" value="<?php if(isset($_GET['date_from'])) echo $_GET['date_from']; else echo date('d-m-Y'); ?>" readonly onclick="fPopCalendar('date_from')"/>
							  do <input type="text" name="date_to" id="date_to" value="<?php if(isset($_GET['date_to'])) echo $_GET['date_to']; ?>" readonly onclick="fPopCalendar('date_to')"/>
						  </td> 
					</tr>
                    <tr><td>Akontacija</td>
						<td><?php echo $cijena; ?> kn</td>
					<tr><td>Oznaka smjestaja</td>
						<td><?php echo $sm_naziv; ?></td>
					</tr>
					</table>
					  
					<br/>
                    
                    <div id="rez">	
                    </div>

                    <input type="hidden" name="id_kor" value="<?php echo $id_kor;?>" />                  
					<input type="button" value="Rezerviraj" onclick="getData('rez_div.php?date_from='+getElementById('date_from').value + '&amp;date_to=' +getElementById('date_to').value + '&amp;id_sm=<?php echo $id_sm;?>&amp;cijena=<?php echo $cijena;?>&amp;rez=1','rez'); this.disabled=true;"
                    			onmouseover="getData('rez_div.php?date_from='+getElementById('date_from').value + '&amp;date_to=' +getElementById('date_to').value + '&amp;id_sm=<?php echo $id_sm;?>&amp;cijena=<?php echo $cijena;?>','rez')"
                                />
					</div>
					<?php				
				
				
				
			} 
			else {//korisnik nije logiran, otic na login screen
				echo '<span style="font-weight:bold;">Da bi ste mogli potvrdit rezervaciju, morate bit prijavljeni na sustav.</span><br/>';
				echo '<a href="../prijava.php">Prijavite se na sustav</a><br/>';
				$_SESSION['last_url'] = $_SERVER['REQUEST_URI'];
			}
		}
		
	}	
	
	
?>
</div>

<div align="left" style="padding:10px; width:15%;float:left">
<?php //slike
if(isset($_GET['smjestaj'])) {
	$sqlslike="select s.id_ob, s.path, s.opis FROM slike s, smjestaj sm where s.id_ob=sm.id_ob AND sm.id_sm=".$_GET['smjestaj']. " LIMIT 0,6";
	$slike = $baza->query($sqlslike);					
	echo '<br/><br/>';								
	while ($redslike= mysql_fetch_object($slike)) {
		echo '<a href="../'.$redslike->path.'" rel="lightbox['.$redslike->id_ob.']"title="'.$redslike->opis.'"> <img src="../'.$redslike->path.'" width="120" height="120" border="0"> </a>';
	}
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