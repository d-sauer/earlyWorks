<?php
ob_start();
session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>OnLine Booking</title>
<link href="../style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../js/pregled.js"></script>

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
    <li><a href="../index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		include_once "../class/baza.php";
		$baza = new baza;

		
		if (isset($_GET['logout'])) {
			session_destroy();
			header('Location: index.php');
		}
	
		if(isset($_SESSION['id_kor'])) {
			$pristup = $_SESSION['pri'];
			
			switch ($pristup) {
				case 0:	//admin
					echo '<li><a href="../admin/admin.php" title="Administracija"><span>Administracija</span></a></li>';
					break;
				case 1:	//korisnik
					echo '<li><a href="../korisnik/korisnik.php" title="Korisnički račun, korisnik:'.$_SESSION['kor_ime'].'"><span>Korisnik</span></a></li>';
					break;
				case 2:	//osoblje
					echo '<li><a href="../objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
				case 3:	//vlasnik
					echo '<li><a href="../objekt/objekt.php" title="Upravljanje objektom"><span>Osoblje</span></a></li>';
					break;
			}
			echo '<li><a href="../index.php?logout='.$_SESSION['id_kor'].'" title="Odjava registriranog korisnika"><span>Odjava</span></a></li>';
		}
		else {
        	//echo '<li><a href="../prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
			header('Location: ../error.php?msg=5');
		}
	?>
    <li><a href="../pretrazi.php" title="Pretraživanje smještaja"><span>Pretraživanje</span></a></li>
    <li><a href="../rss.php" title="RSS slobodnog smještaja"><span>RSS</span></a></li>
    <li><a href="../onama.php" title="O nama - TIM 17"><span>O nama</span></a></li>
    <li><a href="../dokumentacija.php" title="Projektna dokumentacija"><span>Dokumentacija</span></a></li>
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

    <div id="right" style="padding:10px; width:65%;"> 
        <h2 style="letter-spacing: 4px">Aktivnosti</h2>
        <p style="letter-spacing: 3px">Trenutne rezervacije</p>
        <?php
		if(isset($_SESSION['id_kor'])) {
			$id_kor = $_SESSION['id_kor'];
			//Rezervacije u tijeku
			$sql = "SELECT r.id_rez,DATE_FORMAT(r.datum_rez, '%d.%m.%Y. %H:%i:%s'),DATE_FORMAT(r.rez_od, '%d.%m.%Y.'),DATE_FORMAT(r.rez_do, '%d.%m.%Y.'),
					r.osiguranje,r.prijavljen,o.naziv,s.oznaka,s.id_sm, r.potvrda
					FROM rezervacija r,smjestaj s, objekt o 
					WHERE s.id_sm=r.id_sm AND o.id_ob=s.id_ob 
					AND r.id_rez NOT IN (SELECT id_rez FROM racun) 
					AND r.id_kor=".$id_kor. " ORDER BY r.id_rez DESC";
			$rs = $baza->query($sql);
			
				
			while($row=mysql_fetch_row($rs)) {					
				$id_sm=$row[8];	
				$potvrda = $row[9];
				if (bin2hex($row[5])=='01' || $potvrda==1) {
					echo 'ID rezervacije: <span style="font-style:italic;">' .$row[0] .'</span><br/>';
					echo '<p style="margin-left:15px">';
					echo 'Objekt: <span style="font-style:italic;">' .$row[6] .'</span><br/>';
					echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-style:italic;">'.$row[7] .'</span><br/>';
					echo 'Datum rezervacije: <span style="font-style:italic;">'.$row[1] .'</span><br/>';
					echo 'Rezervirano dana: <span style="font-style:italic;">' . (round((strtotime($row[3]) - strtotime($row[2])) / (60 * 60 * 24))+1) .'</span><br/>'; 
					echo '&nbsp;&nbsp;Rezervirano od: <span style="font-style:italic;">' .$row[2] .'</span><br/>';
					echo '&nbsp;&nbsp;Rezervirano do: <span style="font-style:italic;">' .$row[3] .'</span><br/>';
					echo 'Osiguranje: <span style="font-style:italic;">'.$row[4] .' kn</span><br/>';
					
					if(bin2hex($row[5])=='01')//korisnik je prijavljen
						echo 'Status: <span style="text-decoration:underline;">prijavljen</span>';
					if($potvrda==1)	//korisnik nije prijavljen
						echo 'Status: <span style="text-decoration:underline;">rezervirano</span>';
					echo '<br/><br/>';
					
					//--
		
					?>
					<form name="opis" method="get" action="rezervacija.php">
						<input type="hidden" name="smjestaj" value="<?php echo $id_sm;?>" />
						<input type="submit" name="btn_opis" value="Opis smjestaja"/>
					</form>            
					<?php
					if(bin2hex($row[5])!='01') { //omogucit odjavu rezervacije, korisnik nije prijavljen
					?>
					<form name="odjava" method="get" action="rezervacija.php">
						<input type="hidden" name="smjestaj" value="<?php echo $id_sm;?>" />
						<input type="hidden" name="odjava_rez" value="<?php echo $row[0];?>" />                    
						<input type="submit" name="btn_opis" value="Poništi rezervaciju"/>
					</form>            
					<?php				
					}					
					//--
					echo '</p><br/><br/>';
				}
			} //end while		
			
			
			//Izdani racuni	-----	
			$sql = "SELECT r.id_rez,DATE_FORMAT(r.datum_rez, '%d.%m.%Y. %H:%i:%s'),DATE_FORMAT(r.rez_od, '%d.%m.%Y.'),DATE_FORMAT(r.rez_do, '%d.%m.%Y.'),
					r.osiguranje,r.prijavljen,o.naziv,s.oznaka,s.id_sm
					FROM rezervacija r,smjestaj s, objekt o 
					WHERE s.id_sm=r.id_sm AND o.id_ob=s.id_ob 
					AND r.id_rez IN (SELECT id_rez FROM racun) 
					AND r.id_kor=".$id_kor. " ORDER BY r.rez_od DESC";
			$rs = $baza->query($sql);
			if(mysql_num_rows($rs)>0)
				echo '<hr/><p style="letter-spacing: 3px">Stare rezervacije (plačene)</p>';
			
			while($row=mysql_fetch_row($rs)) {	
				$id_sm=$row[8];	
				echo 'ID rezervacije: <span style="font-style:italic;">' .$row[0] .'</span><br/>';
				echo 'Status: <span style="text-decoration:underline;">plačeno</span><br/>';
				echo '<p style="margin-left:15px">';
				echo 'Objekt: <span style="font-style:italic;">' .$row[6] .'</span><br/>';
				echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-style:italic;">'.$row[7] .'</span><br/>';
				echo 'Datum rezervacije: <span style="font-style:italic;">'.$row[1] .'</span><br/>';
				echo 'Rezervirano dana: <span style="font-style:italic;">' . (round((strtotime($row[3]) - strtotime($row[2])) / (60 * 60 * 24))+1) .'</span><br/>'; 
				echo '&nbsp;&nbsp;Rezervirano od: <span style="font-style:italic;">' .$row[2] .'</span><br/>';
				echo '&nbsp;&nbsp;Rezervirano do: <span style="font-style:italic;">' .$row[3] .'</span><br/>';
				echo 'Osiguranje: <span style="font-style:italic;">'.$row[4] .' kn</span><br/>';					
				echo '<br/>';
				?>
				<form name="opis" method="get" action="rezervacija.php">
                    <input type="hidden" name="smjestaj" value="<?php echo $id_sm;?>" />
                    <input type="submit" name="btn_opis" value="Opis smjestaja"/>
                </form>            
           		<?php
				echo '</p><br/><br/>';
			} //end while		
		}	
				
		?>
        
    </div>
  
  
  
  
    <div id="left" style="padding:10px; width:35%;"> 
        <h2>O korisniku</h2> 
        <?php
		if(isset($_SESSION['id_kor'])) {
			$id_kor = $_SESSION['id_kor'];
			$sql = "SELECT kor_ime,ime,prezime,adresa,tel,email FROM korisnik WHERE id_kor=".$id_kor;
			$rs=$baza->query($sql);
			$row=mysql_fetch_row($rs);
			echo 'Korisnicko ime: <span style="font-weight:bold;">' .$row[0]. '</span><br/>';
			echo 'Ime, prezime: <span style="font-weight:bold;">' .$row[1]. ' ' .$row[2]. '</span><br/>';
			echo 'Adresa: <span style="font-weight:bold;">' .$row[3]. '</span><br/>';
			echo 'Telefon: <span style="font-weight:bold;">' .$row[4].  '</span><br/>';
			echo 'E-Mail: <span style="font-weight:bold;">' .$row[5].  '</span><br/>';	
		}
		echo '<br /><div id="lozinka"><input type="button" name="lozin" id="lozin" value="Promjena lozinke" onclick="promjenaloz('.$id_kor.')" /></div>';		
		
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