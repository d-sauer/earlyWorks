<?php
class reg_user {
	function gen_user_act_key () {
		//include_once "./class/baza.php";
		//TODO provjerit dali ce radit prilikom registracije standardnog korisnika, promjena je napravljena usljed registracije korisnickog racuna na recepciji.. korisnik koji nije unaprjed registriran
		//include_once dirname(__FILE__) . "/baza.php";
		include_once "baza.php";
		$baza= new baza;
		$sql = "SELECT id_kor FROM korisnik ORDER BY id_kor DESC LIMIT 1";
		$rs = $baza->query($sql);
		$id = mysql_fetch_row($rs);
		$row = $id[0];
		$row++;

		$polje= array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","z","x","0","1","2","3","4","5","6","7","8","9"); 
		$temp =strval($row);
		$uid_len = strlen(strval($temp));
		for($i=0;$i<10-$uid_len;$i++) {
			$n=rand(0,count($polje));
			$uid.=$polje[$n];
		}
		for($i=0;$i<$uid_len;$i++)
			$uid.=$temp[$i];
		
		return $uid;
	}
	
	function RegUser_SendMail($kor_ime,$ime,$prezime,$adresa,$tel,$email,$lozinka,$actkey) {
		$act_link= $_SERVER['HTTP_HOST'] .$_SERVER['PHP_SELF'] . "?ak=" .$actkey;
		$naslov= "Registracija - Online Booking";
		$tekst="Vasi korisnièki podatci su:\n";
		$tekst.="Korisnicko ime:" . $kor_ime ."\n";
		$tekst.="Lozinka:" .$ime ."\n\n";
		$tekst.="Ime:" .$ime ."\n";
		$tekst.="Prezime:" .$prezime ."\n";
		$tekst.="E-mail:" .$email ."\n";
		$tekst.="Telefon:" .$tel ."\n";
		$tekst.="Adresa:" .$adresa. "\n\n";
		$tekst.="Da bi ste mogli koristiti servis Online Booking, kliknite na aktivacijski link:\n";
		$tekst.=$act_link;
		$headers = 'From: webmaster@onlinebooking.hr' . "\r\n" .   'Reply-To: webmaster@onlinebooking.com' . "\r\n" .    'X-Mailer: PHP/' . phpversion();
		//TODO testirat na webu slanje i primanje aktivacije na mail
		mail($email, $naslov, $tekst, $headers) or die ("Aktivacija nije uspjela");
		return false; //nema gresaka	
	}
	
	function SendRacun($id_rez, $id_rac) {
		include_once "../class/baza.php";
		$baza=new baza;
		
		$sql="SELECT k.kor_ime, k.ime, k.prezime, k.email, k.adresa, k.tel, DATE_FORMAT( r.rez_od, '%e.%m.%Y.' ), DATE_FORMAT( r.rez_do, '%e.%m.%Y.' ), DATE_FORMAT( r.datum_rez, '%e.%m.%Y. %H:%i' )
						FROM korisnik k, rezervacija r
						WHERE k.id_kor = r.id_kor
						AND r.id_rez =". $id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		$tekst = "ID racuna:" .$id_rac. "\n";
		$tekst.= "Datum izdavanja racuna: " .date('d.m.Y'). "\n";
		$tekst.= "ID rezervacije: " .$id_rez. "\n";
		$tekst.= "Korisnicko ime: " .$row[0]. "\n";
		$tekst.= "Ime i prezime: " .$row[1]. " " .$row[2]. "\n";
		$tekst.= "E-mail: " .$row[3]. "\n";
		
		$email = $row[3];
		
		$tekst.= "Adresa: " .$row[4]. "\n";
		$tekst.= "Telefon: " .$row[5]. "\n";
		$tekst.= "Datum rezervacije: " .$row[8]. "\n";
		$tekst.= "Rezervirano od: " .$row[6]. "\n";
		$tekst.= "Rezervirano do: " .$row[7]. "\n\n";
		
		//racun za sobu
		$tekst.= "___Stavke racuna____________\n\n";		
				
		$sql="SELECT s.cijena FROM smjestaj s, rezervacija r WHERE s.id_sm = r.id_sm
			  AND r.id_rez=" .$id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		$cijena_sobe=$row[0];
				
		$suma=$cijena_sobe;
				
$tekst.= "Opis usluge (Cijena * Kolicina) = Ukupno |\n";
		
		//cijena sobe
		$tekst.= "Korištenje smještaja (" .$cijena_sobe. " * 1) = " .$cijena_sobe. "\n";
		//$tekst.=sprintf("|%-70s|%-10s|%-3s|%-8s|\n", "Korištenje smještaja",$cijena_sobe,1,$cijena_sobe)	;
			
		$sql= "SELECT c.opis, c.cijena, s.kolicina, (c.cijena * s.kolicina) AS Ukupno
				FROM cjenik c, stavke s
				WHERE c.id_cjenik = s.id_cjenik
				AND s.id_rez =".$id_rez;
		$rs=$baza->query($sql);
		while($row=mysql_fetch_row($rs)) {
			$suma+=$row[3];
			$tekst.= $row[0]. " (" .$row[1]. " * " .$row[2]. ") = " .$row[3]. "\n";
		}
		$tekst.= "Ukupno: " .$suma. "\n";
			
		$tekst.= "\n\nRacun placen";
		
		$naslov= "Online Booking - Potvrda o placanju racuna";
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-2' . "\r\n";

		$headers .= "To: ".$email. "\r\n";
		$headers .= "From: OnlineBooking <osoblje@onlinebooking.hr>\r\n";
				
		mail($email, $naslov, $tekst, $headers) or die ("Slanje racuna nije uspjelo!");
		//echo $tekst;
	}
	
function Send_Akt_Rez($id_rez) {
		include_once "../class/baza.php";
		$baza=new baza;
		
		$sql="SELECT r.id_rez, k.kor_ime, k.ime, k.prezime, t.naziv, o.naziv, o.mjesto, o.adresa, 
				z.zupanija, o.br_zvjezdica, s.oznaka, DATE_FORMAT( r.rez_od, '%e.%m.%Y.' ), 
				DATE_FORMAT( r.rez_do, '%e.%m.%Y.' ) , 
				DATE_FORMAT( r.datum_rez, '%e.%m.%Y. %H:%i' ), r.osiguranje, k.email
				FROM objekt o, smjestaj s, zupanija z, rezervacija r, tip t, korisnik k
				WHERE o.id_ob = s.id_ob AND z.id_zup = o.id_zup AND t.id_tip = o.id_tip
					AND k.id_kor = r.id_kor AND s.id_sm = r.id_sm AND r.id_rez=". $id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		
		$link= $_SERVER['HTTP_HOST'] .$_SERVER['PHP_SELF'] . "?ak_rez=" .$id_rez;
		$email = $row[15];
		
		$tekst = "Poštovani, rezervirali ste na našim stranicama sljedeæi smještaj:\n";
		$tekst .= "ID rezervacije:" .$id_rez. "\n";
		$tekst.= "Korisnicko ime: " .$row[1]. "\n";
		$tekst.= "Ime i prezime: " .$row[2]. " " .$row[3]. "\n\n";

		$tekst.= "Objekt: " .$row[4]. " ".$row[5]. "\n";
		$tekst.= "Broj zvjezdica: " .$row[9]. "\n";
		$tekst.= "Smještaj: " .$row[10]. "\n";
		$tekst.= "Županija: " .$row[8]. "\n";
		$tekst.= "Mjesto: ".$row[6]. "\n";
		$tekst.= "Adresa: ".$row[7]. "\n";
		$tekst.= "Datum rezervacije: " .$row[13]. "\n";
		$tekst.= "Rezervirano od: " .$row[11]. "\n";
		$tekst.= "Rezervirano do: " .$row[12]. "\n\n";
		
		$tekst.= "Akontacija: " . $row[14] ."\n\n";		
				
		$tekst.= "\nOvaj e-mail služi kao validacija da ste baš Vi rezervirali navedeni smještaj.\n";
		$tekst.= "Za prihvaæanje ove rezervacije, kliknite na priloženi link:\n";
		$tekst.= $link;
		
		$tekst.= "\nU slucaju da ovo nije vaša rezervacija, ili ako želite poništit rezervaciju.\n";
		$tekst.= "kliknite na priloženi link:\n";
		$tekst.= $link .'&ponisti=1';
		
		$naslov= "Online Booking - Rezervacija smještaja";
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-2' . "\r\n";

		$headers .= "To: ".$email. "\r\n";
		$headers .= "From: OnlineBooking <osoblje@onlinebooking.hr>\r\n";
				
		mail($email, $naslov, $tekst, $headers) or die ("Slanje e-maila za validaciju rezervacije nije uspjelo!");
		//echo $tekst;
	}	


function Send_Rez($id_rez) {
		include_once "../class/baza.php";
		$baza=new baza;
		
		$sql="SELECT r.id_rez, k.kor_ime, k.ime, k.prezime, t.naziv, o.naziv, o.mjesto, o.adresa, 
				z.zupanija, o.br_zvjezdica, s.oznaka, DATE_FORMAT( r.rez_od, '%e.%m.%Y.' ), 
				DATE_FORMAT( r.rez_do, '%e.%m.%Y.' ) , 
				DATE_FORMAT( r.datum_rez, '%e.%m.%Y. %H:%i' ) , k.email
				FROM objekt o, smjestaj s, zupanija z, rezervacija r, tip t, korisnik k
				WHERE o.id_ob = s.id_ob AND z.id_zup = o.id_zup AND t.id_tip = o.id_tip
					AND k.id_kor = r.id_kor AND s.id_sm = r.id_sm AND r.id_rez=". $id_rez;
		$rs=$baza->query($sql);
		$row=mysql_fetch_row($rs);
		
		$link= $_SERVER['HTTP_HOST'] .$_SERVER['PHP_SELF'] . "?ak_rez=" .$id_rez;
		$email = $row[14];
		
		$tekst = "Poštovani, ovo je obavijest o uspješnoj rezervaciji smještaja:\n";
		$tekst .= "ID rezervacije:" .$id_rez. "\n";
		$tekst.= "Korisnicko ime: " .$row[1]. "\n";
		$tekst.= "Ime i prezime: " .$row[2]. " " .$row[3]. "\n\n";

		$tekst.= "Objekt: " .$row[4]. " ".$row[5]. "\n";
		$tekst.= "Broj zvjezdica: " .$row[9]. "\n";
		$tekst.= "Smještaj: " .$row[10]. "\n";
		$tekst.= "Županija: " .$row[8]. "\n";
		$tekst.= "Mjesto: ".$row[6]. "\n";
		$tekst.= "Adresa: ".$row[7]. "\n";
		$tekst.= "Datum rezervacije: " .$row[13]. "\n";
		$tekst.= "Rezervirano od: " .$row[11]. "\n";
		$tekst.= "Rezervirano do: " .$row[12]. "\n\n";
		
		$naslov= "Online Booking - Rezervacija smještaja";
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-2' . "\r\n";

		$headers .= "To: ".$email. "\r\n";
		$headers .= "From: OnlineBooking <osoblje@onlinebooking.hr>\r\n";
				
		mail($email, $naslov, $tekst, $headers) or die ("Slanje podataka o rezervaciji nije uspjelo!");
		//echo $tekst;
	}	
	
		
}

?>