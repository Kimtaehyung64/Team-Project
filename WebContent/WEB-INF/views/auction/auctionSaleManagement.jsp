	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header_index.jsp"%>

<link rel="stylesheet" href="resources/css/auction/hyunstyle.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/auction/ggg.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<%@ include file="../include/header_menu.jsp"%>

<style>
#banner {
	width: 100%;
	height: 300px;
	max-height: 300px;
	min-height: 300px;
	margin-top: 30px;
	margin-bottom: 50px;
}

.banner-wrapper {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: center;
}

.banner-inner {
	position: absolute;
	top: 0;
	left: 50%;
	width: 100%;
	height: 300px;
	-webkit-transform: translateX(-50%);
	-moz-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	-o-transform: translateX(-50%);
	transform: translateX(-50%);
}

.banner-button-wrapper {
	position: relative;
	width: 1200px;
	height: 100%;
	max-width: 1200px;
	margin: 0 auto;
}

.banner-bullet {
	bottom: 10px;
	left: 50%;
	z-index: 1;
}

.banner-bullet>span.swiper-pagination-bullet {
	width: 10px;
	height: 10px;
	margin: 0 5px;
}

.banner-bullet>span.swiper-pagination-bullet-active {
	background-color: #ea6946;
}
.modal a.close-modal {
	top: 0px;
	right: 0px;
}

.search {
	float: left;
	margin-right: 20px;
}

.modal {
	height: unset;
}
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
.footer {
    padding: 8rem 0;
}
</style>
<div id="new" class="collapse navbar-collapse"
	style="width: 1200px; margin: 0 auto; display: block;">
	<div style="margin-bottom: 60px;">
	
	</div>
	<div class="container default" style="border-bottom: 1px solid black;">
		<div class="row">
			<h2 class="fs-md col-sm-6" style="margin-top: 50px;">
				<strong>나의 판매 관리현황</strong>
			</h2>
			<div class="subSearch col-sm-6 text-right"></div>
		</div>
	</div>
	<div id="container" style="width: 100%; margin-top: 10px;">
		<div id="left" style="float: left; width: 48%;">
			<table style="margin-top: 10px;">
				<tr>
					<td rowspan="11">
						<div id="target" class="bul">
							<img src="img/${result.wimage}" id="main1" onerror="this.src='img/noimg.jpg'"
								style="width: 550px; margin: 0 auto;">
						</div>
						<table id="bul" style="width: 550px; height: 110px">
							<tr>
								<td style="width: 25%; float: left;"><img
									src="img/${result.wimage}" class="im" onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imagea}" class="im" onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imageb}" class="im" onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imagec}" class="im" onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								</tr>
						</table>
				</tr>
			</table>
		</div>
	</div>
	<div id="space" style="float: left; width: 4%;">
		<p></p>
	</div>
	<div id="right" style="float: left; width: 48%">
		<table id="tal"
					style="margin-top: 80px; text-align: center; width: 500px; height: 300px;">
					<h1>나의물건정보</h1>
					<tbody style="border-top: 1px solid black;">
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
							<th><div class="C">건물면적</div></th>
							<td><div class="C">${result.bweight}</div></td>
						</tr>
						<tr>
							<th><div class="C">토지면적</div></th>
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
	</div>
 	 <%--  <div
		class="card text-black bg-secondary my-6 py-4 text-center col-lg-12 bg-white">
		<h2>입찰자와 입찰 금액</h2>
	<table class="type09">
    <thead>
    <tr>
        <th scope="cols">입찰물건번호</th>
        <th scope="cols">입찰금액</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="mlist">
    <tr>
        <td scope="row">${mlist.ipnum}</td>
        <td>${mlist.ipprice}</td>
    </tr>
 
    </c:forEach>
    </tbody>
</table>
	</div>   --%>
	<div id="ex1" class="modal">
		<div class="modal-body">
			<table class="table-data" id="sellCreditTable" style="width: 100%;">
				<thead>
					<tr>
						<h2>물품내용</h2>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="2">판매자</th>
						<td colspan="2" id="1">${result.bid}</td>
					</tr>
					<tr>
						<th colspan="2">남은기간</th>
						<td colspan="2" class="timer"></td>
					</tr>
					<tr>
						<th colspan="2">입찰단위(만원)</th>
						<td colspan="2" id="3">${result.ipdanwe}</td>
					</tr>
					<tr>
						<th colspan="2">현재가</th>
						<td colspan="2" id="4">${result.hprice}</td>
					</tr>
					<tr>
						<th colspan="2">입찰금액</th>
						<td colspan="2" id="5"><input type="text" name="ipprice"></td>
					</tr>
				</tbody>
			</table>
		</div>
		
	</div>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>
	$(document).ready(function() {
		var $node = $('div').children();
		$('.im').click(function() {
			$('#target img').attr('src', $(this).attr('src'));
		});
	});
	function close_pop(flag) {
		$('#ex1').hide();
	};
	/* var i= 0;
	var menu =$('#bul > ul > li').length;
	var inter = setInterval(function() {
	if(i>= menu){
		i = 0;
	}
	$('#target img').attr('src',$('#bul > ul > li').eq(i).children().attr('src'));
	i++;
	}, 2000);
	$('#target img').attr('src',$(this).attr('src'));
	}); */
	$(function() {
		var countDownDate = new Date("${result.enddate}").getTime();
		// Get today's date and time
		var now = new Date().getTime();
		// Find the distance between now and the count down date
		var distance = countDownDate - now;
		// Update the count down every 1 second
		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		console.log(distance);
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
				/ (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		// Display the result in the element with id="demo"
		$(".timer").html(days + "일" + hours + "시간" + minutes + "분");
		// If the count down is finished, write some text
		if (distance < 0) {
			clearInterval(x);
			$(".timer").html("EXPIRED");
		}
		var x = setInterval(function() {
			// Get today's date and time
			now = new Date().getTime();
			// Find the distance between now and the count down date
			distance = countDownDate - now;
			// Time calculations for days, hours, minutes and seconds
			days = Math.floor(distance / (1000 * 60 * 60 * 24));
			console.log(days);
			hours = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			console.log(hours);
			minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			// Display the result in the element with id="demo"
			$(".timer").html(days + "일" + hours + "시간" + minutes + "분");
			// If the count down is finished, write some text
			if (distance < 0) {
				clearInterval(x);
				$(".timer").html("EXPIRED");
			}
		}, 30000);
	})
	
	
</script>

<%@ include file="../include/footer.jsp"%>
