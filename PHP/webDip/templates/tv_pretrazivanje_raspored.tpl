{if $samo_raspored=='false'}
<fieldset style="border: 1px solid #B95C12;">
	<legend>TV raspored</legend>
{/if}
	
	{foreach $kanali as $key=>$kanal}
		<script language="javascript" type="text/javascript">
			var tekst = '{$naziv}';
			if(tekst.length!=0)
				$('#raspored_{$key}').removeHighlight().highlight(tekst);
		</script>
		{if $samo_raspored=='false'}
			<div class="tv_raspored" name="tv_raspored" id="raspored_{$key}" style="{$kanal.style}">
		{/if}
			<table style="width: 100%" cellspacing="0" cellpadding="2">
				<tr>
					<th colspan="{if isset($is_loged_in)}3{else}2{/if}" align="center" >
					{$kanal.kanal_naziv}
					
					<div style="float: right;">
						<img src="images/arrow-left.gif"  onclick="ajaxUpit('tv_pretrazivanje_raspored.php','raspored_{$key}','prvi_id={$kanal.prvi_id}&samo_raspored=true&kanal_id={$key}','pretrazi'); return false;"/>
						<span style="font-weight: normal; font-size: 10px; ">{$kanal.dan_od} - {$kanal.dan_do}</span>
						<img src="images/arrow-right.gif" onclick="ajaxUpit('tv_pretrazivanje_raspored.php','raspored_{$key}','zadnji_id={$kanal.zadnji_id}&samo_raspored=true&kanal_id={$key}','pretrazi'); return false;"/>
					</div>
					</th>
				</tr>
				{foreach $kanal.raspored as $raspored}
					{if $raspored.pocetak_dana}
						<tr>
							<td align="center" colspan="2" style="color: #000000; background-color: #F8D5B8;">{$raspored.pocetak_dana}</td>
						</tr>
					{/if}
					<tr>
						<td valign="top" style="{if $raspored.emitiranje=='true'}color: #FF0000; font-weight: bold; background-color: #FFFF00;{/if}">
							{$raspored.vrijeme}
						</td>
						<td style="{if $raspored.emitiranje=='true'}color: #FF0000; font-weight: bold; background-color: #FFFF00;{/if}">
							<a style="cursor: pointer;" onclick="toggle('opis_{$raspored.id}')">{$raspored.naziv}</a>
							<div class="opis" id="opis_{$raspored.id}" style="display: none;">
							 {if isset($raspored.kor_grupa_id)}
							 	Grupa: {$raspored.grupa_naziv}<br/>
							 {/if}
							 <span class="kategorija">{$raspored.naziv_kategorije}</span>
							 <br/>
							 {$raspored.opis}
							</div>
						</td>
						{if isset($is_loged_in)}
							<td style="width: 40px;" valign="top" align="center">
							<img id="icon_favorites_{$raspored.id}" src="{if isset($raspored.kor_grupa_id)}images/icon_favorites_da.gif{else}images/icon_favorites_ne.gif{/if}" onclick="popup_fav(this, '{$raspored.id}'); return false;" title="Dodaj u favorite"/>
<!--							<img src="images/icon_message.gif" title="Ostavi komentar"/>-->
							</td>
						{/if}
					</tr>
				{/foreach}
				
			</table>
		{if $samo_raspored=='false'}
		</div>
		{/if}
	{/foreach}

{if $samo_raspored=='false'}	
	</fieldset>
{/if}



<div class="fav_popup" id="ajax_menu_favorites" style="padding:2px; display: none; position: absolute; z-index:200; top: 10px; left: 20px; color: #000000; background-color:#FCEFE4; border-right: 2px solid #B95C12; border-bottom: 2px solid #B95C12; border-left: 2px solid #F1A96F; border-top: 2px solid #F1A96F;">
</div>
