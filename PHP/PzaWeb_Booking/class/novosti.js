var swidth=200;

var sheight=280;

var sbcolor="#FFFFFF";

var sspeed=2;
var restart=sspeed;
rspeed=sspeed;
preload1 = new Image();
preload1.src = "slike/zvijezda.png";

function SetText(tekst) {	
wholemessage=tekst
start();
}




//-- begin: Scroller's Algorithm -->
function goup(){if(sspeed!=rspeed*8){sspeed=sspeed*2;restart=sspeed;}}
function godown(){if(sspeed>rspeed){sspeed=sspeed/2;restart=sspeed;}}
function start(){if(document.getElementById)ns6marquee(document.getElementById('slider'));else if(document.all)iemarquee(slider);else if(document.layers)ns4marquee(document.slider1.document.slider2);}function iemarquee(whichdiv){iediv=eval(whichdiv);iediv.style.pixelTop=sheight+"px";iediv.innerHTML=wholemessage;sizeup=iediv.offsetHeight;ieslide();}function ieslide(){if(iediv.style.pixelTop>=sizeup*(-1)){iediv.style.pixelTop-=sspeed+"px";setTimeout("ieslide()",100);}else{iediv.style.pixelTop=sheight+"px";ieslide();}}function ns4marquee(whichlayer){ns4layer=eval(whichlayer);ns4layer.top=sheight;ns4layer.document.write(wholemessage);ns4layer.document.close();sizeup=ns4layer.document.height;ns4slide();}function ns4slide(){if(ns4layer.top>=sizeup*(-1)){ns4layer.top-=sspeed;setTimeout("ns4slide()",100);}else{ns4layer.top=sheight;ns4slide();}}function ns6marquee(whichdiv){ns6div=eval(whichdiv);ns6div.style.top=sheight+"px";ns6div.innerHTML=wholemessage;sizeup=ns6div.offsetHeight;ns6slide();}function ns6slide(){if(parseInt(ns6div.style.top)>=sizeup*(-1)){ns6div.style.top=parseInt(ns6div.style.top)-sspeed+"px";setTimeout("ns6slide()",100);}else{ns6div.style.top=sheight+"px";ns6slide();}}
//-- end Algorithm -->