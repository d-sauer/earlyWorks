<?php
session_start();
ob_start();

require('libs/smarty/Smarty.class.php');
$smarty = new Smarty;
foreach ($_POST as $key => $value) {
	$smarty->assign($key, $value);
}

// Pozivanje funkcija ovisno o nazivu akcije
include_once ('libs/util/baza.php');
include_once ('libs/util/isUserLogedIn.php');
$db = new baza;
$msg = "";
$reg = false; 



// FUNKCIJE
include_once ('libs/util/akcija.php');

function init() {
	if(isset($_GET['token']) && isset($_GET['kor_ime'])) {
		aktivacija($_GET['token'], $_GET['kor_ime']);
	}
}

	function aktivacija($token, $korisnicko_ime) {
		global $db, $msg, $reg, $smarty;
		$sql = "SELECT * FROM tv_korisnici WHERE korisnicko_ime='".$korisnicko_ime."' and token='".$token."'";
		$rs = $db->baza_upit($sql);
		$red = mysql_fetch_assoc($rs);
		if(mysql_num_rows($rs)==1) {
			$id = $red['id'];
			$sql = "update tv_korisnici set aktiviran=1 where id=" . $id;			
			$rs = $db->baza_upit($sql);
			
			// auto login
			$_SESSION['korisnicko_ime'] = $red['korisnicko_ime'];
			$_SESSION['korisnik_id'] = $red['id'];
			$_SESSION['tip_korisnika_id'] = $red['tip_korisnika_id'];
			$smarty->assign("is_loged_in",$_SESSION['korisnicko_ime']);
			$smarty->assign("tip_korisnika_id",$_SESSION['tip_korisnika_id']);
			
			$smarty->assign('msg', 'Vaš korisnički račun je uspješno aktiviran!<br/><span style="color:#000000;">Posjetite Vaše korisničke stranice:</span> <a style="font-size:15px; color:#FF0000;" href="user_home.php">Moj TV</a>');
			$smarty->display('msg.tpl');
			$reg = true;
		} else {
			$smarty->assign('msg', "Neispravno korisničko ime ili token za aktivaciju!");
			$smarty->display('msg.tpl');
			$reg = true;
		}
		
	}

	function registracija() {
		global $db, $msg, $reg, $smarty;
		$username = $_POST['username'];
		$ime = $_POST['ime'];
		$prezime = $_POST['prezime'];
		$pass1 = $_POST['pass1'];
		$pass2 = $_POST['pass2'];
		$mail = $_POST['mail'];
		$tel = $_POST['tel'];
		$captcha_code = $_POST['captcha_code'];
		
		if(ispravnost_unosa($_POST)) {
			//
			// provjeri dali korisnicko ime postoji u bazi
			//
			$token = date('YmdHis');
			$sql = "SELECT * FROM tv_korisnici WHERE korisnicko_ime='".$username."'";
			$rs = $db->baza_upit($sql);
			$red = mysql_fetch_assoc($rs);
			if(mysql_num_rows($rs)==0) {
				$sql_insert = "INSERT INTO tv_korisnici (id ,tip_korisnika_id ,korisnicko_ime ,lozinka ,ime ,prezime ,email ,mobitel ,token ,aktiviran) " .
						      " VALUES (NULL , '4', '".$username."', '".$pass1."', '".$ime."', '".$prezime."', '".$email."', '".$tel."', '".$token."', '0')";
				$rs = $db->baza_upit($sql_insert);
	
				//send mail
				sendMailAktivacija($token, $username, $mail);
				
				// prikazi poruku na ekranu
				$poruka = 'Vaš formular za registraciju je uspješno proveden.<br/>Podaci o aktivaciji su prosljeđeni na vašu e-mail adresu ('.$mail.')<br/>' . $msg;
				$smarty->assign('msg', $poruka);
				$smarty->display('msg.tpl');
				$reg = true;
			} else {
				$msg = "Korisničko ime već postoji, unesite drugo korisničko ime!";
			}
		}
	}

	function sendMailAktivacija($token, $korIme, $emailTo) {
					global $msg;
					$pageURL = "http://" . $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 
					$url = $pageURL . "?token=" . $token . '&kor_ime=' . $korIme;
					
					//
					// Poruka koja se šalje korisniku na e-mail					
					//
					$poruke = "Za aktivaciju korisinčkog računa na TV portalu, slijedite sljedeći link:";
					$poruke .=  $url;
					
					$headers = 'From: dasvegovi@foi.hr'; 
					
					if(!mail($emailTo, "TV Portal - Aktivacija korisničkog računa", $poruke, $headers)) {
						$msg .= 'Došlo je do pogreške prilikom slanja e-maila!';
					}
		
	}

	function ispravnost_unosa($_POST) {	
				global $msg;			
				$popunjenost=true;
				if (!isset($_POST['username']) || strlen($_POST['username'])==0) 
					$popunjenost=false;  /* ako neki od uvjeta nije zadovoljen, poslan i popunjen tada je popunjenost=false */
				if (!isset($_POST['ime']) || strlen($_POST['ime'])==0) 
					$popunjenost=false;  /* ako neki od uvjeta nije zadovoljen, poslan i popunjen tada je popunjenost=false */
				if (!isset($_POST['prezime']) || strlen($_POST['prezime'])==0)
					$popunjenost=false;
				if (!isset($_POST['pass1']) || strlen($_POST['pass1'])==0) 
					$popunjenost=false;
				if (!isset($_POST['pass2']) || strlen($_POST['pass2'])==0) 
					$popunjenost=false;
				if (!isset($_POST['mail']) || strlen($_POST['mail'])==0) 
					$popunjenost=false;
					
				if ($popunjenost==false) {
					$msg = 'Niste unjeli sva polja!';
					return $popunjenost;
				}
					
				if (!isset($_POST['captcha_code']) || strlen($_POST['captcha_code'])==0) {
					$msg = 'Unesite sigurnosni kod!';
					$popunjenost=false;
					return $popunjenost;
				} 
				
				
					
				if ($popunjenost==true && $_POST['lozinka1']!=$_POST['lozinka2']) { 
					$popunjenost=false;
					$msg = 'Lozinke  nisu identične';
					return $popunjenost;
				}

				if($popunjenost==true && !preg_match("/^([a-zA-Z0-9\.])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]+)+/",$_POST['mail']))	{
					$popunjenost=false;
					$msg =  'E-mail adresa nije ispravna';
					return $popunjenost;
				}
				
				//
				// Provjera ispravnosti za captchu
				//
				
				include_once realpath('libs/securimage/securimage.php');
				$securimage = new Securimage();
				if ($popunjenost==true && $securimage->check($_POST['captcha_code']) == false) {
				  $msg = "Sigurnosni kod nije ispravan!";
				  $popunjenost=false; 
		  		  return $popunjenost;
				}
					
				return $popunjenost;
			}

if($reg==false) {
	$smarty->assign('msg', $msg);
	$smarty->display('tv_registracija.tpl');
}
ob_end_flush();
?>