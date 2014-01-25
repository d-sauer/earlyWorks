function ajaxUpit(reqUrl, divId, podaci, akcija, blankForm) {
	if(podaci!=null && podaci!=undefined && podaci.length!=0)
		podaci += "&";

	if(akcija!=null && akcija!=undefined && akcija.length!=0)
		podaci += "akcija=" + akcija;
	
	if(blankForm==undefined || blankForm==null || blankForm==false)
		podaci += getFormData();
	
	
	jQuery.ajax({url: reqUrl, 
				data: podaci, 
				type: 'POST',
				cache: false,
				success: function (html) { $('#' + divId).html(html); } 
				});
}

function getFormData() {
	var forma = document.forms['mform'];
	var str = "";
	for(var i=0; i < forma.length; i++) {
		var name = forma[i].name;
		if(name!=null && name!=undefined && name.length!=0) {
			if(forma[i].type=="checkbox" || forma[i].type=="radio")
				if(forma[i].checked==true)
					str += "&" + forma[i].name + "=on";
				else
					str += "&" + forma[i].name + "=off";
			else	
				str += "&" + forma[i].name + "=" + forma[i].value; 
		}
	}

	return str;
	
}


function toggle(el_id){
	$("#" + el_id).animate({"height": "toggle"}, { duration: 300 });
}

function popup_fav(element, raspored_id) {
	var top = element.y + element.clientWidth;
	var left = element.x;
	
	var pDiv = document.getElementById('ajax_menu_favorites');
	pDiv.style.top = top + 'px';
	pDiv.style.left = left + 'px';

	$("#ajax_menu_favorites").hide();
	$("#ajax_menu_favorites").animate({"height":"show"}, { duration: 300 });
	ajaxUpit('am_fav.php','ajax_menu_favorites','raspored_id=' + raspored_id);
}

function addToFav(group_id, raspored_id) {
	$("#ajax_menu_favorites").hide();
	ajaxUpit('am_fav.php','ajax_menu_favorites','raspored_id=' + raspored_id + '&group_id=' + group_id , 'addToFav');
	var img = document.getElementById("icon_favorites_" + raspored_id);
	img.src = "images/icon_favorites_da.gif";
}




