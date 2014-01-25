<?php

// http://tvprofil.net/xmltv/

class citaj_epg {
	function zapisiEPG ($xmlURL, $tv_kanal_id, $db, $verbose) {
		$vrijeme =  date('Y-m-d H:i:s');
		return citaj_epg::citajEPG($xmlURL, $vrijeme, $tv_kanal_id, $db, $verbose);
	}

	function citajEPG($xmlUrl, $pocetnoVrijeme, $tv_kanal_id, $db, $verbose) {
		$temp = "";
		if( !$xml = simplexml_load_file($xmlUrl) ) {
			$temp = 'Nemogu čitat XML: ' . $xmlUrl;
		} else {
			//
			// Obrisi iz baze sve poslje navedenog vremena, jer će se taj vremenski period ponovo učitati iz EPGa, kako bi se osvježio raspored
			//
			citaj_epg::removeTVRaspored($pocetnoVrijeme, $tv_kanal_id, $db);
			
			//
			// Učitaj tv raspored iz XMLa
			//
			for($i=0; $i<sizeof($xml->programme) ; $i++) {
				$programme = $xml->programme[$i];

				// atributi
				$atributi = $programme->attributes();
				$start = citaj_epg::parseEPGDateTime($atributi->start);
				$stop = citaj_epg::parseEPGDateTime($atributi->stop);
				$channel = $atributi->channel;

				// tagovi
				$title = $programme->title;
				$category = $programme->category;
				$premiere = $programme->premiere;
				$previously_shown = $programme->previously-shown;
				$desc = $programme->desc;
				$url = $programme->url;
				$epizoda = $programme->episode-num;

				
				//
				// Upis u bazu
				//				
				if($start>=$pocetnoVrijeme) {
					$temp = citaj_epg::insertTVEmisija($tv_kanal_id, $db,$verbose, $start,$stop,$channel,$title,$category,$premiere,$previously_shown,$desc,$url,$epizoda);
					if($verbose==true)
						$temp +=$temp;
				}
			}
		}
		return $temp;
	}


	function parseEPGDateTime($vrijeme) {
		// prm: 20110513141900
		//      yyyymmddHHMISS
		$year = substr($vrijeme, 0,4);
		$month = substr($vrijeme, 4,2);;
		$date = substr($vrijeme, 6,2);
		$hour = substr($vrijeme, 8,2);
		$minute = substr($vrijeme, 10,2);
		$second = substr($vrijeme, 12,2);

		return date('Y-m-d H:i:s', mktime($hour, $minute, $second, $month, $date, $year));

	}
	
	function removeTVRaspored($vrijeme_od, $kanal_id, $db) {
		$sql = "DELETE FROM tv_raspored WHERE pocetak >= '" . $vrijeme_od . "' and kanal_id=" . $kanal_id;
		$db->baza_upit($sql);
	}
	
	//
	// Upis u bazu
	//
	function insertTVEmisija ($kanal_id, $db,$verbose, $start,$stop,$channel,$title,$category,$premiere,$previously_shown,$desc,$url,$epizoda) {
		//
		// Dohvati ID kategorije
		//
		$id_kategorije = citaj_epg::getTVKategorijaID($category, $db);
		
		$title = str_replace("'", "''", $title);
		$desc = str_replace("'", "''", $desc);
		$category = str_replace("'", "''", $category);
		
		$temp = "";
		if($verbose==true) {
			$temp = "<br/>Write to DB";
			$temp += "<br/>title: " . $title;
			$temp += "<br/>category: " . $category;
			$temp += "<br/>start: " . $start;
			$temp += "<br/>stop: " . $stop;
			$temp += "<br/>opis:" . $desc;
			$temp += "<br/>url:" . $url;
			$temp += "<br/>premijera: " . $premiere;
			$temp += "<br/>previously_shown: " . $previously_shown;
			$temp += '<hr/>';
		}
		
		
		$sql = "INSERT INTO tv_raspored (id ,naziv, nepostoji ,pocetak ,kraj ,opis,epizoda ,url ,automatika,premijera ,repriza ,kanal_id ,kategorija_id)
				VALUES (NULL , '".$title."','0', '".$start."', '".$stop."', '.$desc.','".$epizoda."', '".$url."', '1','".$premiere."' ,'".$previously_shown."', '".$kanal_id."', '".$id_kategorije."')";
		$db->baza_upit($sql);
		
		return $temp;
	}

	// Ako kategorija ne postoji, dodaje kategoriju i vraća novo dodani ID
	function getTVKategorijaID($nazivKategorije, $db) {
		if(strlen($nazivKategorije)==0)
			$nazivKategorije = "nedefinirano";
		
		$sql1 = "SELECT id FROM tv_kategorije WHERE naziv_kategorije LIKE '".$nazivKategorije."'";
		$rs = $db->baza_upit($sql1);
		
		$id = null;
		if(mysql_num_rows($rs)!=0) {
			$red = mysql_fetch_object($rs);
			$id = $red->id;
		} else {
			// INSERT nova kategorija
			$sql = "INSERT INTO webdip2010_87.tv_kategorije (id ,naziv_kategorije ,jezik_id)
					VALUES (NULL , '".$nazivKategorije."', '');";
			$db->baza_upit($sql);
			$id = mysql_insert_id($db->getDBC());
		}
		
		return $id;
	}


}