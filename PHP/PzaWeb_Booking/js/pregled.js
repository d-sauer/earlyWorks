var XMLHttpRequestObject = false;

      if (window.XMLHttpRequest) {
        XMLHttpRequestObject = new XMLHttpRequest();
      } else if (window.ActiveXObject) {
        XMLHttpRequestObject = new
          ActiveXObject("Microsoft.XMLHTTP");
      }

      function getData(dataSource, divID){
      	if(XMLHttpRequestObject) {
          var obj = document.getElementById(divID);
          XMLHttpRequestObject.open("GET", dataSource,true);

          XMLHttpRequestObject.onreadystatechange = function(){
             if (XMLHttpRequestObject.readyState == 4 && XMLHttpRequestObject.status == 200) {
                 obj.innerHTML = XMLHttpRequestObject.responseText;				  
             }
           }

           XMLHttpRequestObject.send(null);
        }
      }

function pregled(){
	var browserName=navigator.appName; 
	
	if (browserName=="Microsoft Internet Explorer"){ 
	 document.getElementById("cell_left").innerHTML ='<h1>Kampovi</h1><p>Tražite komad hladovine gdje bi postavili šator? Ne znate gdje bi ovo ljeto parkirali svoju kamp ku&#263;icu?</p>Mi imamo parcelu baš za Vas<p align="right"><a href="ponuda.php?vrsta=2"><img src="slike/kamp.jpg" alt="" border="0" /></a></p>';
	}
	else { 
	  document.getElementById("cell_left").innerHTML ='<h1>Kampovi</h1><p>Tražite komad hladovine gdje bi postavili šator?<br />Ne znate gdje bi ovo ljeto parkirali svoju kamp ku&#263;icu?</p>Mi imamo parcelu baš za Vas<p align="right"><a href="ponuda.php?vrsta=2"><img src="slike/kamp.jpg" alt="" border="0" /></a></p>';
	}
}

function promjenaloz(korisnik){
	getData('lozinka.php?pro='+korisnik, 'lozinka');
	
}

function trenutna(sada){	
	vrijed = document.getElementById("passold").value;
	getData('lozinka.php?kor='+sada+'&unos='+vrijed,'lozold');
	
}

function dajOstale(tko){
	document.getElementById("passold").readOnly="true";
	getData('lozinka.php?ostalo='+tko, 'ostatak');
}

function iste(){
	unos1 = document.getElementById("pass1").value;
	unos2 = document.getElementById("pass2").value;
	
	if (unos1 == unos2){
		document.getElementById("picc").innerHTML = '<img src="../slike/ok24.png" id="stima" alt="stima"  />';
	}
	else{
		document.getElementById("picc").innerHTML = '<img src="../slike/del24.png" id="nestima" alt="nestima"  />';
	}
}

function novaloz(korisnik){
	nova1 = document.getElementById("pass1").value;
	nova2 = document.getElementById("pass2").value;
	
	if (nova1 != '' && nova2 != ''){
		if(nova1 == nova2){
			getData('lozinka.php?user='+korisnik+'&lozinka='+nova2, 'picc');
			alert ('Vaša lozinka je uspješno promijenjena!');
			location.reload(true);
		}
		else{
			alert ('Lozinke koje ste unijeli nisu jednake!');
		}
	}
	else{
		alert ('Niste popunili sva potreba polja!');
	}
}

