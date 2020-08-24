<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<link rel="stylesheet" href="resources/css/styles.css"/>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>
.modal-content{
	width: 800px;
	font-family: 'Noto Sans KR', sans-serif;
}
.modalServerImage{
	width: 240px;
	height: 200px;
	border: 2px solid #F25C05;
	margin-top: 10px;
}
.tableTitle{
	font-size: 40px;
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 40px;
	margin-bottom: 0px;
}
.table th{
	vertical-align: inherit;
	padding: 0px;
}
.tableContainer{
	display: flex;
	font-size: 17px;
}
.tableBody{
	display: flex;
    border-bottom: 1px solid #E6E6E6;
    margin-bottom: 5px;
    margin-top: 5px;
    border-top: 1px solid #E6E6E6;
}
.tableType{
	width: 250px;
	display: flex;
}
.smallTitle,.middleTitle,.bigTitle{
	margin-right: 10px;
	width: 70px;
	margin-bottom: 0px;
	background-color: #F8ECE0;
	text-align: center;
}
.smallContents{
	width: 190px;
	margin-bottom: 0px;
	text-align: left;
}
.middleContents{
	width: 300px;
	margin-bottom: 0px;
	text-align: left;
}
.bigContents{
	width: 690px;
	margin-bottom: 0px;
	text-align: left;
}
.modalButton{
	text-align: center;
}
.button3{
	padding: 5px 25px 5px 25px;
}
.button4{
	padding: 5px 20px 5px 20px;
}
</style>
<div class="modal-content">
	<p class="tableTitle">매물 정보</p>
	<div class="tableContainer" id="productdesc">
		<div class="table table-hover">
			<div class="tableBody">
				<div class="tableType">
					<p class="smallTitle">번호</p>
					<p class="smallContents">${result.atclno}</p>
				</div>
				<div class="tableType">
					<p class="smallTitle">종류</p>
					<p class="smallContents">${result.tradtpcd}</p>
				</div>
				<div class="tableType">
					<p class="smallTitle">중개인</p>
					<p class="smallContents">${result.rltrnm}</p>
				</div>
			</div>
			
			<div class="tableBody">
				<p class="bigTitle">설명</p>
				<p class="bigContents">${result.atclfetrdesc}</p>
			</div>
			
			<div class="tableBody">
				<p class="middleTitle">전용면적</p>
				<p class="middleContents">${result.spc1}/${result.spc2}</p>
				<p class="middleTitle">가격</p>
				<p class="middleContents">${result.prc}(단위:만원)</p>
			</div>
			<div class="tableBody">
				<p class="bigTitle">특징</p>
				<p class="bigContents">${result.taglist}</p>
			</div>
			<div class="tableBody">
				<p style="margin-left: 3px;">
					<img src="resources/images/commercial/gangdong1.jpg" class="modalServerImage">
				</p>
				<p style="margin-left: 15px; margin-right: 15px;">
					<img src="resources/images/commercial/gangdong2.jpg" class="modalServerImage">
				</p>
				<p>
					<img src="resources/images/commercial/gangdong3.jpg" class="modalServerImage">
				</p>
			</div>
		</div>
<!-- 		<div class="row centered" id="product" style="margin:0 auto;">
			<div>
				<img src="resources/images/commercial/gangdong1.jpg" class="modalServerImage">
			</div>
			<div>
				<img src="resources/images/commercial/gangdong2.jpg" class="modalServerImage">
			</div>
			<div>
				<img src="resources/images/commercial/gangdong3.jpg" class="modalServerImage">
			</div>
		</div> -->
	</div>
	<div class="modalButton">
		<button class="button3" onClick="location='estateDetail?num=${result.pdnum}'"><i class="fas fa-search-dollar"></i>&nbsp;자세히보기</button>
		<button class="button4" onClick="close_pop();"><i class="fas fa-door-open"></i>&nbsp;닫기</button>
	</div>
</div>
<script>
	var a = '${result.taglist}';
	var b = '${result.atclno}';
	var c = '${result.rltrnm}';
	
</script>