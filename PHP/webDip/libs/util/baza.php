<?php
class baza {
	
/*spajanje na bazu */
	var $dbc;
	function baza_spajanje() { 
		$host="localhost";
		$user="dasvegovi";  /*na arci je to WebDiP2010_87, doma na NASu je admin " */
		$pass="admin_TeZt";
		$baza="WebDiP2010_87";
		$dbc=mysql_connect($host,$user,$pass) or die (mysql_error());
		$db=mysql_select_db($baza,$dbc) or die (mysql_error());
		
		mysql_set_charset('utf8',$dbc); /*dobro staviti jer nemamo uvijek admin prava na bazi*/
		return $dbc;
	}
	
	function baza_zatvaranje()
	{	mysql_close();
				
	}
	
	function baza_upit($sql)
	{	
		$this->dbc=baza::baza_spajanje();
		$rezultat=mysql_query($sql,$this->dbc);
			if(mysql_errno()!=0)  /*ako postoji greška, ispiše podatke o greški i upit gdje je zapelo*/
			{
				echo mysql_error($this->dbc)."<br/>";
				echo $sql;
				//exit();
			}
		return $rezultat;
		
	}
	
	function odjava() {
		session_destroy();
		return true;
	}
	
	function getDBC() {
		return $this->dbc;
	}
	
	
}

?>