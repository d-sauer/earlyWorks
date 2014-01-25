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
        }
        $ar = array('host'=>$host, 'db_name'=>$db, 'user'=>$user, 'pass'=>$pass);
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
	
	
	function translate($upit) { //mjenja hr znakove u utf8 kodove
		$code = array("%u0161"=>"&#353;","%u0160"=>"&#352;", /*š Š*/
					  "%u0111"=>"&#273;","%u0110"=>"&#272;", /*d Ð*/
					  "%u010D"=>"&#269;","%u010C"=>"&#268;", /*c C*/
					  "%u0107"=>"&#263;","%u0106"=>"&#262;", /*c C*/
					  "%u017E"=>"&#382;","%u017D"=>"&#381;"); /*ž Ž*/
						  
		$str = strtr($upit, $code);
		return $str;
	}
	
	function query($query) {	//u slucaju INSERT-a vraca ID
		$upit = $this->translate($query);
	
		$link= $this->connect_link();
		$sqlq=mysql_query($upit,$link);
		if(mysql_errno($link)!=0) {
			echo mysql_error($link);
			echo "<br/>Sql upit: <br/>" .$upit .'<hr/>';
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
	
}



?>