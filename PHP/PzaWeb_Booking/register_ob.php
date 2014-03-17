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

<script language="JavaScript" type="text/javascript" src="register.js"></script>

<div id="main">
	<div id="left" style="padding:10px; width:740px;">
    	<?php
    	include_once './class/baza.php';
    	include_once './class/reg.php';
    	$reg = new reg_user;
		$baza = new baza;
		$uid;
		echo "<h1>Zahtjev za registraciju smještaja</h1>";
		if(isset($_GET['reg']))
			switch ($_GET['reg']) {
				case 0:	//korak broj 1
					echo "<h1 class=\"medium\">Korak 1 od 2</h1><hr/><br/>";
					echo "Unos podataka za kontakt osobu<br/>";
					//provjera ispravnosti unesenih podataka
					if(isset($_POST['ime']) && isset($_POST['prezime']) && isset($_POST['email']) && isset($_POST['kor_ime']) && isset($_POST['lozinka'])) {
						$kor_ime = $_POST['kor_ime'];
						$sql= "SELECT * FROM korisnik WHERE kor_ime='$kor_ime'";
						$rs = $baza->query($sql);
						$row1 = mysql_num_rows($rs);
						
						$email = $_POST['email'];
						$sql= "SELECT * FROM korisnik WHERE email='$email'";
						$rs = $baza->query($sql);
						$row2 = mysql_num_rows($rs);
						
						if($row1==0 && $row2==0) {

							//INSERT SE RADI NA KRAJU
							//Unos podataka u cookie, za kasniji unos u bazu
							setcookie('kor_ime',$_POST['kor_ime'],time()+ 600);
							setcookie('ime',$_POST['ime'],time()+ 600);
							setcookie('prezime',$_POST['prezime'],time()+ 600);
							setcookie('adresa',$_POST['adresa'],time()+ 600);
							setcookie('tel',$_POST['tel'],time()+ 600);
							setcookie('email',$_POST['email'],time()+ 600);
							setcookie('lozinka',$_POST['lozinka'],time()+ 600);
							setcookie('post_kor',0,time()+ 600);
						}
						else {
							if($row1!=0) {
								echo "Pogreška: Unjeli ste postojece korisnicko ime, pokusajte unjeti drugo korisnicko ime. <br/>";
							}
							if($row2!=0) {
								echo "Pogreška: Unjeli ste postojecu e-mail adresu. Vec postoji korisnik s tom e-mail adresom!<br/>";
							}				
							$err_unos=1;
							setcookie('post_kor',1,time()+ 600);
						}
						header('Location: register_ob.php?reg=1');
						
					}
		//Formular____________
					?>
					<form method="post" name="reg_kor0" action="register_ob.php?reg=0" onsubmit="return check_form(this);">
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
								<td>Adresa</td>
								<td><input type="text" name="adresa" size="30" maxlength="100" value="<?php if($err_unos==1) echo $_POST['adresa']; ?>" /></td>
							</tr>
							<tr>
								<td>Telefon</td>
								<td><input type="text" name="tel" size="20" value="<?php if($err_unos==1) echo $_POST['tel']; ?>" /></td>
							</tr>
						</table>
					<input type="submit" name="new_user" value="Sljedeći korak"/>
					</form>
					<?php
					break;
					
				case 1:	//korak broj 2 -----------------------------------------------------------------------------------------------------------------------------
					echo "<h1 class=\"medium\">Korak 2 od 2</h1><hr/><br/>";
					echo "Unos podataka o objektu<br/>";
					//provjera podataka i unos podataka u cookie
					if(isset($_POST['ob_naziv']) && isset($_POST['ob_tip']) && isset($_POST['ob_mjesto']) && isset($_POST['ob_adresa']) ) {
						setcookie('ob_naziv',$_POST['ob_naziv'],time()+ 600);
						setcookie('ob_tip',$_POST['ob_tip'],time()+ 600);
						setcookie('ob_zupanija',$_POST['ob_zupanija'],time()+ 600);
						setcookie('ob_mjesto',$_POST['ob_mjesto'],time()+ 600);
						setcookie('ob_adresa',$_POST['ob_adresa'],time()+ 600);
						setcookie('ob_kategorija',$_POST['ob_kategorija'],time()+ 600);
						setcookie('ob_web',$_POST['ob_web'],time()+ 600);
						setcookie('ob_email',$_POST['ob_email'],time()+ 600);
						
						//provjera dali objekt vec postoji
						$ob_naziv = $_POST['ob_naziv'];
						$sql= "SELECT * FROM objekt WHERE naziv='$ob_naziv'";
						$rs = $baza->query($sql);
						$row1 = mysql_num_rows($rs);
						
						if($row1==0)
							header('Location: register_ob.php?reg=2');
						else
							echo "Pogreška: Postojeći naziv objekta!";
						
					}
						
					?>
					<form method="post" name="reg_kor1" action="register_ob.php?reg=1" onsubmit="return check_ob_form(this);">
					<table>
						<tr>
							<td>*Naziv objekta</td>
							<td><input type="text" name="ob_naziv" size="20" /></td>
						</tr>
						<tr>
							<td>*Vrsta objekta</td>
							<td>
								<select name="ob_tip" size="1"> 
								<option value="-1">Vrsta smjestaja</option>
								<?php
									$sql="select * from tip";
									$rs=$baza->query($sql);
									while($i=mysql_fetch_row($rs)) {
										printf("<option value=\"%d\">%s</option>",$i[0],$i[1]);
									}
								?>
								</select><br />
							</td>
						</tr>
						<tr>
							<td>*Županija</td>
							<td>
								<select name="ob_zupanija" size="1"> 
								<option value="-1">Odaberite županiju</option>
								<?php
									$sql="select * from zupanija";
									$rs=$baza->query($sql);
									while($i=mysql_fetch_row($rs)) {
										printf("<option value=\"%d\">%s</option>",$i[0],$i[1]);
									}
								?>
								</select><br />
							</td>
						</tr>
						<tr>
							<td>*Mjesto</td>
							<td><input type="text" name="ob_mjesto" size="20" /></td>
						</tr>
						<tr>
							<td>*Adresa</td>
							<td><input type="text" name="ob_adresa" size="20" maxlength="100"/></td>
						</tr>
						<tr>
							<td>Kategorija</td>
							<td><input type="text" name="ob_kategorija" size="20" maxlength="1"/></td>
						</tr>
						<tr>
							<td>Web stranica</td>
							<td><input type="text" name="ob_web" size="20" maxlength="255"/></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><input type="text" name="ob_email" size="20" maxlength="50"/></td>
						</tr>
					</table>
					<input type="submit" name="novi_objekt" value="Sljedeći korak"/>					
					</form>
					<?php
					break;
				case 2:
					//Insert odgovorne osobe	
					if($_COOKIE['post_kor']==0) {	//vlasnik objekta ne postoji
						$sql = "INSERT INTO korisnik (id_pri,kor_ime ,ime ,prezime ,adresa ,tel ,email ,lozinka ,aktivacijski_kljuc ,aktiviran) VALUES ('3', '".$_COOKIE['kor_ime']."', '".$_COOKIE['ime']."', '".$_COOKIE['prezime']."', '".$_COOKIE['adresa']."' , '".$_COOKIE['tel']."' , '".$_COOKIE['email']."', '".$_COOKIE['lozinka']. "', \"3\" ,0)";
						$uid=$baza->query($sql);
					}
					else {	//vlasnik objekta postoji u bazi, te mu se pridružuje novi objekt
						$sql = "SELECT id_kor FROM korisnik WHERE kor_ime='" .$_COOKIE['kor_ime']. "'";
						$rs = $baza->query($sql);
						$row1 = mysql_fetch_row($rs);
						$uid = $row1[0];
					}
					//unos podataka o objektu
					$sql = "INSERT INTO objekt (naziv,id_tip,id_zup,mjesto,adresa,br_zvjezdica,web_adresa,email,aktivan) VALUES('" .$_COOKIE['ob_naziv']. "'," .$_COOKIE['ob_tip']. "," .$_COOKIE['ob_zupanija']. ",'" .$_COOKIE['ob_mjesto']. "','" .$_COOKIE['ob_adresa']. "'," .(int)$_COOKIE['ob_kategorija']. ",'" .$_COOKIE['ob_web']. "','" .$_COOKIE['ob_email'] ."',0)";
					$oid=$baza->query($sql);
					//pridruživanje objekta vlasniku, odgovornoj osobi
					$sql = "INSERT INTO korisnik_objekt(id_kor,id_ob) VALUES (" .$uid. "," .$oid. ")";
					$baza->query($sql);
					
					
					echo "<h1 class=\"medium\">Vaš zahtjev je prosljeđen administratoru na daljnju obradu.<br/>Za detaljne podatke o objektu, kontaktirat ćemo Vas putem e-maila na " .$_COOKIE['email']. ".</h1><hr/><br/>";
		}//end switch
		else
			header('Location: error.php?msg=0');
	
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