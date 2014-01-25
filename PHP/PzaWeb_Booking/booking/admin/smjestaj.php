<?php
	header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	header("Content-Type: text/html; charset=Windows-1250");
	include_once '../class/baza.php';
	$baza=new baza;
?>
<?php
function formaObjekt($id=''){
	global $baza;
	$check=false;
	if($id<>''){
		$check=true;
		$sql="select * from objekt where id_ob='$id';";
		$rezultat=$baza->query($sql);
		$red1=mysql_fetch_row($rezultat);
	}
	?>
	<div>
	<form name="noviObjekt" id="formaNoviObjekt" action="smjestaj.php" method="post" onsubmit="return false;">
		<input type="hidden" id="Oid" name="Oid" value="<?php if ($check){echo $red1[0];}?>">
			<table class="forma">
            <tr class="formaHead">
            	<th colspan="2">Unos unovog objekta</th>
            </tr>
			<tr>
				<td>Vrsta:</td>
				<td><select id="Otip" name="Otip">
				<?php
				$sql="select * from tip;";
				$rezultat=$baza->query($sql);
				while ($red=mysql_fetch_array($rezultat)){
				?>
					<option id="Otip<?php echo $red[0];?>" value="<?php echo $red[0]; ?>"<?php 
								if ($check){
									if($red1[1]==$red[0]){
										echo "selected=\"selected\"";
									}
								}
								?>><?php echo $red[1];?></option>
				<?php
					}
				?>
				</select></td>
			</tr>
			<tr>
				<td>Naziv:</td>
				<td><input type="text" id="Onaziv" name="Onaziv" value="<?php if ($check){echo $red1[2];}?>" ></td>
			</tr>
			<tr>
				<td>Županija:</td>
				<td><select id="Ozup" name="Ozup">
				<?php
					$sql="select * from zupanija;";
					$rezultat=$baza->query($sql);
					while ($red=mysql_fetch_array($rezultat)){
				?>
						<option id="Ozup<?php echo $red[0];?>" value="<?php echo $red[0];?> <?php 
																		if ($check){
																			if($red1[3]==$red[0]){
																				echo "selected=\"selected\"";
																			}
																		}
																		?>"><?php echo $red[1];?></option>
						<?php
					}
				?>
				</select></td>
			</tr>
			<tr>
				<td>Mjesto:</td>
				<td><input type="text" id="Omjesto" name="Omjesto" value="<?php if ($check){echo $red1[4];}?>"></td>
			</tr>
			<tr>
				<td>Adresa:</td>
				<td><input type="text" id="Oadresa" name="Oadresa" value="<?php if ($check){echo $red1[5];}?>"></td>
			</tr>
			<tr>
				<td>Opis:</td>
				<td>
                <textarea name="Oopis" id="Oopis" rows="10" cols="30"><?php if ($check){echo $red1[6];}?></textarea>
                <!--<input type="text" id="Oopis" name="Oopis" value="<?php //if ($check){echo $red1[6];}?>"> -->
                </td>
			</tr>
			<tr>
				<td>Broj zvjezdica:</td>
				<td><select id="Ozvjezdica" name="Ozvjezdica">
					<option id="Ozvjezdica1" value="1" <?php if($check && $red1[7]=='1'){
																echo "selected=\"selected\"";
																}
														?>>1</option>
					<option id="Ozvjezdica2" value="2"<?php if($check && $red1[7]=='2'){
																echo "selected=\"selected\"";
																}
														?>>2</option>
					<option id="Ozvjezdica3" value="3"<?php if($check && $red1[7]=='3'){
																echo "selected=\"selected\"";
																}
														?>>3</option>
					<option id="Ozvjezdica4" value="4"<?php if($check && $red1[7]=='4'){
																echo "selected=\"selected\"";
																}
														?>>4</option>
					<option id="Ozvjezdica5" value="5"<?php if($check && $red1[7]=='5'){
																echo "selected=\"selected\"";
																}
														?>>5</option>
				</select></td>
			</tr>
			<tr>
				<td>Email adresa:</td>
				<td><input type="text" id="Oemail" name="Oemail" value="<?php if ($check){echo $red1[8];}?>"></td>
			</tr>
			<tr>
				<td>WWW adresa:</td>
				<td><input type="text" id="Owadresa" name="Owadresa" value="<?php if ($check){echo $red1[9];}?>"></td>
			</tr>
			<tr>
				<td>Aktivan:</td>
				<td><input type="checkbox" id="Oaktivan" name="Oaktivan" value="aktivan" <?php if ($check){
																									if($red1[10]==true){
																										echo "checked=true";
																									}
																								}
																						?>></td>
			</tr>
			<tr class="formaControl">
				<td colspan="2"><input type="hidden" name="nObjekt">
				<input type="button" value="Dodaj" onclick="ajde(document.getElementById('formaNoviObjekt'),'smjestaj.php?akt=objDodaj','glavna');return false;">
				</td>
			</tr>
			</table>
		</form>
		</div>
		<?php
}#Kraj formaObjekt

#Forma izbor objekta
function formaIzborObjekt($pakt){
	global $baza;
	?>
	<div class="selectObjekt">
	<form name="izborObjekt" id="izborObjekt" action="smjestaj.php" method="post"  onsubmit="return false;">
	Odaberi objekt:
		<select name="iObjekt" id="iObjekt" onchange="<?php if ($pakt==1){
														echo "izbObjekt('smjestaj.php?akt=objUredi','Detalji')";
															}elseif($pakt==2){
														echo "izbObjekt('smjestaj.php?akt=smjList','Detalji')";
															}elseif($pakt==3){
															echo "izbObjekt('smjestaj.php?akt=slike','Detalji')";
															}?>">
			<option value="0">...objekt...</option>
			<?php
				$sql="select o.id_ob, t.naziv, o.naziv  from objekt o, tip t where o.id_tip=t.id_tip;";
				$rezultat=$baza->query($sql);
				while($red=mysql_fetch_array($rezultat)){
			?>
			<option value="<?php echo $red[0]; ?>"><?php echo $red[1].' '.$red[2];?></option>
			<?php
			}
			?>
		</select>
	</form>
    </div>
	<div id="Detalji"></div>
	</div>
	<?php
}#Kraj forme izbor objekta


#Prikaz forme unos novog smjestaja
function formaSmjestaj($id='',$Sid=''){
	
	global $baza;
	$check=false;
	if($Sid!='' && $id==''){
		$check=true;
	}	
	if(!$check){
		$sql="select id_tip from objekt where id_ob='$id';";
	}else{
		$sql="select id_tip from objekt o, smjestaj s where s.id_ob=o.id_ob and id_sm='$Sid[0]'";
	}
	$rezultat=$baza->query($sql);
	$red=mysql_fetch_row($rezultat);
	$id_tip=$red[0];
	
	$sql="select id_atr, naziv_atr from atributi where id_tip='$id_tip';";
	$rezultat=$baza->query($sql);
	?>	
    <form name="noviSmjestaj" id="formaNoviSmjestaj" method="post" action="smjestaj.php" onsubmit="return false;">
       <?php
       if($check){
	   		for($i=0;$i<count($Sid);$i++){
				$sql1="select oznaka from smjestaj where id_sm='$Sid[$i]'";
				$rezultat1=$baza->query($sql1);
				$red1=mysql_fetch_row($rezultat1);
				?>
				<input type="text" name="Soznaka<?php echo $Sid[$i];?>" value="<?php echo $red1[0];?>"/><br/>
                <?php
			}
			?><input type="hidden" name="smjestajId"/><?php
             
       }else {
	   	   ?> 
           <div id="Soznakan">
        	Broj soba:
           	<input type="text" name="Sbrsoba" id="Sbrsoba">
            <input type="button" name="koliko" onclick="oznakaDodaj();return false;" value="Dalje"/>
            </div>
        <?php
        }
		?>
        <div <?php if(!$check) echo "id=\"Sostalo\"";?>>
        <table>
        <tr class="formaHead">
        	<td></td>
            <td>Vrijednost</td>
            <td>Opis</td>
        </tr>
        <?php
		while($red=mysql_fetch_array($rezultat)){
		?><tr>
        	<td>
			<?php echo $red[1].":";?>
            </td>
            <td>
            	<input type="text" name="<?php echo $red[0]."v";?>" size="4">
            </td>
            <td>
			<input type="text" name="<?php echo $red[0]."o";?>">
           	</td>
          </tr>
		<?php
		}
		?>
        	<tr>
            <td>Cijena:</td>
            <td colspan="2">
				<input type="text" name="Scijena" size="10">
            </td>
            <tr class="formaControl">
            	<td colspan="3"><input type="hidden" name="objektId" value="<?php echo $id;?>" />
				<input type="hidden" name="nSmjestaj">
				<input type="submit" value="Dodaj" onclick="ajde(document.getElementById('formaNoviSmjestaj'),'smjestaj.php?akt=smjDodaj','glavna');return false;"/>
                </td>
            </tr>
        </table>
        </div>
    </form>
<?php
}#Kraj
function smjestaj($id, $limitstart='0', $limit='15'){
	global $baza;
	$sql="SELECT id_sm, oznaka, cijena
			FROM smjestaj
			where id_ob='$id'
			LIMIT ".$limitstart.",".$limit.";";
			
	$rezultat=$baza->query($sql);
	$tmp=null;
	?>
     <form name="listSmjestaj" id="listSmjestaj" method="post" action="smjestaj.php" onsubmit="return false">
    <table class="listSmjestaj">
    	<tr class="formaHead">
		    <th>Smjestaj</th>
		    <th>Opis</th>
		    <th>Cijena</th>
        </tr>
   
    <?php
	while($red=mysql_fetch_array($rezultat)){
		?>
        <tr>
        	<td>
	        <input type="checkbox" name="smjestaj<?php echo $red[0];?>" />
            <strong><?php echo $red[1];?></strong>
            </td>
        	<td>
        <?php 
			$sql="SELECT a.naziv_atr, o.vrijednost, o.opis
					FROM opis o, atributi a
					WHERE id_sm = '$red[0]'
					AND o.id_atr = a.id_atr;";
			$rez=$baza->query($sql);
			while($red1=mysql_fetch_array($rez)){
				echo "<strong>".$red1[0]."</Strong>:";
				if ($red1[1]<>'null' && $red1[1]<>'NULL' && $red1[1]<>'' && $red1[1]<>'0') echo $red1[1];
				if ($red1[2]<>'null' && $red1[2]<>'NULL' && $red1[2]<>'' && $red1[2]<>'0') echo $red1[2];
				echo "<br/>";			
			}
		?>

        	</td>
            <td>
        	<span>Cijena:</span><strong><?php echo $red[2];?></strong>
			</td>
        
        </tr>
        <?php 
	}
	?>
	<tr class="formaControl">
    	<td colspan="3">
	   <input type="button" value="Novi" onclick="izbObjekt('smjestaj.php?akt=smjNovi','Detalji');return false;"/>
    	<input type="button" value="Uredi" onclick="ajde(document.getElementById('listSmjestaj'),'smjestaj.php?akt=smjUredi','glavna');return false;"/>
	    <input type="button" value="Brisi" onclick="ajde(document.getElementById('listSmjestaj'),'smjestaj.php?akt=smjBrisi','glavna');return false;"/>
	</td>
    </tr>
    
    </table>
    </form>
    <?php
	$sql="select count(id_sm) from smjestaj where id_ob='$id';";
	$rezultat=$baza->query($sql);
	$red=mysql_fetch_row($rezultat);
	$brojstranica=ceil($red[0]/15);
	?>
    <div class="nav">
    <?php
	echo "<span>Stranica:</span>";
	for($i=0; $i<$brojstranica; $i++)
		echo " <a href=\"#\" onclick=\"ajax('smjestaj.php?akt=smjList&id=".$id."&limitstart=".($limit*$i)."&limit=15','Detalji');return false;\">".($i+1)."</a>";	
	?>
    </div>
    <?php
}
function dodajObjekt(){
	global $baza;
	if(isset($_POST['Oid'])){
			$id=$_POST['Oid'];
		}
		$tip=$_POST['Otip'];
		$naziv=$_POST['Onaziv'];
		$zupanija=$_POST['Ozup'];
		$mjesto=$_POST['Omjesto'];
		$adresa=$_POST['Oadresa'];
		$opis=$_POST['Oopis'];
		$brZvjezdica=$_POST['Ozvjezdica'];
		$mail=$_POST['Oemail'];
		$wadresa=$_POST['Owadresa'];
		if (isset($_POST['Oaktivan'])){
			$aktivan=1;
		}else{
			$aktivan=0;
		}
		if ($id){
			$sql="update objekt set id_tip='$tip', naziv='$naziv', id_zup='$zupanija', mjesto='$mjesto', adresa='$adresa', opis='$opis', br_zvjezdica='$brZvjezdica', email='$mail', web_adresa='$wadresa', aktivan='$aktivan' where id_ob='$id';";
		
		}else{
			$sql="insert into objekt values(default,'$tip','$naziv','$zupanija','$mjesto','$adresa','$opis','$brZvjezdica','$mail','$wadresa','$aktivan');";
		}
		$rezultat=$baza->query($sql);
		echo "Izvršeno";
}
function dodajSmjestaj(){
	global $baza;
	$oznake=array();
	$dodano=array();
	$Sid=array();
	$i=0;
	$j=0;
	foreach($_POST as $key=>$value){
		if (stripos($key,"Soznaka")!==false){
			$oznaka[$i]=$value;
			$Sid[$i]=str_replace("Soznaka","",$key);
			$i++;
		}
	}
	$id=$_POST['objektId'];
	$cijena=$_POST['Scijena'];
	for($i=0;$i<count($oznaka);$i++){
		if(isset($_POST['smjestajId'])){
			$sql="update smjestaj set oznaka='$oznaka[$i]', cijena='$cijena' where id_sm='$Sid[$i]';";
		}else{
			$sql="insert into smjestaj values(default,'$id','$oznaka[$i]','$cijena');";
		}
		$rezultat=$baza->query($sql);
		if(isset($_POST['smjestajId'])){
			$dodano[$i]=$Sid[$i];
		
		}else{
			$id_smjestaj=mysql_insert_id();
			$dodano[$i]=$id_smjestaj;
		}
		$sql="select id_atr, naziv_atr from atributi;";
		$rezultat=$baza->query($sql);
		while ($red=mysql_fetch_array($rezultat)){
			if (isset($_POST[$red[0]."o"]) && isset($_POST[$red[0]."v"])){
				$opis=$_POST[$red[0]."o"];
				$vrijednost=$_POST[$red[0]."v"];
				if ($opis==""){
					$opis="NULL";
				}
				if ($vrijednost==""){
					$vrijednost="NULL";
				}
				if(isset($_POST['smjestajId'])){
					$sql="update opis set vrijednost='$vrijednost', opis='$opis' where id_sm='$Sid[$i]' and id_atr='$red[0]';";
				}else{
					$sql="insert into opis values('$id_smjestaj','$red[0]','$vrijednost','$opis');";
				}
				$rezultat1=$baza->query($sql);
			}	
		}
	}
	foreach($dodano as $id){
		if(isset($_POST['smjestajId'])){
			echo "Izmjenjeno";
		}else{
			echo "Dodano";
		
		}
		echo $id."<br/>";
	}
}
function smjestajBrisi($id){
	global $baza;
	if(is_array($id)){
		for($i=0; $i<count($id);$i++){
			$sql="delete from smjestaj where id_sm='$id[$i]'";
			$rezulrat=$baza->query($sql);
			echo "Izbrisano id:".$id[$i]."<br/>";
		}
	
	}
}
function start(){
	global $baza;
	#dobivanje objekata, tipa objekta i broja smjestaja
	$sql="select t.naziv, z.zupanija, o.*, count(s.id_sm)
			from objekt o 
			left join tip t
			on o.id_tip=t.id_tip
			left join zupanija z
			on o.id_zup=z.id_zup
			left join smjestaj s
			on o.id_ob=s.id_ob
			group by(o.id_ob)";
	$rezultat=$baza->query($sql);
	?>
    <table class="listHotel">
    	<tr class="formaHead">
        	<th>Hotel</th>
            <th>Smještajne jedinice</th>
            <th>Korisnici</th>
        </tr>
    <?php
	while($red=mysql_fetch_array($rezultat)){
		?>
		<tr>
        	<td>
        <?php
		echo "<strong>".$red[0]." ".$red[4]."</strong><br/>";
		echo $red[7]." ".$red[6]."<br/>";
		echo $red[10]." ".$red[11];
		?>
        	</td>
            <td class="number">
        <?php
			echo $red[13]." smještajnih jedinica";
		?>
        	</td>
			<td class="number">
        <?php
		#dobivanje broja korisnika za svaki objekt
		$sql1="select pp.pristup, count(k.id_kor)
				from pravo_pristupa pp, korisnik k
				left join korisnik_objekt ko
				on k.id_kor=ko.id_kor
				where pp.id_pri=k.id_pri 
				and ko.id_ob='$red[2]'
				group by(pp.pristup)";
		$rezultat1=$baza->query($sql1);
		while($red1=mysql_fetch_array($rezultat1)){
			echo $red1[1]." ".$red1[0]."<br/>";

		}
		?>
        	</td>
        </tr>
        <tr>
        <?php
		$sql1 = "SELECT path, opis FROM slike WHERE id_ob =".$red[2];
		$rezultat1=$baza->query($sql1);
		while($red1=mysql_fetch_array($rezultat1)){
			$path = "../" . strtolower($red1[0]);
			$opis=$red1[1];
			?>	
            	<a href="<?php echo $path;?>"><img src="<?php echo $path;?>" width=\"50\" height=\"50\"/></a>
                
            <?php
		}
		?>
        </tr>
        <?php
	}
	?>
    </table>
    <?php

}
function slike($id){
	global $baza;
	$sql = "SELECT o.id_ob, o.naziv, t.naziv FROM objekt o, tip t WHERE t.id_tip = o.id_tip AND o.id_ob=".$id;
	$rs=$baza->query($sql);
	$row=mysql_fetch_row($rs);
	$tip = $row[2];
	$objekt = $row[1];	
	$path = strtolower('../photo/' .$tip. '/'.$objekt.'/' );
	$db_path= strtolower('photo/' .$tip. '/'.$objekt.'/');
	if (!file_exists($path)) { //create path..
		mkdir($path,0777);
	}
	?>
    <p id="f1_upload_process">Loading...<br/><img src="loader.gif" /></p>
	<p id="result"></p>

   <form class="upload" action="upload.php" method="post" enctype="multipart/form-data" target="upload_target" >
	  Slika: <input name="myfile" type="file" /><br/>
      Opis: <input type="text" name="opis" maxlength="100"/>
      <input type="submit" name="submitBtn" value="Upload" />
      <input type="hidden" name="u_path" id="u_path"  value="<?php echo $path; ?>" />
      <input type="hidden" name="db_path" id="db_path"  value="<?php echo $db_path; ?>" />
      <input type="hidden" name="id_ob" id="id_ob"  value="<?php echo $id; ?>" />
    </form>
	<iframe id="upload_target" name="upload_target" src="#" style="width:0;height:0;border:0px solid #fff;"></iframe>
    <?php
    $sql1 = "SELECT path, opis FROM slike WHERE id_ob =".$id;
	$rezultat1=$baza->query($sql1);
	?>
    <br class="clear"/>
    <div class="picHolder">
	<form name="brisiSlike" id="brisiSlike" action="smjestaj.php" method="post" onsubmit="return flase;">
 	<?php
	$n_br=1;
	while($red1=mysql_fetch_array($rezultat1)){
		$pp = "../" . strtolower($red1[0]);
		$oo=$red1[1];
		?>	<div class="pic">
           	<a href="<?php echo $pp;?>"><img src="<?php echo $pp;?>" width="70px" height="70px"/></a><br/>
            <input type="checkbox" name="<?php echo $red1[0];?>" />
            </div>
         <?php
		 if(fmod($n_br,5)==0)
		 	echo '<br class="clear"/>';
		$n_br++;
	}
	?>
    <br class="clear"/>
   	   <input type="hidden" name="objektId" value="<?php echo $id;?>" />
       <input type="hidden"	name="picBrisi" />
       	<input type="submit" onclick="ajde(document.getElementById('brisiSlike'),'smjestaj.php?akt=picBrisi','glavna');return false;" value="Briši"/>
    </form>
    </div>
	<?php

}
function brisiSlike(){
	global $baza;
	if(isset($_POST['picBrisi'])){
		$slike=array();
		$i=0;
		foreach($_POST as $key=>$value){
			if(stripos($key,"_jpg")!==false){
				$slike[$i]=str_replace("_jpg",".jpg",$key);
				echo $slike[$i]."<br/>";
				$i++;
			}
		}
		for($i=0;$i<count($slike);$i++){
			$sql = "DELETE FROM slike WHERE path='".$slike[$i]."'";
			$rezultat=$baza->query($sql);
			$file = "../" .strtolower($slike[$i]);
			if (file_exists($file)){
					echo "Izbrisano".$file."<br/>";
					unlink($file);
			}else{
					echo "ne postoji file:".$file."<br/>";
			}
			
			
		}
	}
}
	if(isset($_GET['akt'])){
		$akt=$_GET['akt'];
		switch($akt){
			case 'objNovi':
				formaObjekt();
				break;
			
			case 'objUredi':
				if (isset($_GET['id'])){
					$id=$_GET['id'];
					formaObjekt($id);
				}
				break;
			
			case 'objBrisi':
				break;
			
			case 'objIzbor':
				$podakt=$_GET['pakt'];
				formaIzborObjekt($podakt);
				break;
				
			case 'smjList';
				if (isset($_GET['id'])){
					$id=$_GET['id'];
					if(isset($_GET['limitstart']) && isset($_GET['limit'])){
						$limitstart=$_GET['limitstart'];
						$limit=$_GET['limit'];
						smjestaj($id,$limitstart,$limit);
					}else 
						smjestaj($id);
				}
				break;
				
			case 'smjNovi':
				if (isset($_GET['id'])){
					$id=$_GET['id'];
					formaSmjestaj($id);
				}
				break;
			
			case 'smjUredi':
				$Sid=array();
				$i=0;
				foreach($_POST as $key=>$value){
					if(stripos($key,"smjestaj")!==false){
						$Sid[$i]=str_replace("smjestaj","",$key);
						$i++;
					}
				}
				formaSmjestaj('',$Sid);
				break;
				
			case 'smjBrisi':
				$Sid=array();
				echo "Brisanje sobe/a:<br/>";
				$i=0;
				foreach($_POST as $key=>$value){
					if(stripos($key,"smjestaj")!==false){
						$Sid[$i]=str_replace("smjestaj","",$key);
						$i++;
					}
				}
				smjestajBrisi($Sid);
				break;
			
			case 'objDodaj':
				dodajObjekt();
				break;
			
			case 'smjDodaj':
				dodajSmjestaj();
				break;
			case 'slike':
				if (isset($_GET['id'])){
					$id=$_GET['id'];
					slike($id);
				}
				break;
				
			case 'picBrisi':
				brisiSlike();
				break;
			default:
				start();
		}	
	   	/*if ($akt==4){
			if (isset($_GET['id'])){
				$id=$_GET['id'];
				$sql="select count(id_sm) from smjestaj where id_ob='$id';";
				$rezultat=$baza->query($sql);
				$red=mysql_fetch_row($rezultat);
				echo "Broj smjestajnih jedinica: ".$red[0];
				?>
				<br/>
				<a href="" onclick="izbObjekt('smjestaj.php?akt=smjNovi','smjestajDetalji');return false;">Novi | </a>
				<a href="" onclick="ajax('smjestaj.php?akt=smjList&id=<?php echo $id;?>','smjestajDetalji');return false;">Prikazi sve</a>
                <hr/>
                <div id="smjestajDetalji"></div>
				<?php
			}
	}*/
}
?>
