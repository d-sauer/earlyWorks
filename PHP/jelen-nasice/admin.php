<?php
ob_start();
session_start();
$admin="zsauer"; //korisnicko ime za adminisratora

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

if(isset($_GET['cmd'])) {
	switch($_GET['cmd']) {
		case 'frmLog':
			if(isset($_SESSION['user']) && $_SESSION['user']==$admin) {
				LoadForm();
			}
			else {
				echo "Niste prijavljeni na sustav!<br/>Logirajte se!";
				frmLogin();
			}
			break;
			
		case 'login':
			//provjera podataka
			$user = $_POST['user'];
			$pass = $_POST['pass'];
			
			CheckLogin($user, $pass);			
			break;
		case 'logout':
			CleanDirSlike();
			session_destroy();
			echo "Odjavili ste se..";
			break;
		
		case 'unos':
			frmUnosKategorije();
			break;	
		case 'kategorija':
			LoadKategorija($_GET['id_kat']);
			break;
		case 'izbornik':
			LoadIzbornik($_GET['id_izb']);
			break;	
		case 'new_kat';
			$naslov = $_GET['naslov'];
			$id_izb = $_GET['id_izb'];
			NovaKategorija($naslov, $id_izb);
			break;
		case 'del_kat':
			$id_kat = $_GET['id_kat'];
			$id_izb = $_GET['id_izb'];
			DelKategorija($id_kat, $id_izb);
			break;	
		case 'ren_kat':
			$id_kat = $_GET['id_kat'];
			$id_izb = $_GET['id_izb'];
			RenKategorija($id_kat, $id_izb);
			break;
		case 'upd_kat':
			$id_kat = $_GET['id_kat'];
			$id_izb = $_GET['id_izb'];
			$naslov = $_GET['naslov'];
			
			UpdKategorija($id_izb, $id_kat, $naslov);
			break;
		case 'del_txt':
			$id_kat = $_GET['id_kat'];
			$id_txt = $_GET['id_txt'];
			DelText($id_kat, $id_txt);
			break;
		case 'ren_txt':
			$id_kat = $_GET['id_kat'];
			$id_txt = $_GET['id_txt'];
			RenText($id_kat, $id_txt);
			break;	
		case 'upd_txt':
			$id_kat = $_GET['id_kat'];
			$id_txt = $_GET['id_txt'];
			$naslov = $_GET['naslov'];
			
			UpdText($id_kat, $id_txt, $naslov);
			break;		
		case 'new_txt':
			$id_kat = $_GET['id_kat'];
			$naslov = $_GET['naslov'];
			NewText($id_kat, $naslov);
			break;			
		case 'open_txt';			
			LoadText($_GET['id_txt']);
			break;
		case 'update_txt';
			UpdateTekst($_GET['id_txt'],$_POST['tekst']);
			break;
		case 'frmUploadPic';
			frmUploadPic($_GET['sel'],$_GET['id_txt']);
			break;
		case 'refreshPic':
			LoadPicture($_GET['id_txt']);
			break;
		case 'ch_img':
			chImg_Opis($_GET['id_img']);
			break;
		case 'upd_ImgOpis':
			$id_img = $_GET['id_img'];
			$opis = $_POST['img_opis'];
			upd_ImgOpis($id_img, $opis);
			break;
		case 'del_img':
			$id_img = $_GET['id_img'];
			$id_txt = $_GET['id_txt'];
			delImage($id_img,$id_txt);
			break;
		case 'doc':
			$kat = $_GET['kat'];
			frmDoc($kat);
			break;
		case 'del_file':
			$path = $_GET['file'];
			$kat = $_GET['kat'];
			unlink($path);
			frmDoc($kat);
			break;
	}
}

function CheckLogin($user, $pass) {
	$conf = new DOMDocument();
	$path = dirname(__FILE__) . "/class/config.xml";
	$conf->load($path);
	
	$datas=$conf->getElementsByTagName("admin");
	foreach($datas as $data) {
		$tmp=$data->getElementsByTagName("username");
		$f_user = $tmp->item(0)->nodeValue;
	
		$tmp=$data->getElementsByTagName("password");
		$f_pass = $tmp->item(0)->nodeValue;
	}
	if ( ($user==$f_user) && ($pass==$f_pass) ) {
		$_SESSION['user']=$user;
		LoadForm();
	}
	else {
		echo "Neispravno korisničko ime ili lozinka!!";
	}
}

function LoadForm() {
?>
<table>
	<tr><td style="vertical-align: top;">
    <div id="admin_l" style="width:200px;border:1px solid #ccc;">
        <?php LoadMenuTitle(); ?>
    </div>
    </td>
    <td style="vertical-align: top;">
    <div id="admin_r" style="width:520px;border:1px solid #ccc;">
    	
    </div>
    </td></tr>
</table>
<?php
}

function frmLogin () {
?>
  <div align="center">
   <form name="frmLogin" id="frmLogin" method="post" action="admin.php" onsubmit="return false;">
    <table class="table_login">
    	<tr><td>Korisničko ime</td><td><input type="text" name="user" id="user" maxlength="15" /></td></tr>
        <tr><td>Lozinka</td><td><input type="password" name="pass" id="pass" maxlength="15" /></td></tr>
        <tr><td></td><td><input type="button" value="Prihvati" onclick="ajax_post(document.getElementById('frmLogin'),'admin.php?cmd=login','main')"/></td></td>
    </table>
   </form>
   </div>
<?php
}


function frmUnosKategorije() {
	echo 'unos kategorije..';


}

function LoadMenuTitle() {
//<input type="button" value="Unos nove kategorije" onclick="ajax('admin.php?cmd=unos','admin_r')" />
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT id_izb, naslov FROM izbornik ORDER BY redosljed";
	$rs_izb = $baza->query($sql);
	while($row_izb = mysql_fetch_object($rs_izb)) { //Izbornik
		$str = "'admin.php?cmd=izbornik&amp;id_izb=".$row_izb->id_izb."','admin_r'";
		echo '<a class="level1" onclick="ajax('.$str.'); return false;">' .$row_izb->naslov. '</a><br/>';
		
		$sql = "SELECT id_kat, naslov FROM kategorija WHERE id_izb=" . $row_izb->id_izb;
		$rs_kat = $baza->query($sql);
		while($row_kat = mysql_fetch_object($rs_kat)) { //kategorija
			$str = "'admin.php?cmd=kategorija&amp;id_kat=".$row_kat->id_kat."','admin_r'";
			echo '&nbsp;&nbsp;<a class="level2" onclick="ajax('.$str.'); return false;">' .$row_kat->naslov. '</a><br/>';
			
			$sql = "SELECT id_text, naslov FROM tekst WHERE id_kat=" .$row_kat->id_kat;
			$rs_txt = $baza->query($sql);
			while($row_txt = mysql_fetch_object($rs_txt)) { //tekstovi
				$str = "'admin.php?cmd=open_txt&amp;id_txt=".$row_txt->id_text."','admin_r'";
				echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="level3" onclick="ajax('.$str.'); return false;">' .$row_txt->naslov. '</a><br/>';
			}
		}
	}
	
	echo '<hr/>';
	$str = "'admin.php?cmd=doc&amp;kat=obrasci','admin_r'";
	echo '<a class="level2" onclick="ajax('.$str.'); return false;">Obrasci</a><br/>';
	$str = "'admin.php?cmd=doc&amp;kat=pravilnici','admin_r'";
	echo '<a class="level2" onclick="ajax('.$str.'); return false;">Pravilnici</a><br/>';
	
	//echo '<a target="_blank" class="level2" href="./rte/rte.php?file=statut">Statut</a><br/>';	
	echo '<br/>';
	
	//$df = (int)(((disk_free_space("./"))/1024)/1024);
	//echo 'Slobodno mjesta:' . $df . " MB";

	echo '<br/><hr/>';
	echo '<span style="font-size:9px;">Prijavljeni ste na sustav</span><br/>';
	echo '<a class="level2" onclick="ajax(\'admin.php?cmd=logout\',\'main\')">Odjava</a>';
}

function NovaKategorija($naslov, $id_izb) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT id_kat FROM kategorija WHERE id_izb=" .$id_izb;
	$rs = $baza->query($sql);
	$num = (mysql_num_rows($rs)) + 1;

	$sql = "INSERT INTO kategorija(id_izb, naslov, redosljed) VALUES(".$id_izb.",'".$naslov."',".$num.")";
	$baza->query($sql);

	LoadIzbornik($id_izb);
}

function DelKategorija($id_kat, $id_izb) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql  = "DELETE FROM kategorija WHERE id_kat=" .$id_kat;
	$baza->query($sql);

	LoadIzbornik($id_izb);
}

function RenKategorija($id_kat, $id_izb) {
	include_once './class/baza.php';
	$baza = new baza;
	$sql = "SELECT naslov FROM kategorija WHERE id_kat=" .$id_kat;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	echo '<input type="text" maxlength="30" size="30" name="naslov" id="naslov" value="'.$row->naslov.'"/> ';	
	$str = "'admin.php?cmd=upd_kat&amp;id_kat=".$id_kat."&amp;id_izb=".$id_izb."&amp;naslov=' + document.getElementById('naslov').value,'admin_r'";
	echo '<input type="button" name="upd_kat" value="Prihvati" onclick="ajax('.$str.')" />';	
}

function UpdKategorija($id_izb, $id_kat, $naslov) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql = "UPDATE kategorija SET naslov = '".$naslov."' WHERE id_kat=" .$id_kat;
	$baza->query($sql);
	
	LoadIzbornik($id_izb);
}

function LoadIzbornik($id_izb) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT naslov from izbornik WHERE id_izb=" .$id_izb;
	$rs_izb = $baza->query($sql);
	$row_izb = mysql_fetch_object($rs_izb);
	
	echo '> ' . $row_izb->naslov . '<br/>';
	
	$sql = "SELECT id_kat, naslov FROM kategorija WHERE id_izb=" .$id_izb;
	$rs_kat = $baza->query($sql);
	echo 'Kategorije<br/>';
	echo '<table>';
	while($row_kat = mysql_fetch_object($rs_kat)) {
		echo '<tr>
				<td width="60%"><div class="text1" id="kat'.$row_kat->id_kat.'">' . $row_kat->naslov. '</div></td>';
				$str = "'admin.php?cmd=ren_kat&amp;id_izb=".$id_izb."&amp;id_kat=".$row_kat->id_kat."','kat".$row_kat->id_kat."'";
		echo '  <td width="15%"><input type="button" name="ren_kat" value="Preimenuj" onclick="ajax('.$str.')" /> </td>';
		
				$str = "'admin.php?cmd=del_kat&amp;id_izb=".$id_izb."&amp;id_kat=".$row_kat->id_kat."','admin_r'";
		echo '  <td width="15%"><input type="button" name="del_kat" value="Obriši" onclick="ajax('.$str.')" /> </td>
			 </tr>';
	}

		echo '<tr>
				<td width="70%"><input type="text" maxlength="30" size="30" name="naslov" id="naslov" /></td><td></td>';
		$str = "'admin.php?cmd=new_kat&amp;id_izb=".$id_izb."&amp;naslov=' + document.getElementById('naslov').value,'admin_r'";
		echo '  <td width="15%"><input type="button" name="new_kat" value="Dodaj" onclick="ajax('.$str.')" /> </td></tr>';
	
	echo '</table>';
	
}

function DelText($id_kat, $id_txt) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql = "DELETE FROM tekst WHERE id_text=" .$id_txt;
	$baza->query($sql);
	
	CleanDirSlike();
	LoadKategorija($id_kat);
}

function RenText($id_kat, $id_txt) {
	include_once './class/baza.php';
	$baza = new baza;
	$sql = "SELECT naslov FROM tekst WHERE id_text=" .$id_txt;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	echo '<input type="text" maxlength="100" size="30" name="naslov" id="naslov" value="'.$row->naslov.'"/> ';	
	$str = "'admin.php?cmd=upd_txt&amp;id_kat=".$id_kat."&amp;id_txt=".$id_txt."&amp;naslov=' + document.getElementById('naslov').value,'admin_r'";
	echo '<input type="button" name="upd_txt" value="Prihvati" onclick="ajax('.$str.')" />';	
}

function UpdText($id_kat, $id_txt, $naslov) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql = "UPDATE tekst SET naslov = '".$naslov."' WHERE id_text=" .$id_txt;
	$baza->query($sql);
	
	LoadKategorija($id_kat);
}

function NewText($id_kat, $naslov) {
	include_once './class/baza.php';
	$baza = new baza;
	$date = date("Y-m-d");
	
	$sql = "INSERT INTO tekst(id_kat,naslov,datum) VALUES(".$id_kat.",'".$naslov."','".$date."')";
	$baza->query($sql);
	
	LoadKategorija($id_kat);
}

function LoadKategorija($id_kat) {
	include_once './class/baza.php';
	$baza = new baza;

	$sql = "SELECT i.naslov AS izbornik, k.naslov AS kategorija FROM izbornik i, kategorija k WHERE i.id_izb = k.id_izb AND k.id_kat=" . $id_kat;
	$rs_kat=$baza->query($sql);
	$row_kat = mysql_fetch_object($rs_kat);	
	echo '> ' .$row_kat->izbornik. ' > ' .$row_kat->kategorija . '<br/>';
		
	$sql = "SELECT id_text, naslov, DATE_FORMAT(datum, '%e.%m.%Y.') AS datum FROM tekst WHERE id_kat=" .$id_kat;
	$rs_txt = $baza->query($sql);
	echo 'Tekstovi<br/>';
	echo '<table>';
	while($row_txt = mysql_fetch_object($rs_txt)) {
		$str = "'admin.php?cmd=open_txt&amp;id_txt=".$row_txt->id_text."','admin_r'";
		echo '<tr>
				<td width="60%"><div class="text1" id="txt'.$row_txt->id_text.'"><a class="level2" onclick="ajax('.$str.');return false;">' . $row_txt->naslov. ' ('.$row_txt->datum.')</a></div></td>';
				
				$str = "'admin.php?cmd=ren_txt&amp;id_kat=".$id_kat."&amp;id_txt=".$row_txt->id_text."','txt".$row_txt->id_text."'";
		echo '  <td width="15%"><input type="button" name="ren_txt" value="Preimenuj" onclick="ajax('.$str.')" /> </td>';
		
				$str = "'admin.php?cmd=del_txt&amp;id_kat=".$id_kat."&amp;id_txt=".$row_txt->id_text."','admin_r'";
		echo '  <td width="15%"><input type="button" name="del_txt" value="Obriši" onclick="ajax('.$str.')" /> </td>
			 </tr>';
	}
	echo '<tr>
			<td width="70%"><input type="text" maxlength="100" size="30" name="naslov" id="naslov" /></td><td></td>';
	$str = "'admin.php?cmd=new_txt&amp;id_kat=".$id_kat."&amp;naslov=' + document.getElementById('naslov').value,'admin_r'";
	echo '  <td width="15%"><input type="button" name="new_txt" value="Dodaj" onclick="ajax('.$str.')" /> </td></tr>';
	
	echo '</table>';
	
			
}

function LoadText($id_txt) {
	echo '<div id="text">';
		OpenText($id_txt);
	echo '</div><hr/>';
	echo '<div id="slike">';
		LoadPicture($id_txt);
	echo '</div>';	
}

function OpenText($id_txt) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT naslov, tekst, DATE_FORMAT(datum, '%e.%m.%Y.') AS datum FROM tekst WHERE id_text=" .$id_txt;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	
	echo '<h1>&nbsp;&nbsp;' .$row->naslov. '</h1>';
	echo '<form method="post" id="frmtext">';
	echo '<textarea rows="15" cols="60" name="tekst" id="tekst" style="margin-left:8px;">'.$row->tekst.'</textarea>';

	$str = "document.getElementById('frmtext'),'admin.php?cmd=update_txt&amp;id_txt=".$id_txt."','text'";
	echo '<input style="margin-left:250px;" type="button" value="Spremi" onclick="ajax_post('.$str.'); alert(\'Spremanje teksta uspješno završeno\');return false;" />';
	echo '<a target="_blank" style="margin-left:20px;" href="./rte/rte.php?id_txt='.$id_txt.'">Napredno uređivanje teksta</a>';

	echo '</form>'; 
}

function UpdateTekst($id_txt,$text) {
	include_once './class/baza.php';
	$baza = new baza;

	//$f_text = Filter($text); //filter

	$sql = "UPDATE tekst SET tekst='" .$text. "' WHERE id_text=" .$id_txt;
	$baza->query($sql);

	OpenText($id_txt);
}

function LoadPicture($id_txt) {
	echo '<div id="slideshow">';
		ShowPicture($id_txt);
	echo '</div>';
	echo '<div style="margin-left:10px;" id="upload_pic">';
		frmUploadPic(2,$id_txt);
	echo '</div>';		
}

function frmUploadPic($sel,$id_txt) {
	switch($sel) {
		case 1:
			$str = "'admin.php?cmd=refreshPic&amp;id_txt=".$id_txt."','slike'";
			?>    
 			<!--<form id="file_upload_form" action="upload.php" method="post" enctype="multipart/form-data" target="upload_target" onsubmit="ajax(<?php echo $str;?>);"> -->
			 <form id="file_upload_form" action="upload.php" method="post" enctype="multipart/form-data" target="_blank">
			 <table>
			 <tr><td>Slika</td><td><input name="myfile" type="file"  size="39"/></td></tr>
			 <tr><td>Opis</td><td><textarea rows="2" cols="30" name="opis" id="opis"></textarea></td></tr>
             <input type="hidden" id="id_txt" name="id_txt" value="<?php echo $id_txt;?>" />
			 <tr><td></td><td><input type="submit" name="submitBtn" value="Prihvati sliku" /></td></tr>
			 </table>
			</form>
			<iframe id="upload_target" name="upload_target" src="" style="width:0;height:0;border:0px solid #fff;"></iframe>
			<?php
			break;
		case 2:
			$str = "'admin.php?cmd=frmUploadPic&amp;sel=1&amp;id_txt=".$id_txt."','upload_pic'";
			echo '<input style="margin-left:20px;" type="button" value="Dodaj novu sliku" onclick="ajax('.$str.')"<br/>';
			break;
	}
}

function ShowPicture($id_txt) {
	include_once './class/baza.php';
	$baza = new baza;
	sleep(1);
	
	$sql = "SELECT id_slika, path, opis FROM slika WHERE id_text=" . $id_txt;
	$rs = $baza->query($sql);

	echo '<table border="1px" style="margin-left:20px; margin-right:10px;">';
	while($row = mysql_fetch_object($rs)) {
		echo '<tr>';
			echo '<td width="30%">';
				echo '<img align="left" src="'.$row->path.'" width="80%"  />';
			echo '</td>';
			echo '<td style="vertical-align: top;"> <div id="opis'.$row->id_slika.'">';
				echo 'Opis:<br/>' .$row->opis;
				echo '</div>';
				
				$str = "'admin.php?cmd=ch_img&amp;id_img=".$row->id_slika."','opis".$row->id_slika."'";
				echo '<br/><input type="button" name="promijeni" value="Promijeni opis" onclick="ajax('.$str.')" />';				

				$str = "'admin.php?cmd=del_img&amp;id_img=".$row->id_slika."&amp;id_txt=".$id_txt."','slike'";
				echo '&nbsp;&nbsp;<input type="button" name="obrisi" value="Obriši" onclick="ajax('.$str.')" />';								
			echo '</td>';		
		echo '</tr>';
	}
	echo '</table>';

}

function chImg_Opis($id_img) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT id_slika, path, opis FROM slika WHERE id_slika=" . $id_img;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	

	echo '<form method="post" id="frmopis">
				<textarea rows="3" cols="20" name="img_opis" id="img_opis" style="margin-left:3px;margin-top:3px">'.$row->opis.'</textarea>';
	$str = "document.getElementById('frmopis'),'admin.php?cmd=upd_ImgOpis&amp;id_img=".$id_img."','opis".$id_img."'";
	echo '&nbsp;&nbsp;<input type="button" value="Spremi" onclick="ajax_post('.$str.');return false;" />';
	echo '</form>'; 
}

function upd_ImgOpis($id_img, $opis) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "UPDATE slika SET opis='".$opis."' WHERE id_slika=" . $id_img;
	$baza->query($sql);

	echo 'Opis:<br/>' .$opis;
}

function delImage ($id_img, $id_txt) {
	include_once './class/baza.php';
	$baza = new baza;
	
	$sql = "SELECT path FROM slika WHERE id_slika=" . $id_img;
	$rs = $baza->query($sql);
	$row = mysql_fetch_object($rs);
	
	unlink($row->path);
	
	$sql = "DELETE FROM slika WHERE id_slika=" . $id_img;
	$baza->query($sql);
	
	LoadPicture($id_txt);
}

function CleanDirSlike () {
	include_once './class/baza.php';
	$baza = new baza;
	
	$dir = './slike/';
	$d = dir($dir);
	while (false !== ($entry = $d->read())) {
		if ( !($entry==='.' || $entry==='..')) {
			$path = $dir . $entry;
			$sql = "SELECT path AS count FROM slika WHERE path='" .$path ."'";
			$rs = $baza->query($sql);
			$num = mysql_num_rows($rs);
			if($num==0) // datoteka ne postoji u bazi, te ju treba obrisat iz foldera
				unlink($path);
		}
	}	
	$d->close();
}

function frmDoc($kat) {
	switch($kat) {
		case 'obrasci':
			 $dir = './statut/obrasci/';
			break;
		case 'pravilnici':
			$dir = './statut/pravilnik/';
			break;
		default:
			exit();
	}
 	$d = dir($dir);

	echo '<table align="center" width="90%">';
	echo '<tr><td width="50%">Naziv datoteke</td><td>Veličina</td><td>Kreirano</td></tr>';
 	while (false !== ($entry = $d->read())) {
		
		if(!($entry==='.' || $entry==='..')) {
			$path = $dir . $entry;
			$size = (int)(filesize($path)/1024);
			$time = date("d.m.Y. H:i.", fileatime($path));
			echo '<tr>';
				echo '<td>' . $entry .'</td>';
				echo '<td>' .$size .' KB</td>';
				echo '<td>' .$time .'</td>';
				echo '<td><input type="button" name="del_file" value="Obriši" onclick="ajax(\'admin.php?cmd=del_file&amp;kat='.$kat.'&amp;file='.$path.'\',\'admin_r\');return false;" />';
			echo '</tr>';
		}
	}
	echo '<tr><th colspan="4">';
		?>
        <form id="file_upload_form" action="upload_doc.php" method="post" enctype="multipart/form-data" target="upload_target" onsubmit="ajax('admin.php?cmd=doc&amp;kat=<?php echo $kat; ?>','admin_r');">
			 <br/>Datoteka:<input name="myfile" type="file"  size="30"/>
             <input type="hidden" name="up_path" value="<?php echo $dir;?>" />
			 <input type="submit" name="submitBtn" value="Dodaj datoteku" />
		</form>
		<iframe id="upload_target" name="upload_target" src="" style="width:0;height:0;border:0px solid #fff;"></iframe>
        <?php
	echo '</th></tr>';
	echo '</table>';
}

?> 
</body>
</html>
<?php
ob_end_flush();
?>