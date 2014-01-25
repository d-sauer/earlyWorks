var xmlhttp=null;
function createXmlHttpRequestObject()
{
	var xmlHttp;
	try
	{
		xmlHttp=new XMLHttpRequest();
	}
	catch(e)
	{
		var XmlHttpVersions=new Array("MSXML2.XMLHTTP.7.0",
									"MSXML2.XMLHTTP.6.0",
									"MSXML2.XMLHTTP.5.0",
									"MSXML2.XMLHTTP.4.0",
									"MSXML2.XMLHTTP.3.0",
									"MSXML2.XMLHTTP",
									"Microsoft.XMLHTTP");
		for (var i=0; i<XmlHttpVersions.length && !xmlHttp; i++)
		{
			try
			{
				xmlHttp = new ActiveXObject(XmlHttpVersions[i]);
			}
			catch(e){}
		}
	}
	if (!xmlHttp)
		alert("Error creating XmlHttpRequest object.");
	else
		return xmlHttp;
}

function ajax(srvPg,objID){
		goajax(srvPg,objID,"get","","txt");
}
function korisnici(str){
	if(str.length==0){
		document.getElementById("korisniciTrazilica").innerHTML="";
		document.getElementById("korisniciTrazilica").style.border="0px";
		return;
	}
	var url="korisnici.php?akt=korisnikTrazi&str="+str;
	goajax(url,"korisniciTrazilica","get","","txt");
	document.getElementById("korisniciTrazilica").style.border="1px solid #A5ACB2";
}

function korisniciDetaljno(srvPg,objID){
	goajax(srvPg,objID,"get","","xml");
}
	
function ajde(forma,srvPg,objID){
	var str=vrijednostiForme(forma);
	goajax(srvPg,objID,"post",str,"txt");
}
function vrijednostiForme(fobj){
	var str="";
	for (var i=0; i<fobj.elements.length; i++){
		if (fobj.elements[i].type=="checkbox" || fobj.elements[i].type=="radio"){
			if(fobj.elements[i].checked==true){
				str+=fobj.elements[i].name+"="+escape(fobj.elements[i].value)+"&";
			}
		}else{
			str+=fobj.elements[i].name+"="+escape(fobj.elements[i].value)+"&";
		}
		
	}
	return str;
}

function goajax(srvPg,objID,metoda,str,resp){
	xmlhttp=createXmlHttpRequestObject();
	if (metoda=="get"){
		xmlhttp.open("get",srvPg);
		xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
		xmlhttp.setRequestHeader("Content-length", str.length);
		xmlhttp.setRequestHeader("Connection", "close");
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				if (resp=="txt"){
					var response=xmlhttp.responseText;
					document.getElementById(objID).innerHTML=response;
				}else{
					var response=xmlhttp.responseXML;
					procesXml(objID,response);
				}
			}
		}
		xmlhttp.send(null);
	}else if (metoda=="post"){
		xmlhttp.open("POST",srvPg,true);
		xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
		xmlhttp.setRequestHeader("Content-length", str.length);
		xmlhttp.setRequestHeader("Connection", "close");
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				if (resp=="txt"){
					var response=xmlhttp.responseText;
					document.getElementById(objID).innerHTML=response;
				}else{
					var response=xmlhttp.responseXML;
					procesXml(objID,response);
				}
			}
		}
		xmlhttp.send(str);
	}
}
function procesXml(objID,xmlResponse){
	
}

function izbObjekt(srvPg,objID){
	goajax(srvPg+"&id="+(document.getElementById("iObjekt").options[document.getElementById("iObjekt").selectedIndex].value),objID,"get","","txt");
}
