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
    <li><a href="./index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		include_once "./class/baza.php";
		$baza = new baza;

		
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
			echo '<li><a href="./index.php?logout='.$_SESSION['id_kor'].'" title="Odjava registriranog korisnika"><span>Odjava</span></a></li>';
		}
		else {
        	echo '<li><a href="./prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
		}
	?>
    <li><a href="./pretrazi.php" title="Pretraživanje smještaja"><span>Pretraživanje</span></a></li>
    <li><a href="./rss.php" title="RSS slobodnog smještaja"><span>RSS</span></a></li>
    <li><a href="./onama.php" title="O nama - TIM 17"><span>O nama</span></a></li>
    <li><a href="./dokumentacija.php" title="Projektna dokumentacija"><span>Dokumentacija</span></a></li>
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
<div id="right" style="padding:10px; width:70%;"> 
	<?php
	echo '<h2 style="letter-spacing: 4px">Komentari</h2>';
	include_once "class/baza.php";
	$baza = new baza;
	
	if(isset($_GET['id_ob'])) {	//komentari za objekt
		$id_ob= $_GET['id_ob'];
		
		if(isset($_POST['ocijena']) && isset($_POST['komentar']) && $_POST['komentar']!=" ") {	//ako je dodan novi komentar
			$date = date('Y-m-d H:i:s');
			$id_kor = $_SESSION['id_kor'];
			$sql = "INSERT INTO komentari (id_ob,id_kor,komentar,ocjena,datum)
						VALUES (".$id_ob.", ".$id_kor.", '".$_POST['komentar']."', ".$_POST['ocijena'].", '".$date."')";
			$baza->query($sql);
			
			//-- log's
			include_once 'class/log.php';
			$log = new log;
			$log->WriteLog();
			
			$_POST['ocijena']=1;
			$_POST['komentar']=" ";
		}
	
	
		
		$sql = "SELECT u.kor_ime, DATE_FORMAT(k.datum, '%d.%m.%Y. %H:%i:%s'), k.ocjena, k.komentar
				FROM komentari k, korisnik u
				WHERE u.id_kor = k.id_kor
				AND k.id_ob =" .$id_ob .'
				ORDER BY k.datum DESC';
		$rs = $baza->query($sql);
		$num_r=mysql_num_rows($rs);
		$n=0;
		while($row = mysql_fetch_row($rs)) {
			$n++;
			echo 'Korisnik: <span style="font-weight:bold;">' .$row[0].'</span><br/>';
			echo 'Datum: ' .$row[1] .'<br/>';
			echo 'Ocjena: ' ;
			for ($i=0; $i<$row[2]; $i++){
				echo '<img src="slike/zvijezda.png">';
			}
			echo '<br/><p><span style="margin-left:15px">'.$row[3] .'</span></br>';
			
			if($n!=$num_r)
				echo '<hr/></p>';
			else
				echo '</p>';
		}
		
		if(isset($_SESSION['id_kor'])) {	//korisnik je logiran, omogucit ostavljanje komentara
			?><br/><br/><hr/>
				<form method="post" name="forum" action="komentari.php?id_ob=<?php echo $id_ob;?>">
					Ocjena smještaja: 
                    <input type="radio"  name="ocijena" value="1" checked="checked"/>1
                    <input type="radio"  name="ocijena" value="2" />2
                    <input type="radio"  name="ocijena" value="3" />3
                    <input type="radio"  name="ocijena" value="4" />4
                    <input type="radio"  name="ocijena" value="5" />5
					<br/>
                    Komentar:<br />
					<span style="margin-left:15px">
                    	<textarea rows="7" cols="35" name="komentar" ></textarea>
                    </span>
                    <br/>
                    <span style="margin-left:15px">
						<input type="submit" name="dodaj" value="Dodaj komentar"  />
    	                <input type="reset" name="reset" value="Obriši" />
                    </span>
                </form>
        
			<?php
		}
	
	
	}
	?>
</div>
    
<div id="left" style="padding:10px; width:30%;"> 
	<?php
    if(isset($_GET['id_ob'])) {	//komentari za objekt
		$id_ob= $_GET['id_ob'];
		$sql = "SELECT o.naziv,o.mjesto,o.adresa,z.zupanija,o.email, o.web_adresa 
				FROM objekt o, zupanija z
    			WHERE z.id_zup=o.id_zup AND id_ob=" .$id_ob;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
	
		echo '<h2>Hotel</h2>';	
		echo '<p>Naziv: <span style="letter-spacing:4px;font-weight:bold;">' .$row[0]. '</span><br/>
				 Mjesto: ' .$row[1] .'<br/>
			     Adresa: ' .$row[2] .'<br/>
				 Županija: ' .$row[3] .'<br/>
				 E-Mail: ' .$row[4]. '<br/>
				 Web adresa: <a href="'.$row[5].'">' .$row[5]. '</a><br/></p>';
		
	
	}
	else //nije odabran objekt
	echo '<h2>Hotel</h2>';
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