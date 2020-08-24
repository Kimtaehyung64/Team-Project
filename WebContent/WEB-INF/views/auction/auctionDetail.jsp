<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<!-- <link rel="stylesheet" href="resources/css/auction/hyunstyle.css" /> -->
<!-- <link rel="stylesheet" href="resources/css/auction/ggg.css"/> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet" href="resources/css/styles.css?after"/>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>
/*  */
.dropdown-menu > li > a{
    font-size: 15px;
    color: #000000;
    background: #FFFFFF;
    font-family: 'Noto Sans KR',sans-serif;
    font-weight: bold;
}
/*  */
#new{
	font-family: 'Noto Sans KR',sans-serif;
}
.topArea{
	display: flex;
	margin-left: 380px;
}
.modal a.close-modal {
	top: 10px;
	right: 10px;
}
.search {
	float: left;
	margin-right: 20px;
}
.modal {
	left: 750px;
	height: 490px;
	margin-top: 230px;
}
.modal-body{
	margin-bottom: 20px;
}
.DownTitleContainer{
	margin-top: 10px;
}
.downTitle{
	font-size: 25px;
	margin-top: 20px;
	margin-bottom: 20px;
    text-align: center;
    width: 1170px;
    border-top: 2px solid #F25C05;
    border-bottom: 2px solid #F25C05;
    padding-top: 5px;
    padding-bottom: 5px;
    margin-left: 380px;
}

em{
	font-style: normal;
	color: #F25C05;
}
.titleContainer{
	border-bottom: 1px solid #E6E6E6;
	margin-bottom: 10px;
}
.leftside{
    width: 580px;
    border: 1px solid #E6E6E6;
    border-radius: 5px;
    margin-right: 20px;
}
.imageTable{
	margin-top: 10px;
}
.mainImage{
	margin-left: 20px;
	margin-top: 5px;
	width: 540px;
	height: 390px;
}
.subImage{
	width: 128px;
	height: 128px;
	margin-top: 10px;
	margin-right: 5px;
	margin-bottom: 20px;
}
.subImageTable{
	width: 550px; 
	height: 110px;
	margin-left:20px;
}
.rightTitle{
	font-size: 25px;
	text-align: center;
	width: auto;
	margin-top: 3px;
}
.rightside{
	width: 570px;
	border: 1px solid #E6E6E6;
    border-radius: 5px;
    height: 565px;
}
.rightUpTable{
	text-align: center;
	width: 550px;
	font-size: 20px;
	border: 1px solid #E6E6E6;
	margin-left: 10px;
}
.rightUpTable th{
	width: 200px;
	border-bottom: 1px solid #E6E6E6;
}
.rightUpTable td{
	border-bottom: 1px solid #E6E6E6;
}
.rightUpTable em{
	font-style: normal;
	color: #F25C05;
	font-size: 13px;
}
.rightDownTable{
	text-align: center; 
	margin-top: 10px;
	margin-left: 10px;
	width: 550px;
	font-size: 20px;
	border: 1px solid #E6E6E6;
}

.rightDownTable th, .rightDownTable td{
	border-bottom: 1px solid #E6E6E6;
} 

.rightDownTable tr:nth-child(2),.rightDownTable th:nth-child(2){
	border-bottom: 1px solid #E6E6E6;
}

.tableBorder{
	border-top: 1px solid #E6E6E6;
	margin-top: 10px;
}
.tableModalArea{
	height: 70px;
	padding-top: 5px;
}
.button3{
	font-size: 25px;
	padding: 4px 190px 4px 190px;
}
a:hover{
	text-decoration: none;
}
.fa-coins{
	color: #FFBF00;
}
.button3:hover{
	border: 2px solid #FFBF00;
}
.descriptionContainer{
	margin-bottom: 20px;
}
.descriptionArea{
	font-size: 15px;
	width: 1174px;
	height: auto;
	margin-left: 378px;
	padding: 20px;
}
a.disabled{
	pointer-events: none;
  	cursor: default;
}

/* modal */
.modalTable{
	font-size: 20px;
	width: 100%;
}
.modalTitle{
	font-size: 25px;
	text-align: center;
	width: auto;
	margin-top: 10px;
}
.modalTop{
	border-bottom: 1px solid #E6E6E6;
}
.modalText{
	display: flex;
	border-bottom: 1px solid #E6E6E6;
}
.modalText > p:first-child {
	width: 150px;
	margin-right: 10px;
	margin-bottom: 0px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-right: 1px solid #E6E6E6;
	font-weight: bold;
}
.modalText > p:nth-child(2) {
	text-align: center;
	padding-top: 10px;
	padding-bottom: 10px;
	margin-bottom: 0px;
	width: 260px;
}
#ipprice{
	height: 30px;
}
.modal-bottom{
	display: flex;
}
.modal-bottom > .button3{
	width: 205px;
	padding: 10px;
	font-size: 18px;
	font-weight: bold;
	margin-left: 10px;
}
.modal-bottom > .button4{
	width: 205px;
	padding: 10px;
	font-size: 18px;
	font-weight: bold;
	padding-left: 75px;
	margin-left: 10px;
	cursor: pointer;
}
.fa-times{
	color: #FF0000;
}
</style>
	<input type="hidden" value="${user.dname}">
	<input type="hidden" value="${user.aid}">
	<div class="titleContainer">
		<p class="downTitle">
			<em>${result.subject}&nbsp;[${result.yongdo}]</em> ${result.addr}
		</p>
	</div>
	
	<div class="topArea">
	<!-- 왼쪽 부분 테이블 영역 -->
		<div class="leftside">
			<table class="imageTable">
				<tr>
					<td rowspan="11">
						<div id="target" class="bul">
							<img src="img/${result.wimage}"onerror="this.src='img/noimg.jpg'" class="mainImage" id="main1">
						</div>
						<table class="subImageTable">
							<tr>
								<td>
									<img src="img/${result.wimage}" class="subImage"onerror="this.src='img/noimg.jpg'">
								</td>
								<td>
									<img src="img/${result.imagea}" class="subImage" onerror="this.src='img/noimg.jpg'">
								</td>
								<td>
									<img src="img/${result.imageb}" class="subImage"onerror="this.src='img/noimg.jpg'">
								</td>
								<td>
									<img src="img/${result.imagec}" class="subImage"onerror="this.src='img/noimg.jpg'">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	<!-- 왼쪽 부분 테이블 영역 -->
	
	<!-- 오른쪽 부분 테이블 영역 -->
	<div class="rightside">
		<div class="titleContainer">
			<p class="rightTitle">경매물건정보</p>
		</div>	
		<table class="rightUpTable">
			<tbody>
				<tr>
					<th><div class="C">물건번호</div></th>
					<td><div class="C Bold">
							<span class='point_blueB'>${result.anum}</span>
						</div></td>
				</tr>
				<tr>
					<th><div class="C">용도</div></th>
					<td><div class="C">${result.yongdo}</div></td>
				</tr>
				<tr>
					<th><div class="C">건물면적<em>(단위 : ㎡)</em></div></th>
					<td><div class="C">${result.bweight}</div></td>
				</tr>
				<tr>
					<th><div class="C">토지면적<em>(단위 : ㎡)</em></div></th>
					<td><div class="C">${result.tweight}</div></td>
				</tr>
				<tr>
					<th><div class="C">남은기간</div></th>
					<td><div class="C timer"></div></td>
				</tr>
				<tr>
					<th class="border0">
						<div class="C">조회수</div>
					</th>
					<td class="border0"><div class="C">${result.hit}</div></td>
				</tr>
			</tbody>
		</table>
		<p class="tableBorder"></p>
			<table class="rightDownTable">
				<tr>
					<th>판매자 ID</th>
					<td>${result.bid}</td>
				</tr>
				<tr>
					<th>현재가</th>
					<td style="color: blue; font-weight: 900">${result.hprice}원</td>
				</tr>
				<tr>
					<td class="tableModalArea" colspan="2">
						<a href="#ex1" rel="modal:open" class="button3" id="sal"><i id="modalIcon" class="fas fa-coins"></i>&nbsp;입찰하기</a>
					</td>
				</tr>
			</table>
		</div>
	<!-- 오른쪽 부분 테이블 영역 -->
	</div>
<div class="descriptionContainer">	
	<!-- 하단 설명 영역 -->
	<div class="DownTitleContainer">
		<p class="downTitle">물품 설명</p>
	</div>
	<div class="descriptionArea">
			${result.text}
	</div>
	
	<div class="DownTitleContainer">
		<p class="downTitle">부가정보</p>
	</div>
	<div class="descriptionArea">
			${result.managepee}
	</div>
	
	<div class="DownTitleContainer">
		<p class="downTitle">개발 계획</p>
	</div>
	<div class="descriptionArea">
			${result.bplan}
	</div>
	<!-- 하단 설명 영역 -->
</div>	
	<div id="ex1" class="modal">
		<div class="modal-body">
			<div class="modalTable" id="sellCreditTable">
				<div class="modalTop">
					<p class="modalTitle">물품내용</p>
				</div>
				<div>
					<div class="modalText">
						<p>판매자</p>
						<p id="1">${result.bid}</p>
					</div>
					<div class="modalText">
						<p>입찰자</p>
						<p id="2">${user.aid}</p>
					</div>
					<div class="modalText">
						<p>남은기간</p>
						<p class="timer"></p>
					</div>
					<div class="modalText">
						<p>입찰단위</p>
						<p id="3">${result.ipdanwe}</p>
					</div>
					<div class="modalText">
						<p>현재가</p>
						<p id="4" style="color: blue">${result.hprice}</p>
					</div>
					<div class="modalText">
						<p>입찰금액</p>
						<p id="5"><input type="number" name="ipprice" id="ipprice" min="0" step="${result.ipdanwe}"></p>
					</div>
				</div>
			</div>
		</div>
		<div class="modal-bottom">
			<button onclick="test();" class="button3" data-dismiss="modal" id="click"><i id="modalIcon" class="fas fa-coins"></i>&nbsp;입찰하기</button> 
			<a class="button4" data-dismiss="modal" rel="modal:close"><i id="modalIcon" class="fas fa-times"></i>&nbsp;취소</a>
		</div>
	</div>
<input type="hidden" id="valtest" value="${result.htprice}">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>

// --- 숫자의 콤마를 제거하는 함수
function removeComma(str){	
	n = parseInt(str.replace(/,/g,""));
	return n;
}

$(function(){
	$('#ipprice').attr('min',removeComma($('#4').text()));	
});
// --- 숫자의 콤마를 제거하는 함수

function test(){
	var ipprice = $("#ipprice").val();
		ipprice = Number(ipprice);
	var ipnum = "${result.ipnum}";
	var bid = "${user.aid}";
	//var aid = "";
	var anum = "${result.anum}";
	var url = "?ipprice=" + ipprice + "&ipnum="+ipnum +"&bid="+bid
	//location = 'purchase'+url
	
	
	var numvv = $('#valtest').val();
	if(numvv >= $("#ipprice").val()){	
		alert('현재가보다 같거나 낮은 금액으로 입찰하실 수 없습니다.')
		$('#ipprice').focus();
	}else{
		fcmpush(ipnum);
		location = 'purchase'+url
		alert('성공적으로 입찰되었습니다!')
	}
};

function fcmpush(ipnum){
	$.ajax({
		url : "fcmcall?ipnum="+ipnum,
		type : "get" ,
		success : function(result) {
				console.log("pass");
		}
	});
}
	$(document).ready(function() {
		var $node = $('div').children();
		$('.subImage').click(function() {	
			$('#target img').attr('src', $(this).attr('src'));
			
		});
	});
	function close_pop(flag) {
		$('#ex1').hide();
	};
	
	$(function() {
		var ipprice = $("#ipprice").val();
		var bid = "${result.bid}";
		var name = "${user.aid}";
		ipprice = Number(ipprice);
	
		
		var countDownDate = new Date("${result.enddate}").getTime();
		// Get today's date and time
		var now = new Date().getTime();
		// Find the distance between now and the count down date
		var distance = countDownDate - now;
		// Update the count down every 1 second
		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
				/ (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		// Display the result in the element with id="demo"
		$(".timer").html(days + "일 " + hours + "시간 " + minutes + "분");
		// If the count down is finished, write some text
		if (distance < 0) {
			clearInterval(x);
			$(".timer").html("EXPIRED");
			$('#sal').text('경매 마감');
			$('#sal').addClass('disabled');
			event.stopPropagation();
		}else{
			if(bid == name){
				$('#sal').text('경매 불가');
				$('#sal').addClass('disabled');
				event.stopPropagation();
			}
		}
		
		var x = setInterval(function() {
			// Get today's date and time
			now = new Date().getTime();
			// Find the distance between now and the count down date
			distance = countDownDate - now;
			// Time calculations for days, hours, minutes and seconds
			days = Math.floor(distance / (1000 * 60 * 60 * 24));
			
			hours = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
		
			minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			// Display the result in the element with id="demo"
			$(".timer").html(days + "일 " + hours + "시간 " + minutes + "분");
			// If the count down is finished, write some text
			if (distance < 0) {
				clearInterval(x);
				$(".timer").html("EXPIRED");
			}
		}, 30000);
	})
</script>
<%@ include file="../include/footer.jsp"%>