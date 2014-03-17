var pokazi = true;

var XMLHttpRequestObject = false;

      if (window.XMLHttpRequest) {
        XMLHttpRequestObject = new XMLHttpRequest();
      } else if (window.ActiveXObject) {
        XMLHttpRequestObject = new
          ActiveXObject("Microsoft.XMLHTTP");
      }

      function getData(dataSource, divID)
      {
        if(XMLHttpRequestObject) {
          var obj = document.getElementById(divID);
          XMLHttpRequestObject.open("GET", dataSource,true);

          XMLHttpRequestObject.onreadystatechange = function()
          {
             if (XMLHttpRequestObject.readyState == 4 &&
               XMLHttpRequestObject.status == 200) {
                 obj.innerHTML =
                   XMLHttpRequestObject.responseText;
				  
             }
           }

           XMLHttpRequestObject.send(null);
        }
      }
	  
function skri(koji){
	//document.getElementById(koji).style.display="none";
	document.getElementById(koji).innerHTML = "";

}

function pokazi(koji){
	//document.getElementById(koji).style.display="none";
	document.getElementById("skri"+koji).style.display = "none";

}


