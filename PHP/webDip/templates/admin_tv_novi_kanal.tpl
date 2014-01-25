<div>
	<h1>{$naslov}</h1>	
	<br/>
	<div style="float:left;">
		<fieldset style="border: 1px solid #B95C12;">
				<input type="hidden" name="tv_kanal_id" value="{$tv_kanal_id}" />
				<legend>Osnovni podaci o TV kanalu</legend>
				<table>
					<tr>
						<td>Naziv kanala</td>
						<td><input type="text" style="width: 200px;" name="naziv_kanala" value="{$naziv_kanala}" /></td>
					</tr>
					<tr>
						<td>Opis</td>
						<td><input type="text" style="width: 200px;" name="opis" value="{$opis}" /></td>
					</tr>
					<tr>
						<td>url</td>
						<td><input type="text" style="width: 200px;" name="url" value="{$url}" /></td>
					</tr>
					<tr>
						<td>EPG</td>
						<td><input type="text" name="epg_url" value="{$epg_url}" /></td>
					</tr>
					<tr>
						<td>Odobren</td>
						<td><input type="checkbox" name="odobrenje" {if $odobrenje == 1 || $odobrenje=='on'}checked="checked"{/if}/></td>
					</tr>
				</table>
		</fieldset>
	</div>
	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<legend>Akcije</legend>
			<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_novi_kanal.php','sadrzaj','','spremi'); return false;" value="Spremi" />
			<br/>
			<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_novi_kanal.php','sadrzaj','','obrisi'); return false;" value="Obriši" />
			<br/>
			<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_kanali.php','sadrzaj'); return false;" value="Zatvori" />
		</fieldset>
	</div>
	<div style="clear:left;">
		{$poruka}
	</div>
</div>