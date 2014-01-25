<fieldset style="border: 1px solid #B95C12;">
	<legend>Dodaj u grupu</legend>
	{foreach $popis as $el}
		<a href="" onclick="addToFav({$el.id},{$raspored_id}); return false;">{$el.naziv}</a><br/>
	{/foreach}
</fieldset>
	<a href="#" onclick="$('#ajax_menu_favorites').hide(); return false;">Zatvori...</a>