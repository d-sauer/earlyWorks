<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php

	function translate($upit) { //mjenja hr znakove u utf8 kodove
		$c = sprintf("%c",129); //258
		
		
		$code = array("&scaron;"=>"&#353;","%u0160"=>"&#352;", /*š Š*/
					  "Ä‘"=>"&#273;","%u0110"=>"&#272;", /*d Ð*/
					  "%u2013"=>"-","%uFFFD"=>" ", /*č Č*/
					  "Ä‡"=>"&#263;","%u0106"=>"&#262;", /*ć Ć*/
					  "A3"=>"&#382;","%u017D"=>"&#381;", /*ž Ž*/
					  "A!"=>"&#353;","%u0160"=>"&#352;", /*š Š*/
					  "%u0111"=>"&#273;","%u0110"=>"&#272;", /*d Ð*/
					  "%uFFFD?"=>"&#269;","%u010C"=>"&#268;", /*c C*/
					  "%u0107"=>"&#263;","%u0106"=>"&#262;", /*c C*/
					  "%u017E"=>"&#382;","%u017D"=>"&#381;"); /*ž Ž*/
						  
		$str = strtr($upit, $code);
		return $str;
	}
	

	include_once './class/baza.php';
	$baza = new baza;
	
	$c = sprintf("%c",129); //258
	echo "specijalni znak:'" .$c ."'<br/>";
	
	$sql = "SHOW TABLES LIKE 'tekst';";
	$rs_tbl = $baza->query($sql);
	while($tables = mysql_fetch_row($rs_tbl)) {
		$tablica = $tables[0];
		$sql = "SELECT * FROM " .$tablica;
		$rs = $baza->query($sql);
		$col = mysql_num_fields($rs);
		echo 'Tablica: ' .$tablica. '<br/>';
		echo 'columns: ' .$col. '<br/>';
	
		while($row = mysql_fetch_row($rs)) {
	
			for($i=0;$i<$col;$i++) {
				$tmp[mysql_field_name($rs,$i)] = translate($row[$i]);
			}
			$n=0;
			$sql_set=" SET ";
			foreach($tmp as $col_key=>$col_value) {
				if($n!=0) {		
					$sql_set .= $col_key. "='" .$col_value ."'";
						if($n!=($col-1))
							$sql_set .= ", ";
					}
				else {
					$sql_id_key=$col_key;
					$sql_id_value=$col_value;
				}
				$n++;
			}
				$sql_query = "UPDATE " .$tablica. $sql_set. " WHERE " .$sql_id_key."='".$sql_id_value. "'";
				echo $sql_query;
				$rs_update = $baza->query($sql_query);
				echo " >>"; if($rs_update==1) echo 'OK'; else echo 'ERR';;
				$sql_set="";
				unset($tmp);
			echo '<br />';
		}
		echo '<hr/>';
	}

?>
</body>
</html>
