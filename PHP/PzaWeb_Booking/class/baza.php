<?php
class baza {
	function read_conf() {        //citanje XML conf datoteke
        $conf = new DOMDocument();
        $path = dirname(__FILE__) . "/config.xml";
        $conf->load($path);

        $datas=$conf->getElementsByTagName("server");
        foreach($datas as $data) {
            $hosts=$data->getElementsByTagName("host");
            $host = $hosts->item(0)->nodeValue;

            $dbs=$data->getElementsByTagName("database");
            $db = $dbs->item(0)->nodeValue;

            $users=$data->getElementsByTagName("user");
            $user = $users->item(0)->nodeValue;

            $passs=$data->getElementsByTagName("pass");
            $pass = $passs->item(0)->nodeValue;

            $pages=$data->getElementsByTagName("page");
            $page = $pages->item(0)->nodeValue;
        }
        $ar = array('host'=>$host, 'db_name'=>$db, 'user'=>$user, 'pass'=>$pass, 'page'=>$page);
        return($ar);
    }

	function connect_link() {
			$dbconf= $this->read_conf();
			$host=$dbconf['host'];
			$db_name=$dbconf['db_name'];
			$user=$dbconf['user'];
			$pass=$dbconf['pass'];
		//spajanje na server i bazu
		$link=mysql_connect($host,$user,$pass) or die ('Neuspjesno spajanje na server zbog' .mysql_error);
		$db=mysql_select_db($db_name,$link) or die ('Neuspjesno spajanje na bazu zbog ' .mysql_error);
		
		return $link;
	}	

	function disconnect_db () {
		$srv= $this->connect_link();
		mysql_close($srv);
	}
	
	function query($upit) {	//u slucaju INSERT-a vraca ID
		$link= $this->connect_link();
		$sqlq=mysql_query($upit,$link);
		if(mysql_errno($link)!=0) {
			echo mysql_error($link);
			echo "<br/>Sql upit: " .$upit;
			exit();
		}
		if(strstr(strtolower($upit),"insert")) {
			return (mysql_insert_id());
		}
		else {
		$this->disconnect_db();
		return ($sqlq);
		}
	}
	
function vrijeme(){
		$week = date("w");
		switch ($week){
			case 0:
				$tjedan='Nedjelja';
				break;
			case 1:
				$tjedan='Ponedjeljak';
				break;
			case 2:
				$tjedan='Utorak';
				break;
			case 3:
				$tjedan='Srijeda';
				break;
			case 4:
				$tjedan='Cetvrtak';
				break;
			case 5:
				$tjedan='Petak';
				break;
			case 6:
				$tjedan='Subota';
		}

		$month = date("n");
		switch ($month){
			case 1:
				$mjesec='sijecanj';
				break;
			case 2:
				$mjesec='veljaca';
				break;
			case 3:
				$mjesec='ožujak';
				break;
			case 4:
				$mjesec='travanj';
				break;
			case 5:
				$mjesec='svibanj';
				break;
			case 6:
				$mjesec='lipanj';
				break;
			case 7:
				$mjesec='srpanj';
				break;
			case 8:
				$mjesec='kolovoz';
				break;
			case 9:
				$mjesec='rujan';
				break;
			case 10:
				$mjesec='listopad';
				break;
			case 11:
				$mjesec='studeni';
				break;
			case 12:
				$mjesec='prosinac';
		}
		$dan = date("j");
		$godina = date("Y");
	
		$vrijeme = $tjedan.', '.$dan.'. '.$mjesec.' '.$godina.'. u '.date("G").':'.date("i");
		return $vrijeme;
}

	
	
}



?>