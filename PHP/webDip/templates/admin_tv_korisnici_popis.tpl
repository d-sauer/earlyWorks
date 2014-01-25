<div>

	<h1>TV korisnici</h1>	
	

<h4>TV korisnici</h4>
<table border="1">
<tr>
  <td>korisničko ime:</td>
  <td>ime:</td>
  <td>prezime:</td>
  <td>email:</td>
  <td>mobitel:</td>
  <td>tip korisnika:</td>
  <td>aktiviran:</td>
  
  
</tr>
{section name=i loop=$korisnici}
<tr>

  <td>{$korisnici[i].korisnicko_ime}</td>
  <td>{$korisnici[i].ime}</td>
  <td>{$korisnici[i].prezime}</td>
  <td>{$korisnici[i].email}</td>
  <td>{$korisnici[i].mobitel}</td>
  <td>{$korisnici[i].vrsta_korisnika}</td>         <!-- je iz tablice tv_tipkorisnika -->
  <td>{if $korisnici[i].aktiviran==1}da{else}ne{/if}</td>
   
  
</tr>
{/section}
</table>

	
	
	
	
</div>