function check_form ( form )  {
var len;
var vform = form.name;

len = document.forms[vform].length;

var n;
for(n=0;n<6;n++) {
	if(document.forms[vform].elements[n].value=="") {
		switch(document.forms[vform].elements[n].name) {
		case 'ime':
				alert('Polje ime je prazno!');
				break;
		case 'prezime':
				alert('Polje prezime je prazno!');
				break;
		case 'email':
				alert('Polje e-mail je prazno!');
				break;
		case 'kor_ime':
				alert('Polje korisnicko ime je prazno!');
				break;
		case 'lozinka':
				alert('Polje lozinka je prazno!');
				break;
		case 'bank_rac':
				alert('Polje bankovni racun je prazno!');
				break;
		}
		document.forms[vform].elements[n].focus();
		return false;
	}
	
	switch(document.forms[vform].elements[n].name) {
		case 'ime':
				document.forms[vform].elements[n].value = first_char(document.forms[vform].elements[n].value);
				break;
		case 'prezime':
				document.forms[vform].elements[n].value = first_char(document.forms[vform].elements[n].value);
				break;
		case 'email':
				if ((document.forms[vform].elements[n].value.match("@")!="@") && (document.forms[vform].elements[n].value.match(".")!=".")) {
					alert("Neispravna e-mail adresa!");
					document.forms[vform].elements[n].focus();
					return false;
				}
				break;
		case 'lozinka':
				if(document.forms[vform].elements[n].value.length < 6 ) {
					alert("Lozinka je prekratka. Minimalna duzina lozinke je 6 znakova!");
					document.forms[vform].elements[n].focus();
					return false;
				}	
				break;	
		}		
}
return true;
}

function first_char (naziv) {
var a;
a = naziv.charAt(0);
	if(a != a.toUpperCase()) {
		naziv = a.toUpperCase() + naziv.substring(1); 
		return(naziv);
	}	
return (naziv);
}


function check_ob_form ( form )  {
var len;
var vform = form.name;

len = document.forms[vform].length;

var n;
for(n=0;n<5;n++) {
if(document.forms[vform].elements[n].value=="") {
		switch(document.forms[vform].elements[n].name) {
		case 'ob_naziv':
				alert('Polje naziv objekta je prazno!');
				break;
		case 'ob_mjesto':
				alert('Polje mjesto je prazno!');
				break;
		case 'ob_adresa':
				alert('Polje adresa je prazno!');
				break;
		}	
		document.forms[vform].elements[n].focus();
		return false;
}		
	switch(document.forms[vform].elements[n].name) {
		case 'ob_zupanija':
				if(document.forms[vform].elements[n].value==-1) {
					alert('Odaberite zupaniju!');
					document.forms[vform].elements[n].focus();
					return false;
				}
				break;
		case 'ob_tip':
				if(document.forms[vform].elements[n].value==-1) {
					alert('Odaberite smjestaj!');
					document.forms[vform].elements[n].focus();
					return false;
				}
				break;
		}		
}//end for
return true;
}


