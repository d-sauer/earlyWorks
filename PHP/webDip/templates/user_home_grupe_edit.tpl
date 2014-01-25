<div style="float:left;">
	<h1>{$naslov}</h1>	
	<br/>
	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<input type="hidden" name="id" value="{$id}" />
			<input type="hidden" name="korisnik_id" value="{$korisnik_id}" />
			<table>
				<tr>
					<th>Naziv grupe</th>
					<td><input type="text" name="naziv" size="40" value="{$naziv}"/></td>
				</tr>
				<tr>
					<th>Opis</th>
					<td>
						<textarea rows="2" cols="40" name="opis">{$opis}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">{$msg}</td>
				</tr>
			</table>

			
		</fieldset>
	</div>
	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<legend>Akcije</legend>
			<input type="button" class="btn150" onclick="ajaxUpit('user_home_grupe_edit.php','sadrzaj','','spremi'); return false;" value="Spremi" />
			<br/>
			<input type="button" class="btn150" onclick="ajaxUpit('user_home_grupe_edit.php','sadrzaj','','obrisi'); return false;" value="Obriši" />
			<br/>
			<input type="button" class="btn150" onclick="ajaxUpit('user_home_grupe.php','sadrzaj'); return false;" value="Zatvori" />
		</fieldset>
	</div>
</div>