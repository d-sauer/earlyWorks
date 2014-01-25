<?php
	ob_start();
	//session_start();	//Start session
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250" />
<title>OnLine Booking - Pretraživanje</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" title="CSS StyleSheet" href="kalendar/cwcalendar.css" type="text/css" media="all" />		
<script type="text/javascript" src="kalendar/calendar.js"></script>
<script type="text/javascript" src="js/pretrazi.js"></script>


<style type="text/css">
<!--
.style1 {color: #A1DBFF}
-->
.EnqList TD, .EnqList TH{
	background:white;
	padding:0px 2px;
}

.CalFld{background:#FFFFD8;}
#oddo{color:#ffffff;}
</style>
</head>

<body>
<?php 
	include_once "./class/baza.php";
	$baza=new baza;
?>
<div id="wrap">
<div id="menu">
<!--Menu start-->
  <div id="tabsJ">
  <ul>
    <li><a href="index.php" title="Početna stranica"><span>Početak</span></a></li>
    <?php
		include_once "./class/baza.php";
		include_once "./class/reg.php";
		$baza = new baza;

		
		if (isset($_GET['logout'])) {
			session_destroy();
			header('Location: ../index.php');
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
        	echo '<li><a href="./prijava.php" title="Prijava registriranog korisnika"><span>Prijava</span></a></li>';
			//header('Location: ../error.php?msg=3');
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
	<div id="left" style="padding:10px; width:740px;" >
    	<h1>Pretraživanje smještajnih objekata</h1>
        
        	<form name="trazilica" action="korisnik/pretraga.php" onsubmit="return datumi()" method="POST">
<div id="podaci">
                    <h2>OSNOVNI PODACI</h2>
                    <div align="center">
                    <table width="65%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td colspan="3" class="naslov">Tip smještaja</td>
                          <td colspan="2" class="naslov">Termini</td>
                      </tr>
                        <tr>
                          <td width="11%" class="tabla"><input type="radio" name="tip_smjestaj" id="tip_hotel" value="1" checked="checked" onclick="prikazi(1)" />
                          Hotel </span></td>
                          <td width="12%" class="tabla">
                        <input type="radio" name="tip_smjestaj" id="tip_hostel" value="2" onclick="prikazi(2)" />
                        Hostel</span></td>
                          <td width="11%" class="tabla">
                          <input type="radio" name="tip_smjestaj" id="tip_kamp" value="3" onclick="prikazi(3)" />
                          Kamp</span></td>
                          <td width="16%" class="tabla">Početni termin:</td>
                          <td width="23%"><input type="text" name="pocetak" id="pocetak" readonly="readonly" onclick="fPopCalendar('pocetak')" onblur="provjeri()"/></td>
                      </tr>
                        <tr>
                          <td width="11%" class="tabla">&nbsp;</td>
                          <td width="12%" class="tabla">&nbsp;</td>
                          <td width="11%" class="tabla">&nbsp;</td>
                          <td class="tabla">Završni termin:</td>
                          <td><input type="text" name="kraj" id="kraj" readonly="readonly" onclick="fPopCalendar('kraj')" onblur="provjeri()"/></td>
                        </tr>
                                          </table>
          </div>
</div>
              <div id="hotel">
                   		<h2>HOTEL</h2>
                        <div align="center">
                        <table width="67%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="25%" class="naslov">Kategorija hotela</td>
                            <td width="19%" class="naslov">Vrsta sobe</td>
                            <td width="32%" class="naslov">Krevet</td>
                            <td width="24%" class="naslov">Pogled</td>
                          </tr>
                          <tr>
                            <td class="tabla"><input type="radio" name="kategor" value="0" checked="checked"/>
Svejedno</td>
                            <td class="tabla"><input type="radio" name="soba" value="0" checked="checked"/>
Svejedno</td>
                            <td class="tabla"><input type="radio" name="krevet" value="0" checked="checked"/>
                              Svejedno</td>
                            <td class="tabla"><input type="radio" name="pogled" value="0" checked="checked"/>Svejedno</td>
                          </tr>
                          <tr>
                            <td class="tabla"><input type="radio" name="kategor" value="1" />
                              <img src="slike/zvijezda.png" alt="1" /><img src="slike/zvijezda.png" alt="2" /></td>
                            <td class="tabla"><input type="radio" name="soba" value="1" />
Soba</td>
                            <td class="tabla"><input type="radio" name="krevet" value="1" />
Običan krevet</td>
                            <td class="tabla"><input type="radio" name="pogled" value="1" />Pogled na more</td>
                          </tr>
                          <tr>
                            <td class="tabla"><input type="radio" name="kategor" value="2" />
                              <img src="slike/zvijezda.png" alt="1" /><img src="slike/zvijezda.png" alt="2" /><img src="slike/zvijezda.png" alt="3" /></td>
                            <td class="tabla"><input type="radio" name="soba" value="2" />
Apartman</td>
                            <td class="tabla"><input type="radio" name="krevet" value="2" />
Bračni krevet</td>
                            <td class="tabla"><input type="radio" name="pogled" value="2" />Pogled na park</td>
                          </tr>
                          <tr>
                            <td class="tabla"><input type="radio" name="kategor" value="3" />
                              <img src="slike/zvijezda.png" alt="1" /><img src="slike/zvijezda.png" alt="2" /><img src="slike/zvijezda.png" alt="3" /><img src="slike/zvijezda.png" alt="4" /></td>
                            <td class="tabla">&nbsp;</td>
                            <td class="tabla"><input type="radio" name="krevet" value="3" />
Obični i bračni krevet</td>
                            <td class="tabla">&nbsp;</td>
                          </tr>
                          <tr>
                            <td class="tabla"><input type="radio" name="kategor" value="4" />
                              <img src="slike/zvijezda.png" alt="1" /><img src="slike/zvijezda.png" alt="2" /><img src="slike/zvijezda.png" alt="3" /><img src="slike/zvijezda.png" alt="4" /><img src="slike/zvijezda.png" alt="5" /></td>
                            <td class="tabla">&nbsp;</td>
                            <td class="tabla">&nbsp;</td>
                            <td class="tabla">&nbsp;</td>
                          </tr>
                        </table>
                </div>
       		    </div><!--Main end-->
                  
                <div id="hostel">
                	<h2>HOSTEL</h2>
                    <div align="center">
                	<table width="34%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="30%" class="naslov"><span class="naslov">Krevet</span></td>
                        <td width="30%" class="naslov"><span class="naslov">Pogled</span></td>
                      </tr>
                      <tr>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="kreveth" value="0" checked="checked" />
Svejedno</span></td>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="pogledh" value="0" checked="checked" />
Svejedno</span></td>
                      </tr>
                      <tr>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="kreveth" value="1"  />
Običan krevet</span></td>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="pogledh" value="1" />
Pogled na more</span></td>
                      </tr>
                      <tr>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="kreveth" value="2"  />
                          Krevet na kat</span></td>
                        <td class="tabla"><span class="tabla">
                          <input type="radio" name="pogledh" value="2" />
Pogled na park</span></td>
                      </tr>
                    </table>
               	  </div>
                	</div>
                    
                <div id="kamp">
                	<h2>KAMP</h2>
                	<div align="center">
           	      <table width="46%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="55%" class="naslov">Veličina parcele</td>
                          <td width="45%" class="naslov">Osunčanost</td>
                        </tr>
                        <tr>
                          <td class="tabla"><input type="radio" name="velicina" value="0" checked="checked"/>
                          Svejedno</td>
                          <td class="tabla"><input type="radio" name="sunce" value="0" checked="checked"/>
                          Svejedno</td>
                        </tr>
                        <tr>
                          <td class="tabla"><input type="radio" name="velicina" value="1" />
                          Parcela za auto i šator</td>
                          <td class="tabla"><input type="radio" name="sunce" value="1" />
                          Osunčana parcela</td>
                        </tr>
                        <tr>
                          <td class="tabla"><input type="radio" name="velicina" value="2" />
                          Parcela za auto-prikolicu</td>
                          <td class="tabla"><input type="radio" name="sunce" value="2" />
                          Parcela u hladovini</td>
                        </tr>
                        <tr>
                          <td class="tabla"><input type="radio" name="velicina" value="3" />
                          Parcela za kamper</td>
                          <td class="tabla">&nbsp;</td>
                        </tr>
                	    <tr>
                          <td class="tabla">&nbsp;</td>
                          <td class="tabla">&nbsp;</td>
                        </tr>
                                          </table>
              	  </div>
              </div>
                
                <div id="batoni">
                <br /><hr />
                    <input type="hidden" name="search" value="1" />                       
                    <input type="submit" value="Pretraži" />
                    <input type="reset" value="Poništi" onclick="ponovo()" />
               	</div>
      </form>
            
    </div>
    
</div>
<!--Main end-->

<!--Footer start-->
<div id="footer"><br />&copy; TIM 17 | Programiranje za Web | 2008 <?php if(isset($_SESSION['id_kor'])) echo 'Logirani korisnik:' .$_SESSION['kor_ime'] ;?></div>
<!--Footer end-->
<div id="bottom_line"></div>
</div>
<p>
    <a href="http://validator.w3.org/check?uri=referer"><img
        src="http://www.w3.org/Icons/valid-xhtml10-blue"
        alt="Valid XHTML 1.0 Transitional" height="31" width="88" border="0" /></a> <a href="http://jigsaw.w3.org/css-validator/">
  <img style="border:0;width:88px;height:31px"
       src="http://jigsaw.w3.org/css-validator/images/vcss-blue" 
       alt="Valid CSS!" />
 </a>
  </p>
  </div>
</body>
</html>
