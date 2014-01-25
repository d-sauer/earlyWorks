function oznakaDodaj(){
	var n=document.getElementById("Sbrsoba").value;
	var t="<table>";
	if (n!=0 || n!=''){
		for(var i=0;i<n;i++){
			t+="<tr><td>Oznaka:"+(i+1)+"</td><td><input type=\"text\" name=\"Soznaka"+(i+1)+"\"></td>";
		}
		t+="</table>";
		document.getElementById("Soznakan").innerHTML=t;
		showElement('Sostalo');
	}
}
function showElement(id){
	if(document.getElementById(id).style.display='none'){
		document.getElementById(id).style.display='block';	
	}else{
		document.getElementById(id).style.display='none';	
	}
}

function startUpload(){
	 document.getElementById('f1_upload_process').style.visibility = 'visible';
	 return true;
}

function stopUpload(success){
    var result = '';
    if (success == 1){
     document.getElementById('result').innerHTML =
  	  '<span class="msg">The file was uploaded successfully!<\/span><br/><br/>';
	  	var t=setTimeout("ajax('smjestaj.php?akt=objIzbor&pakt=3','glavna')",2000);
    }else {
     document.getElementById('result').innerHTML =
     '<span class="emsg">There was an error during file upload!<\/span><br/><br/>';
    }
	 document.getElementById('f1_upload_process').style.visibility = 'hidden';
		      return true;
}
