<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/prikaz.js"></script>
<title>Rezervacija smjestaja</title>
</head>

<body>
<?php
include_once "../class/baza.php";
$baza = new baza;

if(isset($_GET['ak_rez']) ) { //aktivacija rezervacije
	//informacije
	$id_rez = $_GET['ak_rez'];
	$sql = "SELECT r.id_kor, b.stanje_rac, r.osiguranje, r.potvrda
			FROM rezervacija r, bank_racun b
			WHERE b.id_kor=r.id_kor AND r.id_rez=" .$id_rez;
	$rs=$baza->query($sql);
	$row = mysql_fetch_row($rs);
	$id_kor = $row[0];
	$stanje_rac = $row[1];
	$osiguranje = $row[2];
	$potvrda = $row[3];

	if($potvrda==1) 
		echo "Ova rezervacija je već potvrđena!";
	else 		
		if(isset($_GET['ponisti']) && $_GET['ponisti']==1) { //ponisti rezervaciju
			$id_rez = $_GET['ak_rez'];
			$sql = "DELETE FROM rezervacija WHERE id_rez=" .$id_rez;
			$rs=$baza->query($sql);
			echo 'Vaša rezervacija je poništena!';	
		}
		else {	//prihvati rezervaciju
			$sql = "UPDATE rezervacija SET potvrda= '1' WHERE rezervacija.id_rez=". $id_rez;
			$rs=$baza->query($sql);
					
			//skidanje s racuna
			$novo_stanje = $stanje_rac - $osiguranje;
			$sql = "UPDATE bank_racun SET stanje_rac =".$novo_stanje." WHERE id_kor=" .$id_kor;
			$rs=$baza->query($sql);

			//e-mail za validaciju
			include_once "../class/reg.php"; 
			$mail = new reg_user;
			$mail->Send_Rez($id_rez);			
			
			echo 'Vaša rezervacija je prihvaćena!';	
		}
exit;
}


if(isset($_GET['date_from']) && isset($_GET['date_to']) && isset($_GET['id_sm']) && isset($_SESSION['id_kor']) && strlen($_GET['date_from'])>0 && strlen($_GET['date_to'])>0  ) {
	$date_from = $_GET['date_from'];
	$date_to = $_GET['date_to'];
	$id_sm = $_GET['id_sm'];
	$id_kor = $_SESSION['id_kor'];
	$cijena = $_GET['cijena'];
	$rez_dana =round((strtotime($date_to) - strtotime($date_from)) / (60 * 60 * 24))+1;
	$iznos = ($rez_dana * $cijena) - $cijena;

	echo '<span style="font-weight:bold;">Cijena smještaja za ' .$rez_dana. ' dana, iznosi ' .$iznos. ' kn.<br/>Akontacija je uračunata u cijenu smještaja!</span><br/><br/>';
	
	//provjera stanja racuna
	$sql = "SELECT stanje_rac FROM bank_racun WHERE id_kor=" .$id_kor;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$stanje_br = $row[0];
		
	if($stanje_br < $iznos) {
		$err=1;
		echo '<span style="color:#FE2E2E;">Nemate dovoljnu svotu novca na računu da bi ste rezervirali smještaj.</span><br/>';
	}
	//provjera dali je rezervacija slobodna
		$sql = "SELECT id_rez FROM rezervacija 
							WHERE (rez_od BETWEEN '" .date('Y-m-d',strtotime($date_from)). "' AND '" .date('Y-m-d',strtotime($date_to)). "'
								   OR rez_do BETWEEN '" .date('Y-m-d',strtotime($date_from)). "' AND '" .date('Y-m-d',strtotime($date_to)). "' )
						          AND id_sm =" .$id_sm;
		$rs=$baza->query($sql);			  
		if(mysql_num_rows($rs)!=0) {
			$err=1;
			echo '<span style="color:#FE2E2E;">Traženi termin je zauzet!</span><br/>';	
		}
	
	//ako je kliknut gumb rezerviraj! provjerava rezervaciju i potvrđuje
	//cijena = 0 , zato što se s racna skida tek kad se napravi validacija rezervacije
	if(isset($_GET['rez']) && $err!=1) {
		$sql = "INSERT INTO rezervacija (id_rez, id_kor, id_sm, rez_od, rez_do, datum_rez, osiguranje, prijavljen)
				VALUES (NULL , " .$id_kor. ", " .$id_sm. ", '" .date('Y-m-d',strtotime($date_from)). "', '" .date('Y-m-d',strtotime($date_to)). "', '" .date('Y-m-d  H:i:s'). "' , ".$cijena." , '')";
		$id_rez = $baza->query($sql);
		
		//skidanje akontacije s racuna - se obavlja nakon sto korisnik VALIDIRA rezervaciju
		//$novo_stanje = $stanje_br - $cijena;
		//$sql = "UPDATE bank_racun SET stanje_rac = ".$stanje_br." WHERE id_kor=".$id_kor;
		//$rs=$baza->query($sql);
		
		//Generiranje RSS-a
		include_once '../class/rss.php';
		$rss = new rss;
		$rss->GenerirajRSS();

		//-- log's
		include_once '../class/log.php';
		$log = new log;
		$log->WriteLog();

		//e-mail za validaciju
		include_once "../class/reg.php"; 
		$mail = new reg_user;
		$mail->Send_Akt_Rez($id_rez);
		
		echo '<span style="color:#FE2E2E;font-weight:bold;">Termin je rezerviran!<br/>Informacije i validacija su prodljeđeni na Vašu e-mail adresu!</span><br/>';	
		echo '<a href="korisnik.php" title="Korisnički račun, korisnik:'.$_SESSION['kor_ime'].'"><span>Korisnička stranica</span></a><br/><br/><br/>';
	}
}
else {
	if(!isset($_GET['date_from']) || strlen($_GET['date_from'])<=0)
		echo "Niste unjeli pocetni datum rezervacije!<br/>";
	if(!isset($_GET['date_to']) || strlen($_GET['date_to'])<=0)
		echo "Niste unjeli završni datum rezervacije!<br/>";
	if(!isset($_GET['id_ob']))
		echo "Niste odabrali pravovaljani smještaj!<br/>";
	if(!isset($_SESSION['id_kor'])) {
		echo '<span style="font-weight:bold;">Da bi ste mogli potvrdit rezervaciju, morate bit prijavljeni na sustav.</span><br/><a href="../prijava.php">Prijavite se na sustav</a><br/>';	
	}
}

	

?>
</body>
</html>

<?php
ob_end_flush();
?>