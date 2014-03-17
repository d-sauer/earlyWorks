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
    	<h1>Prijava korisnika   </h1>
    	<?php
    	include_once "./class/baza.php";
		if(isset($_POST['kor_ime']) && isset($_POST['lozinka'])) {
			$baza = new baza;
			$sql = "SELECT id_kor,id_pri,kor_ime,lozinka,aktiviran FROM korisnik WHERE kor_ime='" .$_POST['kor_ime']. "'";
			$rs = $baza->query($sql);
			$row = mysql_fetch_row($rs);
			$n_row = mysql_num_rows($rs);
			
			if($n_row==1 && bin2hex($row[4])=="01") {
				$uid = $row[0];
				$pristup = $row[1];
				$kor_ime = $row[2];
				$lozinka = $row[3];
				if($lozinka==$_POST['lozinka']) {
					$_SESSION['id_kor'] = $uid;	//ID korisnika
					$_SESSION['pri'] = $pristup;	//pravo pristupa korisnika
					$_SESSION['kor_ime']= $kor_ime;
					
					//-- log's
					include_once 'class/log.php';
					$log = new log;
					$log->WriteLog();
					
					switch($pristup) {
						case 0:		//preusmjeravanje na pocetnu stranicu za administratora
							header('Location: index.php');
							break;
						case 1:		//preusmjeravanje na pocetnu stranicu za korisnika
							if(isset($_SESSION['last_url']) && strlen($_SESSION['last_url'])!=0 ) {
								$url = $_SESSION['last_url'];
								$_SESSION['last_url'] = "";
								header("Location: $url");
							}
							else
								header('Location: index.php');
							break;
						//vlasnik i osoblje imaju ista prava, samo je vlasnik odgovorna osoba za objekt
						case 2:		//preusmjeravanje na pocetnu stranicu za osoblje
							header('Location: ./objekt/objekt.php');
							break;
						case 3:		//preusmjeravanje na pocetnu stranicu za vlasnika/osoblje
							header('Location: ./objekt/objekt.php');
							break;
					}					
				}
				else {
					echo "<br/>Pokreška: Unjeli ste krivu lozinku!<br/>";
				}
			}
			else {
				echo "Pogreška: Korisnički račun nije aktiviran!<br/>Provjerite svoj e-mail, na koji je prosljeđen aktivacijski ključ za Vaš korisnički račun.<br/>";
			}			
		}
		else {
			//echo "<br/>Pogreška: Niste unjeli sve potrebne podatke za logiranje!<br/>";
		}
    	
    	
    	
    	?>
        	<form name="login" action="prijava.php" method="post">
            <table>
            	<tr>
            		<td>Korisničko ime</td>
            		<td><input type="text" name="kor_ime" value="" /></td>
                </tr>
                <tr>
                	<td>Lozinka</td>
            		<td><input type="password" name="lozinka" value="" /></td>
                 </tr>
                 <tr>
                 	<td><input type="submit" value="Prijavi se" /></td>
                    <td><input type="reset" value="Poništi" /></td>
                 </tr>                
            </table>
            </form>
            
            Niste još registrirani? <a href="register.php">Registrirajte se &raquo;</a>
            <br/><br/>
            Želite registrirati smještajni objekt? <a href="register_ob.php?reg=0">Registracija smještajnog objekta &raquo;</a>
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