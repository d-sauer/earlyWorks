<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Lovačka udruga Jelen Našice</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <meta name="author" content="Davor Sauer" />
  <meta name="keywords" content="jelen nasice našice lovačka lovacka udruga lovac lov" />
  
  <link rel="stylesheet" type="text/css" href="style.css" media="screen, print" />
  <script type="text/javascript" src="class/ajax.js"></script>
    <script type="text/javascript" src="class/menu.js"></script>
</head>

<body>
<div id="wrap">
    
    <div id="header">
        <div id="menu" style="border:none;">
        <?php
            include_once "./class/baza.php";
            $baza = new baza;
            
            $sql = "SELECT id_izb,naslov FROM izbornik ORDER BY redosljed";
            $rs=$baza->query($sql);
            
			$num_col = (mysql_num_rows($rs) + 3);
            $w = floor(740 / $num_col);
			$n=0;
        
        ?>
        	<table class="table_menu" border="0">
                <tr align="left">
                    <td width="<?php echo $w?>px"><a href="pocetna.php" onclick="ajax('pocetna.php','main');return false;">Naslovnica</a></td>
                    <?php
                    while($row = mysql_fetch_object($rs) ) {
						$n++;                        
						$id_izb = $row->id_izb;
						$sql = "SELECT id_kat, naslov FROM kategorija WHERE id_izb=" .$id_izb ." ORDER BY redosljed";
						$rs_2 = $baza->query($sql);
						$num_col = mysql_num_rows($rs_2);
						
						if ($num_col > 1) { //ako ima vise kategorija
  							echo '<td id="izb_el'.$n.'" width="' .$w. 'px" ><a href onmouseover="mopen(\'dm'.$n.'\');"  onmouseout="mclosetime();">' . $row->naslov . '</a>';						
							echo '<div class="drop_menu" id="dm'.$n.'" style="visibility:hidden;" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">';
								
								while($row2 = mysql_fetch_object($rs_2)) {
									//provjera dali ima jedan ili više tekstova u kategoriji
									$sql = "SELECT id_text FROM tekst WHERE id_kat=" .$row2->id_kat;
									$rs_txt = $baza->query($sql);
									$row_txt = mysql_fetch_object($rs_txt);
									
									if (mysql_num_rows($rs_txt)==1) { //ima samo jedan tekst, direktno se povezuje s njim
										$str = "'tekst.php?id_txt=" .$row_txt->id_text. "','main'";
										echo '<a href="" onclick="ajax('.$str.'); return false;" />'.$row2->naslov.'</a><br/>';	
									}
									else { //ima vise tekstova, povezuje se s dodatnim izbornikom popisa naslova tekstova
										$str = "'kategorija.php?kat=".$row2->id_kat."','main'";
										echo '<a href="" onclick="ajax('.$str.'); return false;" />'.$row2->naslov.'</a><br/>';	
									}
								}
							echo '</div></td>';
						}
						else { //nema podkategorija, pa ce naslov biti link direktno na stranicu	
							$row2 = mysql_fetch_object($rs_2);	
							//provjera dali ima jedan ili više tekstova u kategoriji
							if(mysql_num_rows($rs_2)!=0) { 
								$sql = "SELECT id_text FROM tekst WHERE id_kat=" .$row2->id_kat;
								$rs_txt = $baza->query($sql);
								$row_txt = mysql_fetch_object($rs_txt);
										
								if (mysql_num_rows($rs_txt)==1) { //ima samo jedan tekst, direktno se povezuje s njim
									$str = "'tekst.php?id_txt=".$row_txt->id_text."','main'";
									echo '<td id="izb_el'.$n.'" width="' .$w. 'px" onmouseover="mopen(\'dm'.$n.'\');"  onmouseout="mclosetime();">
										<a href="" onclick="ajax('.$str.'); return false;" />' .$row->naslov. '</a></td>';						
									}
								else { //ima vise tekstova, povezuje se s dodatnim izbornikom popisa naslova tekstova
									$str = "'kategorija.php?kat=". $row2->id_kat. "','main'";
									echo '<td id="izb_el'.$n.'" width="' .$w. 'px" onmouseover="mopen(\'dm'.$n.'\');"  onmouseout="mclosetime();">
										<a href="" onclick="ajax('.$str.'); return false;" />' .$row->naslov. '</a></td>';						
								}							
							}
							else {
								$str = '<a href="pocetna.php" onclick="ajax(\'pocetna.php\',\'main\');return false;">'.$row->naslov.'</a>';
								echo '<td id="izb_el'.$n.'" width="' .$w. 'px" onmouseover="mopen(\'dm'.$n.'\');"  onmouseout="mclosetime();">
									'.$str;						
							}
					
						}
                    }
                    ?>
                    <td width="<?php echo $w;?>px"><a href="" onmouseover="mopen('mnu_statut');"  onmouseout="mclosetime();">Statut</a>
                    	<div class="drop_menu" id="mnu_statut" style="visibility:hidden;" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
                            <a href="" onclick="ajax('statut.php?cmd=doc&amp;kat=obrasci','main'); return false;">Obrasci</a><br/>
                        	<a href="" onclick="ajax('statut.php?cmd=doc&amp;kat=pravilnici','main'); return false;">Pravilnik</a><br/>
                            <a href="" onclick="ajax('statut.php?cmd=statut','main'); return false;">Statut</a>
                        </div>
                    </td>
                    <td width="<?php echo $w?>"><a href="admin.php" onclick="ajax('admin.php?cmd=frmLog','main');return false;">Login</a></td>
                </tr>
            </table>
        </div>
    </div>
    
    <div style="left: 36px; top: 23px; height: 38px; background-color:transparent;" id="title">
            
    </div>
    
    
    <div id="content">
    
    	<!--sadrzaj stranice - ajax-->
        <div  id="main">   
        <?php
		if(!isset($_POST['id']) || $_POST['id']==0) {
			$doc = new DOMDocument();
			$doc->loadHTMLFile("pocetna.php");
			echo $doc->saveHTML();
			}
        ?>       
     	</div>
    </div>
    
	<div id="footer"><span style="text-decoration: underline;">Lovačka udruga "Jelen" Našice</span></div>
</div>






</body>
</html>