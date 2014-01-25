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

<script language="JavaScript" type="text/javascript" src="register.js">
</script>
<div id="main">
	<div id="left" style="padding:10px; width:740px;">
    	<?php
    	include_once './class/baza.php';
    	include_once './class/reg.php';
    	$reg = new reg_user;
		$baza = new baza;
		
		//u slucaju aktivacije korisnika
		if(isset($_GET['ak'])) {
			$akey =$_GET['ak']; 
			$sql = "SELECT kor_ime from korisnik WHERE aktivacijski_kljuc='$akey'";
			$rs = $baza->query($sql);
			$row1 = mysql_fetch_row($rs);
						
			$sql = "UPDATE korisnik SET aktiviran=1 WHERE aktivacijski_kljuc='$akey'";
			$baza->query($sql);
			
			echo "<h1>Registracija korisnika</h1>";
			echo "Vaš korisnički račun '" .$row1[0]. "' je aktiviran!";
			exit;
		}
		
		echo "<h1>Registracija korisnika</h1>";
		//provjera dali je korisnicko ime jedinstveno, tj dali ne postoji u bazi
		if(isset($_POST['ime']) && isset($_POST['prezime']) && isset($_POST['email']) && isset($_POST['kor_ime']) && isset($_POST['lozinka'])) {
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
				$err=$reg->RegUser_SendMail($_POST['kor_ime'],$_POST['ime'],$_POST['prezime'],$_POST['adresa'],$_POST['tel'],$_POST['email'],$_POST['lozinka'],$actkey);	//Slanje aktivacijskog maila korisniku
				
				if($err==false) {	//nema greske prilikom slanja maila
					//dodavanje korisnika
					$sql = "INSERT INTO korisnik (id_pri,kor_ime ,ime ,prezime ,adresa ,tel ,email ,lozinka ,aktivacijski_kljuc ,aktiviran) VALUES ('1', '".$_POST['kor_ime']."', '".$_POST['ime']."', '".$_POST['prezime']."', '".$_POST['adresa']."' , '".$_POST['tel']."' , '".$_POST['email']."', '".$_POST['lozinka']."', '".$actkey."' , 0)";
					$id_kor=$baza->query($sql);
					
					//dodavanje bankovnog racuna
					$sql = "INSERT INTO bank_racun(id_kor,broj_racuna) VALUES(" .$id_kor. "," .$_POST['bank_rac']. ")";
					$rs =$baza->query($sql);
					 
					echo "Korisnicki racun je registriran.<br/>";
					echo "Aktivacijski kljuc je prosljedjen na vasu e-mail adresu!<br/>";
				}
				else {
					header('Location: error.php?msg=1');	
				}
				
				
				
				exit;
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
		
		//-----------
		//formular za registraciju korisnika
		?>
		<form method="post" name="reg_kor" action="register.php" onsubmit="return check_form(this);">
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
					<td>*E-mail</td>
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
		<input type="submit" name="new_user" value="Registriraj"/>
		</form>
		<?php

		
		
    	?>    
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