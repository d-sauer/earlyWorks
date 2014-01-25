{include file="header.tpl"}
<div class="bijelo" style="padding: 5px;">
	<div style="position: relative; width: 300px; margin: 0 auto;">
		<input type="hidden" name="akcija" value="login" />
		<table>
			<tr>
				<td colspan="2" align="center">
					<span style="font-weight: bold; font-size: 14px; color: #B95C12;">Prijava u sustav</span>
				</td>
			</tr>
			<tr>
				<td>Korisničko ime:</td>
				<td><input type="text" name="kor_ime" style="width: 150px" value="{$kor_ime}"/></td>
			</tr>
			<tr>
				<td>Lozinka:</td>
				<td><input type="password" name="kor_loz" style="width: 150px" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="right">
					<input type="submit" value="Prijava..." name="btnSubmit" />
				</td>
			</tr>
			<tr>
				<td colspan="2">{$msg}</td>
			</tr>
		</table>
		
	</div>
	

</div>
{include file="footer.tpl"} 