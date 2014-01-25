<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>TV Programi</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
    <script src="js/jquery-1.5.1.js"></script>

	<script src="js/jquery.ui.core.js"></script>
	<script src="js/jquery.ui.widget.js"></script>

	<script src="js/jquery.ui.mouse.js"></script>
	<script src="js/jquery.ui.sortable.js"></script>
	<script src="js/jquery.ui.tabs.js"></script>

	<script src="js/jquery.paginatetable.js"></script>

	<script src="js/jquery.uitablefilter.js"></script>
	<script src="js/jquery.ui.datepicker.js"></script>
	<script src="js/jquery.ui.draggable.js"></script>
	<script src="js/jquery.highlight-3.js"></script>
	
	<script type="text/javascript" src="js/tv.js"></script>

	<link rel="stylesheet" href="css/jquery.ui.all.css" type="text/css">
	<link rel="stylesheet" href="css/demos.css" type="text/css">
	<link href="styles.css" rel="stylesheet" type="text/css" />
	<link href="tv.css" rel="stylesheet" type="text/css" />
</head>
<body>


<div id="main">
<form name="mform" id="mform" method="post"> 
	<!-- header begins -->
	<div id="header">
		<div id="logo">
			<table>
				<tr>
					<td>
						<img src="images/logo.gif"  style="width: 60px;"/>
					</td>
					<td>
				      	<span style="font-size: 25px; color: #FFFFFF;">TV Portal...</span><br/>
				      	<span style="font-size: 10px; color: #BFBFBF; padding-left: 20px;">by xxxx xxxx</span>
					</td>
				</tr>
			</table>
	      	
	    </div>
	    <div id="buttons">
	      <a href="index.php" class="but"  title="">Početna</a>
	      <a href="tv_pretrazivanje.php" class="but" title="">Pretraživanje</a>
	      <a href="tv_dnevni_raspored.php"  class="but" title="">Dnevni raspored</a>
	      {if isset($is_loged_in)}
	      	  {if $tip_korisnika_id==3 || $tip_korisnika_id==4}
		      	<a href="user_home.php"  class="but" title="">Moj TV</a>
		      	<a href="tv_logout.php" class="but"  title="">Odjava</a>
		      {elseif $tip_korisnika_id==2}
		      	<a href="admin.php"  class="but" title="">Administrator</a>
		      	<a href="tv_logout.php" class="but"  title="">Odjava</a>
		      {/if}
	      {else}
		      <a href="tv_registracija.php"  class="but" >Registracija</a>
		      <a href="tv_login.php" class="but" >Prijava</a>
	      {/if}
	    </div>
	</div>
	<!-- header ends -->