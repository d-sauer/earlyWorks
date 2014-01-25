window.onload = function() {	// kad se cijela web stranica učita, tada se 
	// Dodaj evente na elemente za unos podataka
	dodajEvent("ime");	// poziva funkciju i posljeđuje joj ID elementa za kojeg želimo dodati event
	dodajEvent("prezime");
	dodajEvent("username");
	dodajEvent("pass1");
	dodajEvent("pass2");
	dodajEvent("mail");
	
	el = document.getElementById("posalji");			// u 'el' dohvaćamo element prema ID-u.. posalji
														//	gumbić na ekranu.. i zatim mu dodajemo event
	el.addEventListener("click", provjeriSve, false);	// dodaje event onClick, koji prilikom događanja poziva funkciju provjeriSve
};


function dodajEvent(id) {
	var e = document.getElementById(id);
	e.addEventListener('focus', fokus, false);
	e.addEventListener('blur', bez_fokusa, false);
}	
	

function fokus() {
	this.className = "fokus";
}


function bez_fokusa() {
	this.className = "";
	provjeraUnosa(this);
}

function greska(element) {
	element.className = "greska";
}

function bezGreske(element) {
	element.className = "";
}
	

/////////////////////////////// Provjera ////////////////////////////77

function provjeraUnosa(element) {
	if(daliJePopunjeno(element)==false)
		greska(element);
}

function daliJePopunjeno(element) {
	var value = element.value;
	if(value.length==0)
		return false;
	else
		return true;
}


// Provjeri sve elemente 
function provjeriSve() {
	var g = false;
	// IME
	var el = document.getElementById("ime");
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
	}
	
	if(provjeriPocetnoSlovo(el)==false) {
		greska(el);
		g = true;
	}

	// PREZIME
	var el = document.getElementById("prezime");
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
	}
	
	if(provjeriPocetnoSlovo(el)==false) {
		greska(el);
		g = true;
	}

	// E-MAIL
	var el = document.getElementById("mail");
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
	}
	
	if(provjeriEmail(el)==false) {
		greska(el);
		g = true;
	}

	// username
	var el = document.getElementById("username");
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
	}
	
	// LOZINKA
	var el = document.getElementById("pass1");
	var p1 = true;
	var p2 = true; 
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
		p1 = false;
	} 
	
	var el = document.getElementById("pass2");
	if(daliJePopunjeno(el)==false) {
		greska(el);
		g = true;
		p2 = false;
	}
	
	if(g==false && p1==true && p2==true) {
		var el1 = document.getElementById("pass1");
		var el2 = document.getElementById("pass2");
		if(el1.value!=el2.value) {
			alert("Lozinke nisu identične");
			greska(el1);
			greska(el2);
			g = true;
		} else {
			bezGreske(el1);
			bezGreske(el2);
		}
	}
	
	
	if(g==true) {
		alert("Provjerite dali ste ispravno popunili označena polja!");
	} else {
		document.forms['mform'].submit();
	}
	
}

function provjeriPocetnoSlovo(element) {
	var value = element.value;
	var re = new RegExp('^([A-Za-zšđčćžŠĐČĆŽ]+)');
	if(value.match(re))
		return true;
	else
		return false;
}
	
function provjeriEmail(element) {
	var value = element.value;
	var re = new RegExp('^([a-zA-Z0-9.])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-]+)+');
	if(value.match(re))
		return true;
	else
		return false;
}
