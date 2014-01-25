<?php
define("PG_MAX",     10);

class tv_raspored {
	

	//
	// kanali[] 
	//    kanal[]
	//		 ['dan_od']
	//		 ['dan_do']
	//		 ['raspored']
	//	         1. emisija
	//  	     2. emisija
	//       ....
	//
	function pretrazi($db, $naziv, $datum_od, $datum_do, $kategorija, $kanal, $dnevni=false) {
		$where = "";
		$whereKanal = "";
		$post_prvi_id = $_POST['prvi_id'];
		$post_zadnji_id = $_POST['zadnji_id'];
		
		// kanal
		if(strlen($kanal)!=0)
			$whereKanal = " AND r.kanal_id=" . $kanal . ' ';
	
		// kategorija
		if(strlen($kategorija)!=0)
			$where .= " AND r.kategorija_id=" . $kategorija . ' ';
		
		// naziv
		if(strlen($naziv)!=0)
			$where .= " AND UPPER(r.naziv) LIKE UPPER('%".$naziv."%') ";
	
		
		// datum OD - DO
		if(strlen($datum_od)!=0 && $dnevni==false) {
			$where .= " AND r.pocetak >='" . tv_raspored::dajVrijemeF('d.m.Y','Y-m-d',$datum_od) . " 00:00:00' ";
		} 	
		if(strlen($datum_od)!=0 && $dnevni==true) {
			$where .= " AND r.pocetak >='" . tv_raspored::dajVrijemeF('d.m.Y H:i:s','Y-m-d H:i:s',$datum_od) . "'";
		} 	
		if(strlen($datum_do)!=0) {
			$where .= " AND r.pocetak <='" . tv_raspored::dajVrijemeF('d.m.Y','Y-m-d',$datum_do) . " 23:59:59' ";		
		}
		
		
		//
		// Dohvati sve TV kanale koji zadovoljavaju filter
		//
		$sql = "SELECT r.kanal_id,  kan.naziv_kanala " .
				" FROM tv_raspored r, tv_kategorije kat, tv_kanali kan " .
				" WHERE kan.id_pk=r.kanal_id " .
				" AND kat.id=r.kategorija_id " .
				$where . $whereKanal .
				" GROUP BY r.kanal_id " .
				" ORDER BY r.kanal_id";
		
		$rs = $db->baza_upit($sql);
		$search_kanali = array();
		while($red = mysql_fetch_assoc($rs))
			$search_kanali[sizeof($search_kanali)] = $red;
			
		
		//
		// Za pojedini TV kanal, dohvati raspored
		//
		if($kanali==null)
			$kanali = array();
		
		for($i=0; $i < sizeof($search_kanali); $i++) {
			$kanal=null;
			$searchKanal = $search_kanali[$i];
			$kanal_id = $searchKanal['kanal_id'];
			$kanal_naziv = $searchKanal['naziv_kanala'];
			
			$whereKanal = " AND r.kanal_id=" . $searchKanal['kanal_id'] . ' ';
			// ako ima prvi_id , onda ide prema gore (tipka lijevo)
			// ako ima zadnji_id , onda ide prema dolje (tipka desno)
			if(strlen($post_prvi_id)!=0)
				$whereKanal .= " AND r.id < " . $post_prvi_id . ' ';
			if(strlen($post_zadnji_id)!=0)
				$whereKanal .= " AND r.id > " . $post_zadnji_id . ' ';
			
			$sql = "SELECT r.*, kat.naziv_kategorije, kan.naziv_kanala, tke.kor_grupa_id, tkg.naziv AS grupa_naziv " .
					" FROM tv_kategorije kat, tv_kanali kan, tv_raspored r " .
					" LEFT JOIN tv_kor_emisije tke ON tke.raspored_id=r.id " .
					" LEFT JOIN tv_kor_grupa tkg ON tkg.id=tke.kor_grupa_id" .
					" WHERE kan.id_pk=r.kanal_id " .
					" AND kat.id=r.kategorija_id " .
					$where . $whereKanal .
					" ORDER BY r.kanal_id, r.pocetak";
		
			$rs = $db->baza_upit($sql);
			$count = 0;		
			$kanal = $kanali[$kanal_id]['raspored'];
			$pocetak = null;
			$kraj = null;
			$trenutno_vrijeme = date('Y-m-d H:i:s');
			while($red=mysql_fetch_assoc($rs)) {
				// odredi kad započinje novi dan emitiranja
				$pocetak = $red['pocetak'];
				if($kraj!=null) {
					if(strcasecmp($pocetak, $kraj))
						$red['pocetak_dana'] = tv_raspored::dajVrijeme($red['pocetak'], 'd.m.'); 			
				}
				$kraj = $red['kraj'];
				
				//
				// Odredi koja je emisija trenutno u tijeku
				//
				if($trenutno_vrijeme >= $pocetak && $trenutno_vrijeme<=$kraj)
					$red['emitiranje'] = "true";
				
				//
				// Zapiši TV raspored
				//
				if($kanal==null) {
					$prvi_id = $red['id'];
					$red['vrijeme'] = tv_raspored::dajVrijeme($red['pocetak'], 'H:i'); 
					$dan_od = tv_raspored::dajVrijeme($red['pocetak'], 'd.m.'); 
					
					$kanal = array();
					$kanal['raspored'][0] = $red;
					$kanali[$kanal_id] = $kanal;
				} else {
					$zadnji_id = $red['id'];
					$red['vrijeme'] = tv_raspored::dajVrijeme($red['pocetak'], 'H:i'); 
					$dan_do = tv_raspored::dajVrijeme($red['pocetak'], 'd.m.Y'); 
					
					$kanal['raspored'][sizeof($kanal['raspored'])] = $red;
					$kanali[$kanal_id] = $kanal;
				}
				
				$kanali[$kanal_id]['kanal_id'] = $kanal_id;
				$kanali[$kanal_id]['kanal_naziv'] = $kanal_naziv;
				$kanali[$kanal_id]['dan_od'] = $dan_od;
				$kanali[$kanal_id]['dan_do'] = $dan_do;
				$kanali[$kanal_id]['prvi_id'] = $prvi_id;
				$kanali[$kanal_id]['zadnji_id'] = $zadnji_id;
	
				$count++;
				if($count>=PG_MAX) {
					if (($i%3)==0)
						$kanali[$kanal_id]['style'] = 'clear: left; ';
					 
					$prvi_id = null;
					$zadnji_id = null;
					break;
				}
			}
		}
		return $kanali;
	}
		
	
	/*
	 * Format H:i
	 *        d.m.Y
	 */
	function dajVrijeme($datum_vrijeme, $format='d.m.Y H:i') {
		//$datum_vrijeme = date_create_from_format("Y-m-d H:i:s", $datum_vrijeme);	 // polje s podacima o datumu tokena
		//$datum = date_format($datum_vrijeme, $format);
		$datum_vrijeme = strtotime($datum_vrijeme);
		$datum = date($format, $datum_vrijeme);
		return $datum;
	}
	
	function dajVrijemeF($ulazni_format='Y-m-d H:i:s', $izlazni_format='d.m.Y H:i:s', $ulazno_vrijeme) {
		//$date = date_create_from_format($ulazni_format,  $ulazno_vrijeme);
		
		//if($date==false) {
		//	echo 'error: nemogu prepoznat datum!<br/>';
		//	return '';
		//} else 
		//	return date_format($date, $izlazni_format);
		$date = strtotime($ulazno_vrijeme);
		$datum = date($izlazni_format, $date);
		return $datum;
	}
	
	

}


?>