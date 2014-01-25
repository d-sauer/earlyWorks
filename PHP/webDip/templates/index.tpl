{include file="header.tpl"} 
<div class="bijelo" style="padding: 5px;">
	<table style="width: 100%;">
		<tr>
			<td style="width: 50%;" valign="top">
				<fieldset style="border: 1px solid #B95C12;">
						<legend>Trenutno na programu</legend>
						<table style="width: 100%" cellspacing="0">
							{foreach $emitiranje as $emisija}
							<tr>
								<td valign="top" style="width: 80px;">{$emisija.vrijeme} - {$emisija.vrijeme_kraj}</td>
								<td valign="top" style="width: 60px;">{$emisija.naziv_kanala}</td>
								<td valign="top" style="{if $emisija.emitiranje=='true'}color: #FF0000; font-weight: bold; background-color: #FFFF00;{/if}">
									<a style="cursor: pointer;" onclick="toggle('opis_{$raspored.id}')">{$emisija.naziv}</a>
									<div class="opis" id="opis_{$raspored.id}" style="display: none; width: 100%">
										 <span class="kategorija">{$emisija.naziv_kategorije}</span>
										 <br/>
										 {$emisija.opis}
									</div>
								</td>
							</tr>						
							{/foreach}
						</table>
				</fieldset>
			</td>
			<td style="width: 10px;"></td>
			<td style="width: 50%;" valign="top">
				<fieldset style="border: 1px solid #B95C12;">
						<legend>Preporučeno</legend>
						<table style="width: 100%">
							{foreach $popularno as $emisija}
							<tr>
								<td>
									{$emisija.vrijeme} - {$emisija.vrijeme_kraj}
									<br/>
									<span style="font-size: 10px; color:#AAA;">({$emisija.vrijeme_dan})</span> 
								</td>
								<td valign="top">{$emisija.naziv_kanala}</td>
								<td valign="top">{$emisija.naziv}</td>
							</tr>						
							{/foreach}
						</table>
				</fieldset>
			</td>
			
		</tr>
	</table>
</div>

{include file="footer.tpl"} 