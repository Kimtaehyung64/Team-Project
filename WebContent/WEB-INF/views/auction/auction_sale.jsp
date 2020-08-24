<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_AuctionSubMenu.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<!-- <link rel="stylesheet" href="resources/css/auction/main/bootstrap.css"> -->
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style>
body {
	margin: 0;
	/* font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"; */
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #FCFCFC;
}
/* BANNER */
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

.r1 {
	background-color: #f5f6f8;
	background-image: url('resources/images/auction/banner1.png');
}

.r2 {
	background-color: #f5f6f8;
	background-image:
		url('resources/images/auction/2020-may-survey-end.jpg');
}

.r3 {
	background-color: #f5f6f8;
	background-image: url('resources/images/auction/2020-jun-survey.jpg');
}

.banner-button-prev {
	left: 0;
}

.banner-button-next {
	right: 0;
}

.bantxt {
	position: absolute;
	top: 50%;
	left: 63%;
	width: auto;
	font-size: 20px;
	font-weight: 300;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	white-space: nowrap;
}

.bantxt-bold {
	font-size: 22px;
	font-weight: 600;
}

.bantxt-button {
	position: relative;
	display: inline-block;
	padding: .4em 1em;
	margin-top: 10px;
	overflow: hidden;
	font-size: 16px;
	cursor: pointer;
	border: 1px solid rgba(51, 51, 51, .8);
}

.bantxt-button span {
	z-index: 2;
}

.bantxt-button:after {
	position: absolute;
	top: -50px;
	left: -75px;
	z-index: -1;
	width: 50px;
	height: 155px;
	content: "";
	-webkit-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-moz-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-o-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-webkit-transform: rotate(35deg);
	-moz-transform: rotate(35deg);
	-ms-transform: rotate(35deg);
	-o-transform: rotate(35deg);
	transform: rotate(35deg);
	opacity: .2;
	background: #fff;
}

.bantxt-button:hover:after {
	left: 120%;
}

.swiper-button-next {
	opacity: 0.2;
}

.swiper-button-prev {
	opacity: 0.2;
}

.swiper-arrow-button {
	width: 15px;
	height: 28px;
	background-size: 15px 28px;
	margin-top: 0;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	opacity: 0.7;
	border: none;
	background: none;
	background-repeat: no-repeat;
	background-position: center;
	padding: 2em;
}

.swiper-arrow-button:hover {
	opacity: 1;
}

.swiper-arrow-button-prev {
	background-image: url(resources/images/auction/icon/1prev.png);
}

.swiper-arrow-button-next {
	background-image: url(resources/images/auction/icon/1next.png);
}

.select {
	margin-left: 5px;
	margin-right: 5px;
}

.btn {
	padding: 0.75rem 0.75rem;
	letter-spacing: 0.05rem;
}

.btn.btn-inactive {
	color: #A4A4A4;
}

.btn.btn-active {
	color: #000000;
}

.btn-group {
	display: inline;
	margin-top: 15px;
	font-size: 16px;
	font-family: 'Noto Sans KR', sans-serif;
}

.btn-group>a {
	color: #000000;
}

#searchtop {
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	width: 100%;
	height: 60px;
	padding: 10px;
}
.input{
margin-left: 5px;
    margin-right: 5px;
    text-align: left;
    font-size: 10;
    font-size: 20px;
    font-weight: bold;
    width: 450px;

}
</style>
</head>
<body>
	<div style="width: 1500px; margin: 80px auto;">
		<div>
			<section id="banner" class="swiper-container main-banner-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide banner-wrapper r1"
						style="cursor: pointer;" onclick=""></div>
					<div class="swiper-slide banner-wrapper r2"
						style="cursor: pointer;" onclick=""></div>
					<div class="swiper-slide banner-wrapper r3"
						style="cursor: pointer;" onclick=""></div>
				</div>
				<!-- banner arrow -->
				<button
					class="swiper-button-next swiper-arrow-button swiper-arrow-button-next banner-button-next"></button>
				<button
					class="swiper-button-prev swiper-arrow-button swiper-arrow-button-prev banner-button-prev"></button>
				<!-- banner bullets -->
				<div class="swiper-pagination banner-bullet"></div>
			</section>
		</div>
		<div id="body" style="width: 100%; height: 100%; margin: auto;">
			<div id="leftcontents"
				style="position: relative; width: 80%; margin: auto;">
				
				<div id="datalist" style="margin-top: 70px;">
				<input type="button" id="sale" name="sale" style="font-size: 20px; font-weight: bold; width: 460px; border: 2px solid #F27405;}"
						class="form-control select" value="${user.aid}님의 판매현황 입니다." />
					<table class="table table-hover" style="margin-top: 30px;">
						<thead>
							<tr>
								<th scope="col" style="text-align: center;">건물 이미지</th>
								<th scope="col">제목/물건용도/주소지/토지면적/건물면적/경매만료일</th>
								<th scope="col" colspan="2">시작가/현재가</th>
								<th scope="col" style="text-align: center;">상태/등록일/조회수</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray; font-size: 1rem;">
							<!-- sale view 나의 판매 현황을 보기 위 한 foreach문 -->
							<c:forEach var="slist" items="${list}">
								<tr class="sales">
									<th id="colchk1" scope="row" style="width: 130px;"><img
										src="img/${slist.wimage}" onerror="this.src='img/noimg.jpg'"
										style="width: 120px; height: 120px; float: left;"></th>
									<td id="coltd1_2" style="width: 630px;"><label
										id="t1addr1_1"><a
									
											href="auctionDetail?anum=${slist.anum}"
											style="color: black;"> <input type="hidden" value=""
												name="ipnum" id="ipnum"> <span id="mainsubject">${slist.subject}</span><br />
												<b>[${slist.yongdo}]</b><br />${slist.addr}</a></label> <br /> <label
										id="t1addr1_2" style="font-size: 11pt; height: 6px;">토지면적
											${slist.tweight}㎡/건물면적 ${slist.bweight}㎡</label><br /> <label
										id="t1addr1_3" style="font-size: 11pt; height: 6px;"><b>경매만료기일</b>&nbsp;&nbsp;<span
											style="color: blue; font-weight: bold;">${slist.enddate}</span></label></td>
									<td style="padding-left: 0px; padding-right: 0px;"><span
										class="badge badge-primary" style="font-size: 8pt;">시작가</span><br />
										<span class="badge badge-info" style="font-size: 8pt;">현재가</span></td>
									<td style="padding-left: 3px;" id="price"><b>${slist.ideprice}</b><br />
										<span style="color: blue;"><b>${slist.hprice}</b></span></td>
									<td style="text-align: center;">${slist.status}<br />${slist.indate}<br />${slist.anum}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	</div>

	<script>
	$(document).ready(function() {
		
		//세션값 받기 
		
		//alert(${param.searchType});
		//ajaxjason3();
		
		var swiper = new Swiper('.main-banner-container', {
			effect : 'fade',
			fadeEffect : {
				crossFade : true
			},
			speed : 700,
			centeredSlides : true,
			loop : true,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false
			},
			navigation : {
				nextEl : '.banner-button-next',
				prevEl : '.banner-button-prev',
			},
			pagination : {
				el : '.banner-bullet',
				type : 'bullets',
				clickable : true,
			},
		});
	});
	
/* 	function apagemove(){
		if($('#sbid').val()===null||$('#sbid').val()===''){
			alert("로그인이 필요한 페이지 입니다");
			//location.href = "";
			return false;
		}else{
			location.href = "auctionAdd";
		}
	}
	 */
	var bantxt = {
			"r1" :
		        '<p class="bantxt" style="color:#70727f; left: 66%;"><span class="bantxt-bold">경매검색,원하는 물품을 검색 해보세요</span><br>'+
		            '<span class="bantxt-bold">전국 부동산 정보 수록</span><br>'+
		            '<span class="bantxt-bold"></span>'+
		        '</p>',
	        "r2" :
		        '<p class="bantxt" style="color:#70727f; left: 66%;"><span class="bantxt-bold">신규 오픈 감사 이벤트</span><br>'+
		            '<span class="bantxt-bold">6월 한달간 수수료 50% 감면!!</span><br>'+
		            '<span class="bantxt-bold"></span>'+
		        '</p>',
			"r3" :
		        '<p class="bantxt" style="color:#70727f; left: 20%;"><span class="bantxt-bold">경매물품 실시간 등록가능</span><br>'+
		            '<span class="bantxt-bold">전국 최대 부동산 매매 거래</span><br>'+
		            '<span class="bantxt-bold"></span>'+
		        '</p>'
		};
	
	
	function set_bantxt() {
		$.each(bantxt, function(i, v) {
			$('.' + i).append(v);
		});
	}
	function loginChk(){
		var aid = $("#aid").val();
		if (aid===null || aid === ""){
			alert("로그인하세요.")
		}else{
			location = "auction_sales?aid="+aid;
		}
	}
	
	</script>
	<%@ include file="../include/footer.jsp"%>