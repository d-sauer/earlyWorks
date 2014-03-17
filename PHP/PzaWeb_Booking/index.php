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
<script language="javascript" src="js/pregled.js"></script>
<script language="javascript" src="./class/novosti.js"></script>
<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
</style>
</head>
<?php
include_once "./class/baza.php";
$baza = new baza;
//prikupljanje NOVOSTI
$sql = "SELECT k.id_ob, o.naziv, o.mjesto, o.web_adresa, t.naziv, AVG( k.ocjena ) 
		FROM komentari k, objekt o, tip t
		WHERE o.id_ob = k.id_ob
		AND t.id_tip = o.id_tip
		AND o.aktivan =1
		GROUP BY id_ob ORDER BY AVG( k.ocjena ) DESC LIMIT 0 , 6";
$rs=$baza->query($sql);

$ponuda='<div align="center">';

while($row=mysql_fetch_row($rs)) {
	$ponuda.= '<span style="font-size:x-small;">' .$row[4] .'</span><br/>';
	$ponuda.= '<span style="font-weight:bold;">' .$row[1] .'</span><br/>';
	$ponuda.= 'Ocjena korisnika<br/>';
		for ($i=0; $i<round($row[5]); $i++){
				$ponuda.="<img src='+preload1.src+'>";
		}
	$ponuda.= ' <br/>Mjesto: <span style="font-weight:bold;">' .$row[2] .'</span><br/>';
	if(strlen($row[3])>0)
		$ponuda.='Web adresa<br/><a href="'.$row[3].'">'.$row[3].'</a><br/><br/>';
}

$sql = "SELECT s.id_ob,o.naziv,t.naziv,COUNT(*)
		FROM smjestaj s, objekt o,tip t 
		WHERE s.id_sm NOT IN (SELECT id_sm FROM rezervacija WHERE rez_od BETWEEN '1970-01-01' AND '".date('Y-m-d')."' AND rez_do BETWEEN '".date('Y-m-d')."' AND '2100-01-01')
		AND o.id_ob=s.id_ob AND t.id_tip=o.id_tip
		GROUP BY id_ob";
$rs=$baza->query($sql);	

$ponuda.='<hr/>';
$ponuda.='<span style="font-weight:bold;">Slobodni smještaji ('.date('d.m.Y.').')</span><br/>';	

while($row=mysql_fetch_row($rs)) {
	if($row[3]!=0) {
		$ponuda.=$row[2] . ': <a href="korisnik/rezervacija.php?objekt='.$row[0].'">'.$row[1].'</a><br/>';
		$ponuda.= 'Slobodnih smještaja: ' .$row[3]. '<br/><br/>';
	}
}


$ponuda.="</div";

$tekst =$ponuda;

?>
<script language="JavaScript">
wholemessage='<?php echo $tekst;?>';
</script>
<body onload="SetText(wholemessage); pregled(); ">
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
<div id="cell">
<div id="cell_right"><h1>Hoteli</h1><p>Dosta Vam je apartmana?<br/> Želite naći smještaj gdje će drugi sve raditi?</p>Pogledajte našu ponudu hotela<br/><br /><p align="right"><a href="ponuda.php?vrsta=0"><img src="slike/hotel.jpg" alt="" border="0" /></a></p>
</div>
<div id="cell_middle"><h1>Hosteli</h1><p>Trebate mjesto za prespavati, a ne želite sav svoj novac potrošiti na hotel?</p>Pogledajte koje sve hostele imamo u ponudi<br/><br/><p align="right"><a href="ponuda.php?vrsta=1"><img src="slike/hostel.jpg" alt="" border="0" /></a></p></div>
<div id="cell_left"></div>
</div>
<!--Main end-->
<div id="main">
	<div id="right">
		<h2>Novosti</h2>
		<script language="JavaScript">
			document.write('<table border="0" align="center"><tr><td width='+swidth+'px>');if (document.getElementById || document.all){document.write('<span style="height:'+sheight+'px;"><div style="position:relative;overflow:hidden;width:'+swidth+'px;height:'+sheight+'px;clip:rect(0 '+swidth+'px '+sheight+'px 0);background-color:'+sbcolor+';" onMouseover="sspeed=0;" onMouseout="sspeed=restart"><div id="slider" style="position:relative;width:'+swidth+'px;"></div></div></span>')}
        </script>
		<ilayer width=&{swidth}; height=&{sheight}; name="slider1" bgcolor=&{sbcolor};><layer name="slider2" width=&{swidth}; onMouseover="sspeed=0;" onMouseout="sspeed=restart"></layer></ilayer></table>  	
    
    
    
	</div>
<div id="left" style="padding:10px; width:490px;">
  <h1>Dobrodošli!</h1>
  <p><strong>Što je on-line booking?</strong></p>
  <p style="padding-left:10px;">On-line booking nije kontakt obrazac s osnovnim podacima 
     o gostima, njihovim rezervacijama smještaja i termina rezervacije.</p>
  <p style="padding-left:10px;">On-line booking je web aplikacija koja omogučava korisniku
		izvršiti realno rezerviranje smještaja u nekom od ponuđenih objekata
		(hoteli, hosteli, parcele), te on-line platit kreditnom karticom 
		(prema politici poslovanja tvrtke) prilikom odjavljivanja iz objekta.</p>
  <p style="padding-left:10px;">Svaka radnja, odnosno izvršeni booking bilježi se s korisničke strane
		i sa strane recepcijskog poslovanja. Tako da svi aktori rezervacije 
		imaju uvid u planirane aktivnosti.</p>

  <p><strong>Prednosti on-line bookinga:</strong></p>
  <p style="padding-left:10px;">
 	- direktan uvid u zauzeća<br/>
	- automatizirana rezervacija<br/>
	- pristupačnost 24h dnevno<br/>
	- dostupnost cijelom svijetu<br/>
	- širenje tržišta<br/>
  </p>
    
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

<?php
ob_end_flush();
?>