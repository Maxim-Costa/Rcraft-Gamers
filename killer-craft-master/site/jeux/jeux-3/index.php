<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Puissance 4</title>
<style>
body,input {margin:0;padding:0;font:14px Georgia,"Times New Roman",Times,serif;text-align:center;background:#040;color:#ffc860}
div {position:relative;margin:0;padding:0}
h1 {text-align:center;margin:30px 0 10px;padding:0;border:0;position:relative;left:+86px;color:red;font-size:28px}
h1 span {position:relative;top:-2px;left:0;background:transparent;color:#ffc860}
#tps {margin:0 auto;width:281px}
#paj {position:relative;top:0;left:0;width:39px;height:39px}
img{display:block;margin:0;border:0;width:39px;height:39px}
table {border-collapse:collapse;margin:0}
table td {border:1px solid #ffc860}
p {text-align:center;margin:10px;padding:0}
#pds {margin:0 auto;height:60px;width:450px}
#msg {margin:10px auto;font-weight:bold}
a {color:red;text-decoration:none}
</style>
</head>
<body>
	<h1>Puissance 4<span id="ttr">Puissance 4</span></h1>
	<div id="tps"></div>
	<div id="pds"></div>
	<p>L’utilisation de Google Chrome, d’Opera, de Safari ou de FireFox permet d’éviter les avertissements d’Internet Explorer</p>
<script type="text/javascript">
function $(i){return document.getElementById(i)}
$('ttr').style.left=-($('ttr').offsetWidth+2)+'px';
pr=[];
pr[0]=new Image();pr[0].src="data:image/gif;base64,R0lGODlhJwAnALMAAP///wAAAP///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAAAALAAAAAAnACcAAAQqEMhJq7046827/2AojmRpnmiqrmzrvnAsz3Rt33iu73zv/8CgcEgsGmkRADs=";
pr[1]=new Image();pr[1].src="data:image/gif;base64,R0lGODlhJwAnAJECADYDLv///////wAAACH5BAEAAAIALAAAAAAnACcAAAJ+lI8Yy5wPo2i0ynuqthju33QKSDpdiS5Yyl5sCkQvGyfz+9z0qMNZ7zMAYbHhzuhDogAAZYnpJEGjnylVY71SsloGc9L1fsPiIjnwFYaZNXCXzaPCbfJ5XGmn49MyJLsd0dTzByghOEMocnD49KeYwFZFWPhoMHnJVxmIqVgAADs=";
pr[2]=new Image();pr[2].src="data:image/gif;base64,R0lGODlhJwAnAJECADYDLgAAAP///wAAACH5BAEAAAIALAAAAAAnACcAAAJ+lI8Yy5wPo2i0ynuqthju33QKSDpdiS5Yyl5sCkQvGyfz+9z0qMNZ7zMAYbHhzuhDogAAZYnpJEGjnylVY71SsloGc9L1fsPiIjnwFYaZNXCXzaPCbfJ5XGmn49MyJLsd0dTzByghOEMocnD49KeYwFZFWPhoMHnJVxmIqVgAADs=";
function addEvent(o,t,f){
	if (o.addEventListener){o.addEventListener(t,f,false);return true}
	else if (o.attachEvent){var r=o.attachEvent("on"+t,f);return r}
}
/* function oteEvent(o,t,f){
	if (o.removeEventListener){o.removeEventListener(t,f,false);return true}
	else if (o.detachEvent){var r=o.detachEvent("on"+t,f);return r}
}*/
var chn='<div id="paj"><img id="mgj" src="'+pr[0].src+'"></div>';
	chn+='<table id="tbj" cellpadding="0" cellspacing="0">';
for (i=0;i<42;i++){
	if (i%7==0) chn+='<tr>';
	chn+='<td><img id="c'+(1+i%7+(6-Math.floor(i/7))*8)+'" width="39" height="39" src="'+pr[0].src+'"></td>';
	if (i%7==6) chn+='</tr>'}
$('tps').innerHTML=chn+'</table>';
var msk="Choississez une colonne en déplaçant la souris sur le jeu puis cliquez sur la bonne !";
chn='<p><a href="javascript:if (okm && !okg && !okf) {moi=3-moi;trt=3-trt;chgTrt()}">Changer le trait</a>';
chn+='&nbsp;&nbsp;<a href="javascript:Jeu.cpr(-1)">«</a>';
chn+='<span id="prf" class="cpf"></span><a href="javascript:Jeu.cpr(1)">»</a>&nbsp;&nbsp;';
chn+='<a href="javascript:if (okm) newJeu()">Nouvelle partie</a></p>';
chn+='<div id="msg">'+msk+'</div>';
$('pds').innerHTML=chn;
for (i=0;i<42;i++) {k=1+i%7+(6-Math.floor(i/7))*8;
 	ok=addEvent($('c'+k),"mouseover",suiSrs);
 	ol=addEvent($('c'+k),"click",clcSrs)}
var pav=40,pah=40,trt=1,moi=2;
var xxx,yyy,idv,csj,cps,okm,okc,okg,okf,trc,dsc,tmr,lfo,cga,cgb;
var Jeu={j:new Array(65),d:new Array(1,7,8,9),c:new Array(42),v:new Array(42),b:new Array(42),l:new Array(4),
  pmo:6,prf:null,pmx:null,cga:null,cgb:null,tmr:null,
 	tmo:function(){Jeu.tmr=-(new Date().getTime())},
  tmf:function(){Jeu.tmr+=(new Date().getTime())},
	nwp:function(){for (var i=0;i<65;i++)
		if (i<8 || i%8==0 || 56<i) Jeu.j[i]=3;else {Jeu.j[i]=0;$("c"+i).src=pr[0].src}},
	vls:function(){if (Jeu.pmx<=Jeu.prf) {Jeu.v[Jeu.prf]=Jeu.evl();return true}
		var cp=0,ch=12,cs,ic,cj,sg,ok,vp,ps=new Array(7),og=false,i=0,j=-1;;
		while (i<4 && !og) {cs=ch+i*j;while (cs<56 && Jeu.j[cs]!=0)cs+=8;
			if (cs<56) {ps[cp++]=cs;og=Jeu.ggn(cs,trt)};if(0<(j=-j))i++}
		sg=3-(trt<<1);if (og) {Jeu.v[Jeu.prf]=sg*((2<<13)-Jeu.prf);Jeu.b[Jeu.prf]=cs;return true}
		if (parseInt(cps+Jeu.prf)==41) {Jeu.v[Jeu.prf]=0;Jeu.b[Jeu.prf]=ps[0];return true}
		if (Jeu.prf<2) {Jeu.v[Jeu.prf]=-sg*(2<<15)} else {Jeu.v[Jeu.prf]=Jeu.v[Jeu.prf-2]}
		for (ic=0;ic<cp;ic++) {cj=ps[ic];
			Jeu.j[cj]=trt;trt=3-trt;Jeu.prf++;ok=Jeu.vls();Jeu.prf--;trt=3-trt;Jeu.j[cj]=0;
			if (ok) {vp=Jeu.v[Jeu.prf+1];if (0<Jeu.prf && sg*vp>=Jeu.v[Jeu.prf-1]*sg) return false;
				if (sg*vp>Jeu.v[Jeu.prf]*sg) {Jeu.v[Jeu.prf]=vp;Jeu.b[Jeu.prf]=cj}}}
		return true},
	evl:function (){var a,h;Jeu.l[1]=0;Jeu.l[2]=0;
		for (var a=1;a<8;a++) {h=48;while (Jeu.j[a+h]==0) h-=8;if (7<h) Jeu.alg(a+h,Jeu.j[a+h]);
		while (15<h && (Jeu.j[a+h-1]==0 || Jeu.j[a+h+1]==0)) {h-=8;Jeu.alg(a+h,Jeu.j[a+h])}}
		return (Jeu.l[1]-Jeu.l[2])},
  alg:function (cs,tr){var i=0,n,m,u,v,p;
		while (i<4) {p=0;
			n=1;while ((0==(u=Jeu.j[cs-Jeu.d[i]*n]) || u==tr) && n<4){if (u==tr) p++;n++};
			m=1;while ((0==(v=Jeu.j[cs+Jeu.d[i]*m]) || v==tr) && m<4){if (v==tr) p++;m++};
		if (0<n-4+m) Jeu.l[tr]+=n-4+m+p;i++};
	return},
	ggn:function (cs,tr,mn){var ok=false,n,m,s,t;
		n=0;while (n<4 && !ok) {t=Jeu.d[n];m=0;
			s=cs-t;while (Jeu.j[s]==tr) {s-=t;m++}
			s=cs+t;while (Jeu.j[s]==tr) {s+=t;m++}
			n++;ok=(2<m)}
		if (ok && mn) {cga=s-t;cgb=s-4*t}
		return ok},
	cpr:function(nv){var p=Jeu.pmo-(-nv);if (3<p) {Jeu.pmo=p;$('prf').innerHTML='&nbsp;&nbsp;Niveau&nbsp;'+p+'&nbsp;&nbsp;'}}
}
Jeu.cpr(0);newJeu();

function newJeu(){clearTimeout(tmr);clearInterval(dsc);
	okg=false;okf=false;$('msg').innerHTML=msk;Jeu.nwp();
	cps=0;trt=2;chgTrt()
}
function chgTrt(){xxx=4;trt=3-trt;curSor(trt);
	$('paj').style.left=(pah*(xxx-1)+1)+'px';$('paj').style.top=0+'px';
	$('mgj').src=pr[trt].src;
	if (trt==moi) {tmr=setTimeout('vlrJeu()',7);$('msg').innerHTML='Je réfléchis...'}
	else {okm=true;okc=false;if (cps) $('msg').innerHTML='À vous de jouer...'}
}
function vlrJeu(){
	Jeu.prf=0;Jeu.pmx=parseInt(Jeu.pmo+(cps*cps>>7));
	Jeu.tmo();Jeu.vls();Jeu.tmf();xxx=Jeu.b[0]%8;
	$('paj').style.left=(pah*(xxx-1)+1)+'px';
	dplPnj();
}
function suiSrs(e){var f=e?e:window.event,n;
  if (!okm) return;if (!(t=f.target)) t=f.srcElement;
	if (t.id.substring(0,1)!='c') return
	n=t.id.substr(1)%8;
	if (n!=xxx) {$('paj').style.left=(pah*(n-1)+1)+'px';xxx=n}
}
function clcSrs(e){
  if (okc) return
	okc=true;suiSrs(e);dplPnj()
}
function curSor(tr){
 if (tr==moi) $('tps').style.cursor='wait';
	else $('tps').style.cursor='pointer'
}
function dplPnj(){
	yyy=0;while (0==Jeu.j[8*(6-yyy)+xxx]) yyy++;
	if (0<yyy) {okm=false;$('paj').onmousemove=null;$('paj').onclick=null;
  	$('tbj').onmousemove=null;$('tbj').onclick=null;
		csj=((7-yyy)<<3)+xxx;
		Jeu.j[csj]=trt;Jeu.c[cps++]=csj;
		idv=1;dsc=setInterval('dscPnj()',20)}
	else okc=false
}
function dscPnj(){$('paj').style.top=(parseInt($('paj').style.top)+parseInt(idv))+'px';
	if (pav*yyy-idv<parseInt($('paj').style.top)) {clearInterval(dsc);
		$("c"+csj).src=pr[trt].src;$("mgj").src=pr[0].src;
		if (okg=Jeu.ggn(csj,trt,true)) {trc=trt,okm=true;$('msg').innerHTML=(trt==1?'Blanc':'Noir')+' gagne !';clgFin()}
		else if (okf=cps==42) {okm=true;$('tps').style.cursor=''} else chgTrt()}
	idv+=2
}
function clgFin(){var chn=(2<trc)? pr[0].src:pr[trc].src;
	$("c"+cga).src=chn;$("c"+parseInt((2*cga+cgb)/3)).src=chn
	$("c"+parseInt((cga+2*cgb)/3)).src=chn;$("c"+cgb).src=chn
	trc=5-trc;tmr=setTimeout('clgFin()',300)
}

</script>
</body>