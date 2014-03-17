<?php
	header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	header("Content-Type: text/html; charset=Windows-1250");
	include_once '../class/baza.php';
	$baza=new baza;
?>
<?php
function korisniciLiveSearch($kor){
	global $baza;
	$kor='%'.$kor.'%';
	$sql="select * from korisnik where concat(ime,' ',prezime) like '$kor';";
	$rezultat=$baza->query($sql);
	while ($red=mysql_fetch_array($rezultat)){
		?>
		<a href="korisnici.php?akt=korisnik&uid=<?php echo $red[0]?>" onclick="ajax(this.href,'korisniciDetalji');return false;"><?php echo $red[3].' '.$red[4]?></a><br/>
		<?php
	}
}
function korisniciGet($uid=''){
	global $baza;
		if($uid==''){
			$sql="select k.*, p.pristup 
				from korisnik k, pravo_pristupa p 
				where (k.id_pri=p.id_pri) and p.id_pri!='0';";
		}else{
			$sql="select k.*, p.pristup 
				from korisnik k, pravo_pristupa p 
				where (k.id_pri=p.id_pri) and (id_kor='$uid');";
		}
		$rezultat=$baza->query($sql);
		?>
		<table>
        	<tr class="tableHeader">
            	<th>Tip korisnika</th><th>Ime i prezime</th><th>Adresa</th><th>Telefon</th><th>Email</th><th>Aktiviran</th><th></th>
            <tr>
		<?php
		while($red=mysql_fetch_array($rezultat)){
			?>
			<tr>
            	<td><?php echo $red[11];?></td>
                <td><?php echo $red[3]." ".$red[4];?></td>
                <td><?php echo $red[5];?></td>
                <td><?php echo $red[6];?></td>
                <td><?php echo $red[7];?></td>
                <td><?php if($red[10]) echo '1';?></td>
                <td class="link"><?php if($red[1]=='2'){
										?>
											<a href="korisnici.php?akt=osoblje&uid=<?php echo $red[0];?>" onclick="ajax(this.href,'korisnikDetalji');return false;">Postavke</a>
                                         <?php
										}else{
										?> <a href="korisnici.php?akt=transakcije&uid=<?php echo $red[0];?>" onclick="ajax(this.href,'korisnikDetalji');return false;">Prikazi transakcije</a>
                                        <?php } ?></td>
			</tr>
			<?php
		}
		?>
        </table>
        <div id="korisnikDetalji" class="korisnikDetalji">
        </div>
		<?php		
	

}
function korisniciTransakcije($id){
	global $baza;
	$sql="SELECT k.ime, k.prezime, r . *
			FROM korisnik k, racun r
			LEFT JOIN rezervacija rez ON rez.id_rez = r.id_rez
			WHERE rez.id_kor = k.id_kor
			AND k.id_kor = '$id'";
	$rezultat=$baza->query($sql);
	?>
    <div class="korisnikRacuni">
    <?php
	if(mysql_num_rows($rezultat)==0){
		echo "<strong>Nema izdatih racuna</strong>";
	}else{
		$red=mysql_fetch_row($rezultat);
		?>
        <table>
        	<tr class="formaHead">
            	<th colspan="3"><?php echo $red[0]." ".$red[1];?>
                </th>
            </tr>
            <tr>
            	<td><b>Racun br:</b></td>
                <td><b>Izdato:</b></td>
                <td><b>Ukupno:</b></td>
            </tr>
            <tr>
            	<td><?php echo $red[2];?></td>
                <td><?php echo $red[4];?></td>
                <td><?php echo $red[5];?></td>
            <tr>
       <?php
		while($red=mysql_fetch_array($rezultat)){
			echo "<tr><td>".$red[2]."</td><td>".$red[4]."</td><td>".$red[5]."</td></tr>";
		}
		?>
        </table>
    <?php
	}
	$sql="select * from bank_racun where id_kor='$id';";
	$rezultat=$baza->query($sql);
	if(mysql_num_rows($rezultat)==0){
		echo "<br/>Korisnik nema otvoren racun";
	}else{
		$red=mysql_fetch_row($rezultat);
		echo "<br/><strong>Broj racuna: </strong>".$red[1]."  <strong>Stanje: </strong>".$red[2];
	}
	?>
	</div>
    <?php
}
function Osoblje($id){
	global $baza;
	$sql="select pp.pristup, k.kor_ime, k.ime, k.prezime
			from pravo_pristupa pp, korisnik k 
			where k.id_pri=pp.id_pri and k.id_kor='$id';";
	$rezultat=$baza->query($sql);
   	$red=mysql_fetch_row($rezultat);
	?>
    <form name="formaOsoblje" id="formaOsoblje" method="post" onsubmit="return false;" action="korisnici.php">
    <table class="osobljePostavke">
 	 	<tr class="formaHead">
    	   	<th colspan="2"><?php echo $red[0]." ".$red[2]." ".$red[3];?></th>
        </tr>
      	<?php
		$sql="SELECT id_ob FROM korisnik_objekt WHERE id_kor='$id';";
		$rezultat=$baza->query($sql);
		$obj='';
		if(mysql_num_rows($rezultat)==0){
			echo "<tr><td colspan=\"2\"><b>Djelatnik nije dodjeljen ni jednome objektu</b></td></tr>";
		}else{
			$red=mysql_fetch_array($rezultat);
			$obj=$red[0];
		}
		$sql="select o.id_ob, t.naziv, o.naziv
				from objekt o, tip t
				where o.id_tip=t.id_tip;";
		$rezultat=$baza->query($sql);
		while($red=mysql_fetch_array($rezultat)){
			?>
            <tr>
            	<td class="tCheck">
                	<input type="radio" name="objekt" value="<?php echo $red[0];?>" <?php 
												if ($red[0]==$obj)
													echo "checked=\"true\""; ?>/></td>
                <td><?php echo $red[1]." ".$red[2];?></td>
			</tr>
            <?php
		}
		?>
        	<tr>
            	<td colspan="">
                <input type="hidden" name="osoblje" value="<?php echo $id;?>" />
        <input type="button" value="Dodjeli" onclick="ajde(document.getElementById('formaOsoblje'),'korisnici.php?akt=osobljeUredi','korisnikDetalji');return false;" />
                </td>
            </tr>
        </table>
        
        </form>
<?php
}
function osobljeUredi(){
	global $baza;
	if(isset($_POST['osoblje'])){
		
		$idkor=$_POST['osoblje'];
		$idobj=$_POST['objekt'];
		$sql="SELECT id_ob FROM korisnik_objekt WHERE id_kor='$idkor';";
		$rezultat=$baza->query($sql);
		
		if(mysql_num_rows($rezultat)!=0){
			$sql="update korisnik_objekt set id_ob='$idobj' where id_kor='$idkor';";
		}else{
			$sql="insert into korisnik_objekt values('$idkor','$idobj');";
		}
		$rezultat=$baza->query($sql);
		echo "Izvršeno";		
	}
}
function osobljeStart(){
	global $baza;
	$sql="select * from korisnik where id_pri='2'";
	$rezultat=$baza->query($sql);
	?>
    <table>
    	<tr class="tableHeader">
        	<th colspan="6">Podaci o djelatnicima:</th>
        </tr>
    <?php
	if(mysql_num_rows($rezultat)==0){
		echo "<tr><td>Nema registriranog osoblja</td></tr>";
	}else{
		while($red=mysql_fetch_array($rezultat)){
			?>
            <tr>
            	<td><?php echo $red[2];?></td>
            	<td><?php echo $red[3];?></td>
                <td><?php echo $red[4];?></td>
                <td><a href="korisnici.php?akt=osoblje&uid=<?php echo $red[0];?>" onclick="ajax(this.href,'korisnikDetalji');return false;">Dodjeli objekt</a></td>
                <td><a href="korisnici.php?akt=osobljeIzmjeni&uid=<?php echo $red[0];?>" onclick="ajax(this.href,'korisnikDetalji');return false;">Izmjeni</a>i</td>
                <td><a href="korisnici.php?akt=osobljeBrisi&uid=<?php echo $red[0];?>" onclick="ajax(this.href,'korisnikDetalji');return false;">Briši</a></td>
            </tr>
            <?php
		}
	}
	?>
    </table>
    <a href="korisnici.php?akt=osobljeNovi" onclick="ajax(this.href,'korisnikDetalji');return false;">Novi djelatnik</a>
    <br class="clear"/>
    <div id="korisnikDetalji">
    </div>
    <?php

}
function osobljeNovi($id=''){
	global $baza;
	$check=false;
	if($id!=''){
		$sql="select id_kor, kor_ime, ime, prezime, lozinka from korisnik where id_kor='$id';";
		$rezultat=$baza->query($sql);
		$red=mysql_fetch_row($rezultat);
		$check=true;
	}
	?>
    <form action="korisnici.php" name="noviDjelatnik" id="noviDjelatnik" method="post" onsubmit="return false">
    	<table>
        	<tr class="formaHead">
            	<td colspan="2">Novi djelatnik</td>
            </tr>
            <tr>
            	<td>Korisnicko ime:</td>
                <td><input type="text" name="kKorIme" value="<?php if($check) echo $red[1];?>"/></td>
            </tr>
            <tr>
            	<td>Lozinka:</td>
                <td><input type="password" name="kLozinka" value="<?php if($check) echo $red[4];?>"/></td>
            </tr>
            <tr>
            	<td>Ime:</td>
                <td><input type="text" name="kIme" value="<?php if($check) echo $red[2];?>"/></td>
            </tr>
            <tr>
            	<td>Prezime:</td>
                <td><input type="text" name="kPrezime" value="<?php if($check) echo $red[3];?>"/></td>
            </tr>
            <tr class="formaControl">
            	<td colspan="2">
                	<input type="hidden" name="kId" value="<?php if($check) echo $red[0];?>" />
                	<input type="hidden" name="kNovi" />
                    <input type="button" value="Dodaj" onclick="ajde(document.getElementById('noviDjelatnik'),'korisnici.php?akt=osobljeDodaj','korisnikDetalji');return false;" />
                </td>
            </tr>
        </table>
    </form>
    <?php
}
function osobljeDodaj(){
	global $baza;
	$id='';
	if(isset($_POST['kNovi'])){
		if(isset($_POST['kId']))
			$id=$_POST['kId'];
		$korime=$_POST['kKorIme'];
		$pass=$_POST['kLozinka'];
		$ime=$_POST['kIme'];
		$prezime=$_POST['kPrezime'];
		
		if($id!=''){
			$sql="update korisnik set kor_ime='$korime', ime='$ime', prezime='$prezime', lozinka='$pass' where id_kor='$id';";
		}else{
			
			$sql="insert into korisnik set id_kor=default, id_pri='2',kor_ime='$korime', ime='$ime', prezime='$prezime', lozinka='$pass', aktiviran='1';";
		}
		$rezultat=$baza->query($sql);
	}
	echo "Djelatnik ".$ime." ".$prezime." dodan";

}
function osobljeBrisi($id){
	global $baza;
	$sql="delete from korisnik where id_kor='$id';";
	$rezultat=$baza->query($sql);
	echo "Izvrseno";
}
	if(isset($_GET['akt'])){
		$aktivnost=$_GET['akt'];
		switch($aktivnost){
			case 'korisnikTrazi':
				if(isset($_GET['str'])){
					$kor=strtolower($_GET['str']);
					korisniciLiveSearch($kor);
				}
				break;
			case 'korisnik':
				if(isset($_GET['uid'])){
					$kor=$_GET['uid'];
					korisniciGet($kor);
				}
				break;
			case 'transakcije':
				if(isset($_GET['uid'])){
					$kor=$_GET['uid'];
					korisniciTransakcije($kor);
				}
				break;
			case 'osoblje':
				if(isset($_GET['uid'])){
					$kor=$_GET['uid'];
					Osoblje($kor);
				}
				break;
			case 'osobljeUredi':
				osobljeUredi();
				break;
			case 'osobljeStart':
				osobljeStart();
				break;
			case 'osobljeNovi':
				osobljeNovi();
				break;
			case 'osobljeDodaj':
				osobljeDodaj();
				break;
			case 'osobljeIzmjeni':
				if(isset($_GET['uid'])){
					$uid=$_GET['uid'];
					osobljeNovi($uid);
				}
				break;
			case 'osobljeBrisi':
				if(isset($_GET['uid'])){
					$uid=$_GET['uid'];
					osobljeBrisi($uid);
				}
				break;
		}
	}else {
		$sql="select count(id_kor) as brojKorisnika from korisnik where id_pri!=0;";
		$rezultat=$baza->query($sql);
		$red=mysql_fetch_row($rezultat);
		echo "<strong>Broj registriranih korisnika:</strong> ".$red[0]."<br/>";
		?>
		Ime i/ili prezime korisnika:<br/>
		<form onsubmit="return false;">
			<input type="text" id="txt1" size="30" onkeyup="korisnici(this.value);">
			<div id="korisniciTrazilica"></div>
		</form>
		<a href="korisnici.php?akt=korisnik&uid=" onclick="ajax(this.href,'korisniciDetalji');return false;">Prikaži sve</a>
		<div id="korisniciDetalji"></div>
		<?php
	}
?>
