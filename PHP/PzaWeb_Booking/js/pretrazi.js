window.onload=pocetak;

function pocetak(){
	prikazi(1);	
}
function povratak(broj){	
	history.back();
	
	if (broj==0){
		document.getElementById("tip_sve").checked = "true";
		prikazi(broj);
	}
	else if (broj==1){
		document.getElementById("tip_hotel").checked = true;
		prikazi(broj);
	}
	else if (broj==2){
		document.getElementById("tip_hostel").checked = "true";
		prikazi(broj);
	}
	else{
		document.getElementById("tip_kamp").checked = "true";
		prikazi(broj);
	}
}

function prikazi(izbor){	
	
	if (izbor==0){ //sve
		document.getElementById("hotel").style.display = "inline";
		document.getElementById("hostel").style.display = "inline";
		document.getElementById("kamp").style.display = "inline";
		
	}
	else if(izbor==1){ //hotel
		document.getElementById("hotel").style.display = "inline";
		document.getElementById("hostel").style.display = "none";
		document.getElementById("kamp").style.display = "none";
	}
	else if(izbor==2){ //hostel
		document.getElementById("hotel").style.display = "none";
		document.getElementById("hostel").style.display = "inline";
		document.getElementById("kamp").style.display = "none";
	}
	else if(izbor==3){ //kamp
		document.getElementById("hotel").style.display = "none";
		document.getElementById("hostel").style.display = "none";
		document.getElementById("kamp").style.display = "inline";
	}
}

function provjeri(){
	pocetak=document.getElementById("pocetak").value;
	kraj=document.getElementById("kraj").value;
	
	if (pocetak!=""){
		poc_dd=pocetak.slice(0,2);
		poc_mm=pocetak.slice(3,5);
		poc_gg=pocetak.slice(6,10);
		
		if (poc_dd<10){
			dan1=poc_dd.slice(1,2);
		}else {
			dan1=poc_dd;
		}
		
		if (poc_mm<10){
			mjesec1=poc_mm.slice(1,2);
		}else{
			mjesec1=poc_mm;
		}
		
		if(kraj!=""){
			kraj_dd=kraj.slice(0,2);
			kraj_mm=kraj.slice(3,5);
			kraj_gg=kraj.slice(6,10);
			
			if (poc_dd<10){
				dan2=kraj_dd.slice(1,2);
			}else {
				dan2=kraj_dd;
			}
			
			if (poc_mm<10){
				mjesec2=kraj_mm.slice(1,2);
			}else{
				mjesec2=kraj_mm;
			}
			
			
		}
	}
}

function kamp_sve(){
	document.getElementById("struja").checked=false;
	document.getElementById("voda").checked=false;
	document.getElementById("sat").checked=false;
	document.getElementById("grill").checked=false;
}

function nista(){
	document.getElementById("sve").checked=false;
}

function datumi(){
	beg=document.getElementById("pocetak").value;
	end=document.getElementById("kraj").value;
	
	if ((beg=="") || (end=="")){
		alert ('Niste unijeli sve potrebne datume!')
		return false;
		
	}
	
	return true;
	
}