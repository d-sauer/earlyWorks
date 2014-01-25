<?php
	header("Content-Type: text/html; charset=Windows-1250");
	header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	include_once '../class/baza.php';
	$baza=new baza;
	
#Forma izbor objekta
function formaIzborObjekt($pakt){
	global $baza;
	?>
	<div class="selectObjekt">
	<form name="izborObjekt" id="izborObjekt" action="smjestaj.php" method="post"  onsubmit="return false;">
	Odaberi objekt:
		<select name="iObjekt" id="iObjekt" onchange="<?php if ($pakt==1){
														echo "izbObjekt('financije.php?akt=stavkeList','Detalji')";
															}elseif($pakt==2){
														echo "izbObjekt('smjestaj.php?akt=smjList','Detalji')";
														} elseif($pakt==3) {
														echo "izbObjekt('financije.php?akt=odjavaList','Detalji')";
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
	<?php
}#Kraj forme izbor objekta

function Stavke($id,$limitstart='0',$limit='15'){
	global $baza;
	$sql="select * from cjenik where id_ob='$id' LIMIT ".$limitstart.",".$limit.";";
	$rezultat=$baza->query($sql);
	?>
    <form name="listStavke" id="listStavke" method="post" action="financije.php" onsubmit="return false;">
    <table>
    <tr class="formaHead">
	    <td>
        </td>
        <td>Stavka</td>
        <td>Cijena</td>
    </tr>
    <?php
	while($red=mysql_fetch_array($rezultat)){
		?>
        <tr>
        	<td class"tCheckbox">
            	<input type="checkbox" name="stavka<?php echo $red[0];?>"/>
            </td>
            <td>
    	      	<?php echo $red[2];?>
            </td>
			<td>
    	      	<?php echo $red[3];?>
            </td>
		</tr>
     <?php
	}
	?>
    <tr class="formaControl">
    	<td colspan="3">
	<input type="button" value="Nova stavka" onclick="izbObjekt('financije.php?akt=cjenikNovi','Detalji');return false;"/>
    <input type="button" value="Briši" onclick="ajde(document.getElementById('listStavke'),'financije.php?akt=cjenikBrisi','glavna');return false;"/>
    	</td>
     </tr>
    </table>
    </form>
    <?php
	
}
function cjenikNovi($id){
	global $baza;
	?>
    <form name="noviCjenik" id="formaNoviCjenik" action="financije.php" method="post" onsubmit="return false">
    <table class="forma">
    	<input type="hidden" name="Oid" value="<?php echo $id;?>"/>
        <tr>
	        <td>Stavka:</td>
			<td><input type="text" name="Copis"/></td>
        </tr>
		<tr>
        	<td>Cjena:</td>
            <td><input type="text" name="Ccjena"/></td>
		</tr>
        <tr class="formaControl">
        	<td colspan="2">
		        <input type="hidden" name="nCjenik"/>
				<input type="button" value="Dodaj" onclick="ajde(document.getElementById('formaNoviCjenik'),'financije.php?akt=cjenikDodaj','glavna');return false;"/>
            </td>
        </tr>
    </form>
    <?php
}
function cjenikDodaj(){
	global $baza;
	if(isset($_POST['nCjenik'])){
		$id=$_POST['Oid'];
		$stavka=$_POST['Copis'];
		$cjena=$_POST['Ccjena'];
		$sql="insert into cjenik values(default,'$id','$stavka','$cjena');";
		$rezultat=$baza->query($sql);
		echo "OK";
	}
}
function cjenikBrisi($cId){
	global $baza;
	if(is_array($cId)){
		for($i=0;$i<count($cId);$i++){
			$sql="delete from cjenik where id_cjenik='$cId[$i]'";
			$rezultat=$baza->query($sql);
			echo "OK";
		}
	}
}
function prihodi(){
	global $baza;
	$sql="select o.id_ob, o.naziv, t.naziv from objekt o, tip t where o.id_tip=t.id_tip";
	$rezultat=$baza->query($sql);
	?>
    
    <form name="izborObjekt" id="izborObjekt" method="post" action="financije.php" onsubmit="return false;">
    <table>
    	<tr class="formaHead">
        	<th colspan="2">Oznacite objekte za koje želite vidjeti prihode:
            	<br/>
        	    <span class="napomena">
			   	Za usporedbu prihoda oznacite više objekata istovremeno, (radi preglednosti max. 3)
                </span>
			</th>
        </tr>
    <?php
	while($red=mysql_fetch_array($rezultat)){
		?>
        <tr>
        	<td class="tCheck">
	        	<input type="checkbox" name="objekt<?php echo $red[0]; ?>"/>
           	</td>
            <td>
            	<?php echo $red[2]." ".$red[1];	?>
            </td>
         </tr>
        <?php
	}
	$sql="select year(izdavanje) as godina
			from racun
			group by(1)
			order by godina asc";
	$rezultat=$baza->query($sql);
	?>
	<tr class="divControl">
        <td colspan="2"> Godina:
        <select id="pGodina" name="pGodina">
            <option value="sve">...Sve...</option>
        <?php
            while($red=mysql_fetch_array($rezultat)){
            ?>
            <option value="<?php echo $red[0];?>"><?php echo $red[0];?></option>
            <?php
            }
        ?>
        </select>
        
        Mjesec:
        <select id="pMjesec" name="pMjesec">
            <option value="svi">...Svi...</option>
            <?php
            for($i=1;$i<13;$i++){
                ?><option value="<?php echo $i;?>"><?php echo $i;?></option>
                <?php
            }
        ?>
        </select>
	    <input type="button" value="Prikaži" onclick="ajde(document.getElementById('izborObjekt'),'financije.php?akt=graf','prihodiDetalji');return false;"/>
		</td>
     </tr>
    </table>
    </form>

    <div class="prihodiDetalji" id="prihodiDetalji"></div>
    <?php
}
function graf($id,$godina,$mjesec){
	global $baza;
	if(is_array($id)){
		for($i=0;$i<count($id);$i++);
	}
	$data=array();
	if($godina=='sve'){
		if($mjesec=='svi'){
			$title="Prihodi po godinama";
			$sql="select year(izdavanje) as godina
				from racun
				group by(1)
				order by godina asc";
			$rezultat=$baza->query($sql);
			$mind=0;
			while($red=mysql_fetch_array($rezultat)){
				$dataAr=array();
				$god=$red[0];
				$dataAr[0]=$god;
				$ind=1;
				for($i=0;$i<count($id);$i++){
					$obId=$id[$i];
					$sql1="select o.id_ob, o.naziv, sum(r.ukupno)
							from objekt o, racun r
							left join rezervacija rez
							on r.id_rez=rez.id_rez
							left join smjestaj s
							on rez.id_sm=s.id_sm
							where s.id_ob=o.id_ob
							and o.id_ob='$obId'
							and year(r.izdavanje)='$god'
							group by(o.id_ob)";
					$rezultat1=$baza->query($sql1);
					$red1=mysql_fetch_row($rezultat1);
					if(!empty($red1)){
						$dataAr[$ind]=$red1[2];
					}else{
						$dataAr[$ind]=0;
					}
					$ind++;
				}
				$data[$mind]=$dataAr;
				$mind++;
			}
		}else{
			$title="Prihodi po godinama za mjesec ".$mjesec;
			$sql="select year(izdavanje) as godina
				from racun
				group by(1)
				order by godina asc";
			$rezultat=$baza->query($sql);
			$mind=0;
			while($red=mysql_fetch_array($rezultat)){
				$dataAr=array();
				$god=$red[0];
				$dataAr[0]=$god;
				$ind=1;
				for($i=0;$i<count($id);$i++){
					$obId=$id[$i];
					$sql1="select o.id_ob, o.naziv, sum(r.ukupno)
							from objekt o, racun r
							left join rezervacija rez
							on r.id_rez=rez.id_rez
							left join smjestaj s
							on rez.id_sm=s.id_sm
							where s.id_ob=o.id_ob
							and o.id_ob='$obId'
							and year(r.izdavanje)='$god'
							and month(r.izdavanje)='$mjesec'
							group by(o.id_ob)";
					$rezultat1=$baza->query($sql1);
					$red1=mysql_fetch_row($rezultat1);
					if(!empty($red1)){
						$dataAr[$ind]=$red1[2];
					}else{
						$dataAr[$ind]=0;
					}
					$ind++;
				}
				$data[$mind]=$dataAr;
				$mind++;
			}
		}
	}else{
		if($mjesec=='svi'){
			$title="Prihodi za godinu ".$godina;
			$mind=0;
			for($i=1;$i<13;$i++){
				$dataAr=array();
				$dataAr[0]=$i;
				$ind=1;
				for($j=0;$j<count($id);$j++){
					$obId=$id[$j];
					$sql1=" SELECT o.id_ob, o.naziv, sum( r.ukupno )
						FROM objekt o, racun r
						LEFT JOIN rezervacija rez ON r.id_rez = rez.id_rez
						LEFT JOIN smjestaj s ON rez.id_sm = s.id_sm
						WHERE s.id_ob = o.id_ob
						AND o.id_ob = '$obId'
						AND year( r.izdavanje ) = '$godina'
						AND month( r.izdavanje ) = '$i'
						GROUP BY (o.id_ob)";
					$rezultat1=$baza->query($sql1);
					$red1=mysql_fetch_row($rezultat1);
					if(!empty($red1)){
						$dataAr[$ind]=$red1[2];
					}else{
						$dataAr[$ind]=0;
					}
					$ind++;
				}
				$data[$mind]=$dataAr;
				$mind++;
			}
		}else{
			$title="Prihodi za godinu ".$godina." i mjesec ".$mjesec;
			$mind=0;
			$dataAr=array();
			$dataAr[0]=$mjesec;
			$ind=1;
			for($j=0;$j<count($id);$j++){
				$obId=$id[$j];
				$sql1="SELECT o.id_ob, o.naziv, sum( r.ukupno )
						FROM objekt o, racun r
						LEFT JOIN rezervacija rez ON r.id_rez = rez.id_rez
						LEFT JOIN smjestaj s ON rez.id_sm = s.id_sm
						WHERE s.id_ob = o.id_ob
						AND o.id_ob = '$obId'
						AND year( r.izdavanje ) = '$godina'
						AND month( r.izdavanje ) = '$mjesec'
						GROUP BY (o.id_ob)";
				$rezultat1=$baza->query($sql1);
				$red1=mysql_fetch_row($rezultat1);
				if(!empty($red1)){
					$dataAr[$ind]=$red1[2];
				}else{
					$dataAr[$ind]=0;
				}
				$ind++;
			}
			$data[$mind]=$dataAr;
			$mind++;
		}
	}
	$nazivi=array();
	for($i=0;$i<count($id);$i++){
		$sql="select t.naziv, o.naziv from objekt o, tip t where o.id_tip=t.id_tip and id_ob='$id[$i]'";
		$rezultat=$baza->query($sql);
		$red=mysql_fetch_row($rezultat);
		$nazivi[$i]=$red[0]." ".$red[1];
	}
	grafGenerate($data,$title,$nazivi);
}

function grafGenerate($data,$title,$nazivi){

	require_once 'phplot.php';

	$plot = new PHPlot(520, 400);
	$plot->SetImageBorderType('plain');
	
	$plot->SetPlotType('bars');
	$plot->SetDataType('text-data');
	$plot->SetDataValues($data);

	# Main plot title:
	$plot->SetTitle($title);

	# No 3-D shading of the bars:
	$plot->SetShading(0);

	# Make a legend for the 3 data sets plotted:
	$plot->SetLegend($nazivi);
	
	# Turn off X tick labels and ticks because they don't apply here:
	$plot->SetXTickLabelPos('none');
	$plot->SetXTickPos('none');
	
	$plot->DrawGraph();


}
function pripremiImg(){
	global $baza;
	$id=array();
	$url="financije.php?akt=grafImg";
	$i=0;
	foreach($_POST as $key=>$value){
		$url.="&".$key."=".$value;
		if(stripos($key,"objekt")!==false){
			$id[$i]=str_replace("objekt","",$key);
			$i++;
		}
	}
	?><div>
	<table>
    	<tr class="formaHead">
        	<td colspan="2"><strong>Ukupno prihoda</strong></td>
        </tr>
	<?php
	for($i=0;$i<count($id);$i++){
		$sql="SELECT o.id_ob, o.naziv, sum(r.ukupno)
				FROM objekt o, racun r
				LEFT JOIN rezervacija rez ON r.id_rez = rez.id_rez
				LEFT JOIN smjestaj s ON rez.id_sm = s.id_sm
				WHERE s.id_ob = o.id_ob
				AND o.id_ob = '$id[$i]'
				GROUP BY (o.id_ob)";
		$rezultat=$baza->query($sql);
		$red=mysql_fetch_row($rezultat);
		if(!empty($red)){
			echo "<tr><td>".$red[1]."</td><td>".$red[2]."</td></tr>";
		}else{
			$sql1="select naziv from objekt where id_ob='$id[$i]'";
			$rezultat1=$baza->query($sql1);
			$red1=mysql_fetch_row($rezultat1);
			echo "<tr><td>".$red1[0]."</td><td>Nema prihoda</td></tr>";
		}
	}
	?>
    </table>
    </div>
    <div>
    <img src="<?php echo $url;?>"/>
    </div>
    <?php
	
}

function frmOdjavaDodaj($id='') {
	global $baza;
	
	?>
    <form name="cjOdjava" id="cjOdjava" action="financije.php" method="post" onsubmit="return false">
    <table class="forma">
    	<input type="hidden" name="Oid" value="<?php echo $id;?>"/>
        <tr>
	        <td>Broj dana</td>
			<td><input type="text" name="dana" size="5" maxlength="5"/></td>
        </tr>
		<tr>
        	<td>Postotak vracanja</td>
            <td><input type="text" name="posto" maxlength="3" size="5"/></td>
		</tr>
		<tr>
        	<td>Opis u slucaju odjave</td>
            <td><input type="text" name="opis" maxlength="100" size="50"/></td>
		</tr>
        <tr class="formaControl">
        	<td colspan="2">
		        <input type="hidden" name="nCjenik"/>
				<input type="button" value="Dodaj" onclick="ajde(document.getElementById('cjOdjava'),'financije.php?akt=odjavaDodaj','glavna');return false;"/>
            </td>
        </tr>
    </form>
    <?php


}

function ListOdjava($id){
	global $baza;
	$sql="SELECT broj_dana, iznos, opis FROM odjava WHERE id_ob =" .$id. " ORDER BY broj_dana";
	$rezultat=$baza->query($sql);
		?>
		<form name="listStavke" id="listStavke" method="post" action="financije.php" onsubmit="return false;">
		<table>
		<tr class="formaHead">
			<td>
			</td>
			<td>Broj dana</td>
			<td>Postotak</td>
			<td>Opis</td>
		</tr>
		<?php
		while($red=mysql_fetch_array($rezultat)){
			?>
			<tr>
				<td class"tCheckbox">
					<input type="checkbox" name="stavka<?php echo $red[0];?>"/>
				</td>
				<td>
					<?php echo $red[0];?>
				</td>
				<td>
					<?php echo ($red[1] * 100);?>
				</td>
				<td>
					<?php echo $red[2];?>
				</td>
			</tr>
		 <?php
		}
		?>
		<tr class="formaControl">
			<td colspan="4">
        <input type="hidden" name="id" value="<?php echo $id;?>" />
		<input type="button" value="Nova stavka" onclick="izbObjekt('financije.php?akt=frmOdjavaDodaj','Detalji');return false;"/>
		<input type="button" value="Briši" onclick="ajde(document.getElementById('listStavke'),'financije.php?akt=odjavaBrisi','glavna');return false;"/>
			</td>
		 </tr>
		</table>
		</form>
    <?php
	
	
}

function odjavaDodaj(){
	global $baza;
	if(isset($_POST['nCjenik'])){
		$id=$_POST['Oid'];
		$dana=$_POST['dana'];
		$opis=$_POST['opis'];
		$posto= ($_POST['posto']) / 100;		
		$sql="INSERT INTO odjava (id_ob,broj_dana,opis,iznos) VALUES (".$id.", ".$dana.", '".$opis."', ".$posto.")";
		$rezultat=$baza->query($sql);
		echo "Nova stavka je dodana";
	}
}

function odjavaBrisi($cId, $id){
	global $baza;
	
	if(is_array($cId)){
		for($i=0;$i<count($cId);$i++){
			$sql="delete from odjava where broj_dana=" .$cId[$i]. " AND id_ob=" .$id;
			$rezultat=$baza->query($sql);
		}
	}	
	echo "Oznacene stavke su obrisane.";
}

	if(isset($_GET['akt'])){
		$akt=$_GET['akt'];
		switch($akt){
			case 'cjenik':
				formaIzborObjekt('1');
				break;
			case 'stavkeList':
				if(isset($_GET['id'])){
					$id=$_GET['id'];
					stavke($id);
				}
				break;
			case 'cjenikNovi':
				if(isset($_GET['id'])){
					$id=$_GET['id'];
					cjenikNovi($id);	
				}
				break;
			case 'cjenikDodaj':
				cjenikDodaj();
				break;
				
			case 'cjenikBrisi':
				$cId=array();
				$i=0;
				foreach($_POST as $key=>$value){
					if(stripos($key,"stavka")!==false){
						$cId[$i]=str_replace("stavka","",$key);
						$i++;
					}
				}
				cjenikBrisi($cId);
				break;
				
			case 'prihodi':
				prihodi();
				break;
				
			case 'graf':
				pripremiImg();
				break;
			case 'grafImg':
				$id=array();
				$i=0;
				$godina=$_GET['pGodina'];
				$mjesec=$_GET['pMjesec'];
				foreach($_GET as $key=>$value){
					if(stripos($key,"objekt")!==false){
						$id[$i]=str_replace("objekt","",$key);
						$i++;
					}
				}
				graf($id,$godina,$mjesec);
				break;
			case 'cj_odjava':
				formaIzborObjekt('3');
				break;
				
			case 'odjavaList':
				if(isset($_GET['id'])){
					$id=$_GET['id'];
					ListOdjava($id);	
				}
				break;
			case 'frmOdjavaDodaj';
				if(isset($_GET['id'])){
					$id=$_GET['id'];
					frmOdjavaDodaj($id);	
				}			
				break;
			case 'odjavaDodaj';
				odjavaDodaj();
				break;
			case 'odjavaBrisi';
				$cId=array();
				$i=0;
				$id=$_POST['id'];
				foreach($_POST as $key=>$value){
					if(stripos($key,"stavka")!==false){
						$cId[$i]=str_replace("stavka","",$key);
						$i++;
					}
				}
				odjavaBrisi($cId,$id);
				break;
			default:
				echo "error";
		}
	}
?>