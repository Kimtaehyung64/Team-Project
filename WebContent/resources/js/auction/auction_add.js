$(document).ready(function(){
	$('#p_modal1').click(function(event) {
	    event.preventDefault();
	    $('#myModal2').modal({
	      fadeDuration: 250
	    });
	  });
	
	//에디터 호출
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: "ir1",
	 sSkinURI: "edit/SmartEditor2Skin.html",
	 fCreator: "createSEditor2"
	});
	
	//
	$('#runin').click(function() {
		var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
		alert($('#ir1').val());
	})
	
});
 
function jusopop(){
	var pop = window.open("jusopopup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
}	

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
document.getElementById("zipcode").value = zipNo; 
document.getElementById("addr1").value = roadFullAddr;
document.getElementById("addr2").value = addrDetail;
}