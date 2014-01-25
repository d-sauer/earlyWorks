<div>
	<h1>Popis TV kanala</h1>
	<br/>	
<!--	<div style="float: left;">-->
<!--		<fieldset style="border: 1px solid #B95C12;">-->
<!--			<legend>Pretraživanje</legend>-->
<!--			<table>-->
<!--				<tr>-->
<!--					<td>Naziv:</td>-->
<!--					<td><input type="text" name="naziv" value="{$naziv}" style="width: 200px;" /></td>-->
<!--				</tr>-->
<!--				<tr>-->
<!--					<td></td>-->
<!--					<td>-->
<!--						<input type="checkbox" name="ch_odobren" id="ch_odobren"  /><label for="ch_odobren">Odobren</label>-->
<!--						<br/>-->
<!--						<input type="checkbox" name="ch_neodobren" id="ch_neodobren" /><label for="ch_neodobren">Neodobren</label>-->
<!--						<br/>-->
<!--						<input type="checkbox" name="ch_epg" id="ch_epg" /><label for="ch_epg">Koji imaju EPG</label>-->
<!--						<br/>-->
<!--					-->
<!--					</td>-->
<!--				</tr>-->
<!--				<tr>-->
<!--					<td colspan="2" align="right">-->
<!--						<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_kanali.php','sadrzaj'); return false;" value="Pretraži" />-->
<!--					</td>-->
<!--				</tr>-->
<!--			</table>-->
<!--		</fieldset>-->
<!--	</div>-->
	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<legend>Akcije</legend>
			<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_novi_kanal.php','sadrzaj'); return false;" value="Novi kanal..." />
			<br/>
			<input type="button" class="btn150" onclick="ajaxUpit('admin_tv_kanali.php','sadrzaj','','azuriraj_epg'); return false;" value="Ažuriraj iz EPGa" />
		</fieldset>
	</div>
	
	<br style="clear:left;"/>
	<div style="padding-top: 20px;">
		<table style="width: 100%;" class="table1" cellspacing="0" cellpadding="2" >
			<tr>
				<th></th>
				<th align="left">Naziv kanala</th>
				<th align="left">url</th>
				<th align="left">EPG</th>
				<th align="center">Odobren</th>
			</tr>
			{section name=i loop=$kanali}
		    <tr>
		            <td><input type="checkbox" name="ch_{$kanali[i].id_pk}" /></td>
		            <td align="left"><a href="#" style="font-weight: bold;" onclick="ajaxUpit('admin_tv_novi_kanal.php','sadrzaj','tv_kanal_id={$kanali[i].id_pk}'); return false;">{$kanali[i].naziv_kanala}</a></td>
		            <td align="left">{$kanali[i].url}</td>
		            <td align="left">{$kanali[i].epg_url}</td>
		            <td align="center">{if $kanali[i].odobrenje==1}da{else}ne{/if}</td>
		    </tr>
    		{/section}
		</table>
	</div>
</div>