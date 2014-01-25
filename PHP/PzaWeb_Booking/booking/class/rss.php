<?php
class rss {

function GenerirajRSS () {
	include_once "baza.php";
	$baza=new baza;
	
	$sada=$baza->vrijeme();
	$danas=date('Y-m-d',strtotime(date("r")));
	
	$fajl=fopen("../rss.xml", "w");
			
			$_xml="<?xml version=\"1.0\" encoding=\"windows-1250\" ?>\r\n";
			$_xml .= "<rss version=\"2.0\">";
			$_xml .="<channel>
			  <title>Slobodan smještaj - Online Booking TIM 17</title>
			  <link>http://arka.foi.hr/PzaWeb/PzaWeb2007_17/rss.php</link>
			  <description>".$sada." - Pregled slobodnih smještajnih objekata</description>
			  <language>en-us</language>
			  <pubDate>".$sada."</pubDate>
			  <lastBuildDate>".$sada."</lastBuildDate>
			  <webMaster>webmaster@tim17.hr</webMaster>";
			
			//$sqlupit = "select s.id_sm, o.naziv, s.oznaka, t.naziv from smjestaj s, objekt o, tip t where s.id_ob=o.id_ob and o.id_tip=t.id_tip 
			//			and s.id_sm not in (select id_sm from rezervacija where ".$danas." between rez_od and rez_do)";
			
			$sqlupit = "select s.id_sm, o.naziv, s.oznaka, t.naziv from smjestaj s, objekt o, tip t where s.id_ob=o.id_ob and o.id_tip=t.id_tip 
						and s.id_sm not in (SELECT id_sm FROM rezervacija WHERE rez_od BETWEEN '1970-01-01' AND '".date('Y-m-d')."' AND rez_do BETWEEN '".date('Y-m-d')."' AND '2100-01-01')";
						
			
			$sqlRez=$baza->query($sqlupit);			
			while ($red=mysql_fetch_array($sqlRez)){
			
				$_xml .="<item>
						<title>".$red[3]." ".$red[1]."</title>
						<link>http://arka.foi.hr/PzaWeb/PzaWeb2007_17/korisnik/rezervacija.php?rezerviraj=".$red[0]."</link>
						<description> ".$red[2]."</description>
						</item>\r\n";			
			}
			$_xml .="</channel></rss>";
			
			fwrite ($fajl, $_xml);
			fclose($fajl);
}


}
?>