{include file="header.tpl"}

<div class="bijelo">

	<script src="js/validacija.js"></script>
	<div style="position: relative; width: 400px; margin: 0 auto; padding-top: 20px; padding-bottom: 50px;">
		<table class="tablica1">
			<caption class="naslov"><b>Obrazac za registraciju...</b></caption>
			<tr>
				<td colspan="2" align="center"><span style="font-weight: bold; color: #FF0000;">{$msg}</span></td>
			</tr>
			<tr>
				<td><label for="username"> Korisničko ime:</label></td>
				<td><input id="username" name="username" value="{$username}" /></td>
			</tr>
		
			<tr>
				<td><label for="ime">Ime:</label></td>
				<td><input id="ime" name="ime" value="{$ime}" /></td>
			</tr>
		
			<tr>
				<td><label for="prezime">Prezime:</label></td>
				<td><input id="prezime" name="prezime" value="{$prezime}"></td>
			</tr>
		
		
			<tr>
				<td><label for="pass1">lozinka:</label></td>
				<td><input type="password" id="pass1" name="pass1" value="" /></td>
			</tr>
			<tr>
				<td><label for="pass2">ponovljena lozinka:</label></td>
				<td><input type="password" id="pass2" name="pass2" value="" /></td>
			</tr>
		
		
			<tr>
				<td><label for="mail">Email:</label></td>
				<td><input id="mail" name="mail" value="{$mail}" /></td>
			</tr>


			<tr>
				<td><label for="tel">Telefon:</label></td>
				<td><input id="tel" name="tel" value="{$tel}" /></td>
			</tr>
		
			<tr>
				<td valign="top">Validacija</td>
				<td valign="top"><input type="text" name="captcha_code" size="10"
					maxlength="6" /> <a href="#"
					onclick="document.getElementById('captcha').src = 'libs/securimage/securimage_show.php?' + Math.random(); return false">Promijeni
				sliku</a> <br />
				<img id="captcha" src="libs/securimage/securimage_show.php"
					alt="CAPTCHA Image" /></td>
			</tr>
		
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="akcija" value="registracija" />
					<input type="button" style="width: 120px; height: 30px;" name="posalji" id="posalji" value="Pošalji obrazac" />
				</td>
			</tr>
		
		</table>
	</div>

</div>





{include file="footer.tpl"}
