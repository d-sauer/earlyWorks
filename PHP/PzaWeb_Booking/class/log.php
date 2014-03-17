<?php
session_start();

include_once 'baza.php';

class log {	//tablica log
	function WriteLog() {
		$baza = new baza;
	
		if(isset($_SESSION['id_kor'])) {
			$IdKorisnika = $_SESSION['id_kor'];
			$IpAdresa = $_SERVER['REMOTE_ADDR'];
			$skripta=$_SERVER['PHP_SELF'];
			$parametri= $_SERVER['REQUEST_URI'];
			$vrijeme= date('Y-n-d H:i:s');
			$preglednik = $_SERVER['HTTP_USER_AGENT'];
			
			$sql = "INSERT INTO logovi (`id_kor` ,`IPadress` ,`skripta` ,`parametri` ,`vrijeme` ,`preglednik` ) VALUES ('$IdKorisnika', '$IpAdresa', '$skripta', '$parametri', '$vrijeme','$preglednik')";
			$baza->query($sql);
		}
	}
}
?>