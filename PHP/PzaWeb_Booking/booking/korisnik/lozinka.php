<?php 
	header("Content-Type: text/html; charset=Windows-1250");
	include_once "../class/baza.php";
	$baza = new baza;
	
	if (isset($_GET['pro'])){
		$korisnik=$_GET['pro'];
		$vrati = '<table>
		<th>Promjena lozinke</th>
		<tr>
		<td>Unesite trenutnu lozinku: </td>
		</tr>
		<tr>
		<td><input type="password" name="passold" id="passold" onkeyup="trenutna('.$korisnik.')" /> </td>
		<td><label id="lozold"></label></td>
		</tr>
		</table><div id="ostatak"></div>';
		echo $vrati;
	}
	
	else if (isset($_GET['ostalo'])){
		$tkoto=$_GET['ostalo'];
		$ostatak='<table>
		<tr>
		<td><div id="pas1">Unesite novu lozinku:</div></td>
		</tr>
		<tr>
		<td><input type="password" name="pass1" id="pass1" /></td>
		</tr>
		<tr>
		<td><div id="pas2">Ponovo unesite novu lozinku:</div></td>
		</tr>
		<tr><td><input type="password" name="pass2" id="pass2" onkeyup="iste()" /> </td>
		<td><label id="picc"></label></td>
		</tr>
		<br />
		<tr>
		<td><input type="button" value="Promijeni" onClick="novaloz('.$tkoto.')" /> 
		<input type="button" value="Odustani" onClick="location.reload(true); " /></td>
		</tr>
		</table>';	
		echo $ostatak;
	}
	else if (isset($_GET['kor']) && isset($_GET['unos'])){
		$id_kor = $_GET['kor'];
		$tkoto=$id_kor;
		$unesao = $_GET['unos'];
		$duzina = strlen($unesao);
		$upit = "select lozinka from korisnik where id_kor=".$id_kor;
		$sql = $baza->query($upit);
		$reza = mysql_fetch_object($sql);
		$stara_lozinka = $reza->lozinka;
		if ($unesao == $stara_lozinka){
			echo '<img src="../slike/ok24.png" id="DOBRO" alt="Unos je OK" onload="dajOstale('.$id_kor.')" />';
		}
		else if ($unesao==''){
			echo ' ';
		}
		else{
			echo '<img src="../slike/del24.png" id="LOSE" alt="Unos NIJE OK" />';	
		}
	}
	else if (isset($_GET['user']) && isset($_GET['lozinka'])){
		$kome=$_GET['user'];
		$kaj=$_GET['lozinka'];
		
		$sqlloz="UPDATE korisnik SET lozinka='".$kaj."' WHERE id_kor=".$kome;
		$napravi=$baza->query($sqlloz); 
		
	}

?>
