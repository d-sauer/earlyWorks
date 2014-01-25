<div>
	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<legend>Popis grupa</legend>
			<input type="button" class="btn150" onclick="ajaxUpit('user_home_grupe_edit.php','sadrzaj'); return false;" value="Nova grupa..." />
			
			<table>
				<tr>
					<th>Naziv grupe</th>
					<th>Broj favorita</th>
					<th></th>
				</tr>
				{foreach $popis as $pop}
					<tr>
						<td><a href="#" onclick="ajaxUpit('user_home_grupe_popis.php','emisije','id={$pop.id}', 'emisijeGrupe'); return false;">{$pop.naziv}</a></td>
						<td>{$pop.broj}</td>
						<td><a href="#" onclick="ajaxUpit('user_home_grupe_edit.php','sadrzaj','id={$pop.id}'); return false;">Izmjeni</a></td>
					</tr>
				{/foreach}
			</table>
		</fieldset>
		<br/>
		<br/>
		<br/>
		<div id="emisije">
		
		</div>		
		
	</div>
</div>