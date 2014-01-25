	<div style="float: left; padding-left: 10px;">
		<fieldset style="border: 1px solid #B95C12;">
			<legend>{$grupa}</legend>
			<table>
				<tr>
					<th>Vrijeme</th>
					<th>Kanal</th>
					<th>Naziv</th>
					<th>Vrsta</th>
				</tr>
				{foreach $popis as $pop}
					<tr>
						<td>{$pop.vrijeme}</td>
						<td>{$pop.naziv_kanala}</td>
						<td>{$pop.naziv}</td>
						<td>{$pop.naziv_kategorije}</td>
					</tr>
				{/foreach}
			</table>

			
		</fieldset>
	</div>
