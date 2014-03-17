<?php
class gant {
function Create_Gant($date_from,$date_to,$prikaz,$id_ob,$pg) {
include_once "baza.php";
$baza = new baza;
//$date_from =  "12.3.2008."; 
//$date_to =  "25.4.2008.";
//$prikaz=7; //prikaz broja dana po stranici
//$id_ob=1;	//ID objekta, za koji se prokazuju podatci

$razlika = floor((strtotime($date_to) - strtotime($date_from)) / (60 * 60 * 24)) ; 

$sql = "SELECT id_sm, oznaka FROM smjestaj WHERE id_ob =" .$id_ob;
$rs_sm = $baza->query($sql);

echo '<table border="1" class="table_1" width="530px">';

echo '<tr align="center"> <td class="1" width="30%">Oznaka smjestaja</td> <td colspan="7">Razdoblje <br/>od ' .$date_from. ' do ' .$date_to. '</td> </tr>';
//ispis dana

if (isset($pg))
	$od_datuma = strtotime($date_from) + ((($pg-1)*$prikaz) *(60 * 60 * 24));
else
	$od_datuma = strtotime($date_from) + (0 *(60 * 60 * 24));

	$do_datuma = $od_datuma + (($prikaz-1) *(60 * 60 * 24));
	$date_from = strtotime($date_from);
	$date_to = strtotime($date_to);
echo '<tr><td align="right" >Datum</td>';
for($n=0;$n<$prikaz;$n++) {
	$time=$od_datuma + ($n *(60 * 60 * 24));
	echo '<td>' .date('d.m.', $time). '</td>';
}
echo '</tr>';
//-----------------------------------------
while($smjestaj=mysql_fetch_row($rs_sm)) {	//stupci, popis soba
	/*$sql = "SELECT id_sm, id_rez, prijavljen, DATE_FORMAT( rez_od, '%e.%m.%Y.' ) , DATE_FORMAT( rez_do, '%e.%m.%Y.' ) 
			FROM rezervacija
			WHERE rez_od BETWEEN '" .date('Y-m-d',($date_from)). "' AND '" .date('Y-m-d',($do_datuma)). "' 
			AND rez_do BETWEEN '" .date('Y-m-d',($od_datuma)). "' AND '" .date('Y-m-d',($date_to)). "' 
			AND id_sm =".$smjestaj[0];
			//TODO prikazat razlicitim bojama pristune goste, rezervacije i razdoblja s izdanim racunima
	*/		
	$sql = "SELECT id_sm, id_rez, prijavljen, DATE_FORMAT( rez_od, '%e.%m.%Y.' ) , DATE_FORMAT( rez_do, '%e.%m.%Y.' ) 
			FROM rezervacija
			WHERE rez_od BETWEEN '" .'1970-01-01'. "' AND '" .date('Y-m-d',($do_datuma)). "' 
			AND rez_do BETWEEN '" .date('Y-m-d',($od_datuma)). "' AND '" .'2100-01-01'. "' 
			AND id_sm =".$smjestaj[0];
	$rs=$baza->query($sql);
	echo '<tr>';
	echo '<td width="30%" >' .$smjestaj[1]. '</td>';	//
	$br= mysql_num_rows($rs);

	while($ar=mysql_fetch_row($rs))
		$row[] = $ar;
	
	$r=0;
	for($d=0;$d<$prikaz;$d++) {		
			$tcell = $od_datuma + ($d *(60 * 60 * 24));
			$tcell_2 = $od_datuma + ( ($d-1) *(60 * 60 * 24));
						
			$time_od = strtotime($row[$r][3]) ;
			$time_do = strtotime($row[$r][4]) ;
			$raz = 	round( ($time_do-$tcell) / (60 * 60 * 24) ) +1 ; 
			if($tcell>=$time_od && $tcell_2<=$time_do ) { 
				//provjera dali je za rezervaciju izdan racun
				$sql = "SELECT count(*) FROM racun WHERE id_rez=" .$row[$r][1];
				$rs=$baza->query($sql);
				$rac_rez = mysql_fetch_row($rs);
				if ($rac_rez[0]==0) { //Nije izdan racun
					if(bin2hex($row[$r][2])=="01") {	//korisnik je prijavljen
						echo '<td bgcolor="#79C6F7">
								<a Style="text-decoration: none;font-size:small;" href="rezervacija.php?rez=' .$row[$r][1]. '" title="Korisnik je prijavljen">rez: ' .$row[$r][1]. '</a></td>';
					}
					else {	//korisnik je samo rezervirao termin
						echo '<td bgcolor="#F5A9A9">
								<a Style="text-decoration: none;font-size:small;" href="rezervacija.php?rez=' .$row[$r][1]. '" title="Rezervirani termin">rez: ' .$row[$r][1]. '</a></td>';
					}
				}
				else {	//izdan je racun
					echo '<td bgcolor="#FFFF33">
							<a Style="text-decoration: none;font-size:small;" href="rezervacija.php?rez=' .$row[$r][1]. '" title="Placeno">rez: ' .$row[$r][1]. '</a></td>';
				}
			}
			else 
				echo '<td> </td>';
				
			if(count($row)!=0 && ($raz==1))
				$r++;
	}
	echo '</tr>';
	
	if (count($row)!=0)
		unset($row);

}

echo '</table>';
}


}
?>
