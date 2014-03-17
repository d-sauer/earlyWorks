<?php
ob_start();
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin</title>

	<link rel="stylesheet" type="text/css" href="style.css" media="screen, print" />
	<script type="text/javascript" src="class/ajax.js"></script>
</head>

<body>

<?php
$user="jelen"; //korisnicko ime za korisnika, s pravima skidanja dokumenata

if(isset($_POST['cmd']) && $_POST['cmd']=='login') {
	$user = $_POST['user'];
	$pass = $_POST['pass'];
	$old_cmd = $_POST['old_cmd'];
			
	CheckLogin($user, $pass,$old_cmd);	
}

if(isset($_GET['cmd'])) {
	$cmd = $_GET['cmd'];
		
	if(isset($_SESSION['user']) && $_SESSION['user']==$user) { //ako je logiran
		switch_cmd($cmd);
	
	}
	else { //login
		frmLogin($cmd);
	}
	

}


function switch_cmd($cmd) {
	echo '<a class="level2" onclick="ajax(\'statut.php?cmd=logout\',\'main\')">Odjava</a><br/>';
	switch($cmd) {
		case 'statut':
			ReadStatut();
			break;
		case 'doc':
			echo '<div align="center">';
			LoadDownloads($_GET['kat']);
			echo '</div>';
			break;
		case 'logout':
			session_destroy();
			echo 'Odjavili ste se!';
			break;
	}
}

function frmLogin ($old_cmd) {
?>
  <div align="center">
   <form name="frmLogin" id="frmLogin" method="post" action="statut.php" onSubmit="return false;">
    <table class="table_login">
    	<tr><td>Korisničko ime</td><td><input type="text" name="user" id="user" maxlength="15" /></td></tr>
        <tr><td>Lozinka</td><td><input type="password" name="pass" id="pass" maxlength="15" /></td></tr>
        <input type="hidden" name="cmd" value="login" />
        <input type="hidden" name="old_cmd" value="<?php echo $old_cmd;?>" />
        <tr><td></td><td><input type="button" value="Prihvati" onClick="ajax_post(document.getElementById('frmLogin'),'statut.php','main')"/></td></td>
    </table>
   </form>
   </div>
<?php
}


function CheckLogin($user, $pass,$cmd) {
	$conf = new DOMDocument();
	$path = dirname(__FILE__) . "/class/config.xml";
	$conf->load($path);
	
	$datas=$conf->getElementsByTagName("clan");
	foreach($datas as $data) {
		$tmp=$data->getElementsByTagName("username");
		$f_user = $tmp->item(0)->nodeValue;
	
		$tmp=$data->getElementsByTagName("password");
		$f_pass = $tmp->item(0)->nodeValue;
	}
	if ( ($user==$f_user) && ($pass==$f_pass) ) {
		$_SESSION['user']=$user;
		switch_cmd($cmd);
	}
	else {
		echo "Neispravno korisnièko ime ili lozinka!!";
	}
}

function LoadDownloads($kat) {
	switch($kat) {
		case 'obrasci':
			 $dir = './statut/obrasci/';
			break;
		case 'pravilnici':
			$dir = './statut/pravilnik/';
			break;
		default:
			exit();
	}	$d = dir($dir);

	while(false !== ($entry = $d->read()) ){ //sve dok nisu identicni
		if(!($entry==='.' || $entry==='..')) {
			$path = $dir . $entry;
			echo '<a href="'.$path.'">'.$entry.'</a><br/>';
		}
	}
}

function ReadStatut() {
/*	$doc = new DOMDocument();
	$doc->loadHTMLFile("./statut/statut/statut.htm");
	echo $doc->saveHTML();
*/
//header('meta http-equiv="Content-Type" content="text/html; charset=windows-1250"');
//header('Location:./statut/statut/statut.doc');

echo '<a href="./statut/statut/statut.doc">Statu Lovacke udruge "Jelen" Nasice</a>';
/*	$path = "./statut/statut/statut.txt";

	$handle = fopen($path,"r");
	$tekst = fread($handle, filesize($path));

	fclose($handle);
	echo $tekst;
	*/
}
?>
</body>
</html>
<?php
ob_end_flush();
?>