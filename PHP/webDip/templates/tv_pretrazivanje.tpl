{include file="header.tpl"}

<div class="bijelo">
	<div style="padding: 5px;">
		<fieldset style="border: 1px solid #B95C12;">
				<legend>Pretraživanje</legend>
				<table>
					<tr>
						<td>Naziv:</td>
						<td><input name="naziv" type="text" style="width:200px" /></td>
						<td style="width: 10px;"></td>
						<td>Emitiranje</td>
						<td class="demo">
								od <input type="text" style="width:70px" id="datum_od" name="datum_od" />
								do <input type="text" style="width:70px" id="datum_do" name="datum_do"/>
						</td>																		
						<td style="width: 10px;"></td>
						<td>Kategorija:</td>
						<td>
							<select name="kategorija" style="width: 130px">
								<option></option>
								{section name=i loop=$popis_kategorija}
									<option value="{$popis_kategorija[i].id}">{$popis_kategorija[i].naziv_kategorije}</option>
								{/section}
							</select>
						</td>
						<td style="width: 10px;"></td>
						<td>TV kanal:</td>
						<td>
							<select name="kanal" style="width: 130px">
								<option></option>
								{section name=i loop=$popis_kanala}
									<option value="{$popis_kanala[i].id_pk}">{$popis_kanala[i].naziv_kanala}</option>
								{/section}
							</select>
						</td>
					</tr>
					<tr>
						<td></td>
						<td colspan="10">
							<input type="button" onclick="ajaxUpit('tv_pretrazivanje_raspored.php','tv_raspored','','pretrazi'); return false;" name="trazi" value="Pronađi" style="width: 150px; height: 25px;"/>
						</td>
					</tr>
				</table>
		</fieldset>
	</div>
	<div style="padding: 5px;" id="tv_raspored">
		
	</div>
</div>

<script>
	$(function() {
		$( "#datum_od" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,			
			dateFormat: 'dd.mm.yy'
		});
		$( "#datum_do" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.gif",
			buttonImageOnly: true,
			dateFormat: 'dd.mm.yy'
		});
	});
</script>

{include file="footer.tpl"} 