<?php
include_once ('../libs/util/baza.php');
$db = new baza;

$sql = "SELECT * FROM tv_korisnici";
$rs = $db->baza_upit($sql);

?>
<table>
	<tr>
		<td>korisnicko_ime</td>
		<td>lozinka</td>
		<td>ime prezime</td>
		<td>email</td>
		<td>aktivan</td>
	</tr>
<?php 
while($red = mysql_fetch_object($rs)) {
	?>
	<tr>
		<td><?php echo $red->korisnicko_ime;?></td>
		<td><?php echo $red->lozinka;?></td>
		<td><?php echo $red->ime . ' ' . $red->prezime;?></td>
		<td><?php echo $red->email;?></td>
		<td><?php echo $red->aktiviran;?></td>
	</tr>
	<?php 
}
echo '</table>';

?>