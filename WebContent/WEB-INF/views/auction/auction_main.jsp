<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_AuctionSubMenu.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<!-- <link rel="stylesheet" href="resources/css/auction/main/bootstrap.css"> -->
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script> 		
<style>
body {
  margin: 0;
  /* font-family: "Open Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"; */
  font-family: 'Noto Sans KR',sans-serif;
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
	background-image: url('resources/images/auction/2020-may-survey-end.jpg');
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

.select{
	margin-left: 5px;
	margin-right: 5px;
}

.btn{
	padding: 0.75rem 0.75rem;
	letter-spacing: 0.05rem;
}
.btn.btn-inactive{
	color: #A4A4A4;
}

.btn.btn-active{
	color: #000000;
}
.btn-group{
	display: inline;
	margin-top: 15px;
	font-size: 16px;
	font-family: 'Noto Sans KR',sans-serif;
}
.btn-group > a{
	color: #000000;
}
#searchtop{
    border: 1px solid gray;
    border-radius: 5px 5px 5px 5px;
    border-style: groove;
    width: 100%; 
    height: 60px;  
    padding: 10px;
}
</style>
</head>
<body>
	<div style="width: 1500px; margin: 80px auto;">
		<div>
			<section id="banner" class="swiper-container main-banner-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide banner-wrapper r1" style="cursor: pointer;" onclick="">
					</div>
					<div class="swiper-slide banner-wrapper r2" style="cursor: pointer;" onclick="">
					</div>
					<div class="swiper-slide banner-wrapper r3" style="cursor: pointer;" onclick="">
					</div>
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
				<div id="searchtop" name="searchtop">
					<div class="form-group" style="margin-top: 7px;">
						진행사항:<select class="form-control select" id="statussel"
							style="width: 100px; display: inline;">
							<option value="0">전체</option>
							<option value="1">신건</option>
							<option value="2">유찰</option>
							<option value="3">진행</option>
							<option value="4">낙찰</option>
						</select> 물건용도:<select class="form-control select" id="mulgun"
							style="width: 100px; display: inline;">
							<option value="0">전체</option>
							<option value="1">아파트</option>
							<option value="2">주택/빌라</option>
							<option value="3">상업/업무</option>
							<option value="4">공장/창고</option>
							<option value="5">토지</option>
							<option value="6">기타</option>
						</select>
						<form action="auctionMain" method="post" style="margin-top: -35px;">
      					<input class="btn btn-primary button1" id="searchBtn" style="float: right; " type="submit" value="검색"/>
      					<input class="form-control mr-sm-2" id="searchValue" name="searchValue" type="text" style="width: 200px;float: right;" placeholder="Search" value="${paging.searchValue}">
      					<select class="form-control select" id="searchType" name="searchType" 
							style="width: 100px;float: right;">
							<option value="0">제목</option>
							<option value="1">주소</option>
						</select>
						</form>
					</div>
				</div>
				<div id="datalisttop">
					<div class="btn-group" role="group" aria-label="Basic example" style="float: left;">
						<input type="button" id="lowpBtn" name="lowpBtn" class="btn btn-inactive" value="최저가순 ▲"/>
						<a>|</a>
						<input type="button" id="maeBtn" name="maeBtn" class="btn btn-inactive" value="매각기일순 ▲"/> 
						<a>|</a>
						<input type="button" id="hitBtn" name="hitBtn" class="btn btn-inactive" value="조회수순 ▲"/>
						<input type="hidden" id="sortindex" name="sortindex" value="${paging.sortindex}"/>
						<input type="hidden" id="sbid" name="sbid" value="${sbid}"/>
						<label id="sumres">(총
							<b>${paging.total}</b>건)
						</label>
					</div>
				</div>
				<div id="datalist" style="margin-top: 70px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col" style="text-align: center;">건물 이미지</th>
								<th scope="col">제목/물건용도/주소지/토지면적/건물면적/경매만료일</th>
								<th scope="col" colspan="2">시작가/현재가/유찰횟수</th>
								<th scope="col" style="text-align: center;">상태/등록일/조회수</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray; font-size: 1rem;">
							<%@ include file="auction_mainview.jsp"%>
						</tbody>
					</table>
				</div>
				<div style="width: 100%">
					<ul class="pagination pagination-lg" style="width:300px;margin: 0 auto;">
						<c:choose>
							<c:when test="${paging.startPage != 1 }">
								<li class="page-item"><a class="page-link"
									href="auctionMain?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}&searchType=${paging.searchType}&searchValue=${paging.searchValue}">&laquo;</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link"
									href="#">&laquo;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<li class="page-item active"><a class="page-link" href="#">${p}</a></li>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}&searchType=${paging.searchType}&searchValue=${paging.searchValue}">${p}</a></li>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage != paging.lastPage}">
								<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}&searchType=${paging.searchType}&searchValue=${paging.searchValue}">&raquo;</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link" href="#">&raquo;</a></li>
							</c:otherwise>
						</c:choose>
						<input type="hidden" value="${sbid}" id="aid">
					</ul>
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
		
		set_bantxt();
		//값세팅하기
		$('#searchType').val(${param.searchType});

		//alert($('#sortindex').val());
		if($('#sortindex').val()==='1'){
			$('#lowpBtn').val('최저가순 ▲');
			$('#lowpBtn').attr('class','btn btn-active')
		}else if($('#sortindex').val()==='2'){
			$('#lowpBtn').val('최저가순 ▼');
			$('#lowpBtn').attr('class','btn btn-active')
		}else if($('#sortindex').val()==='3'){
			$('#maeBtn').val('매각기일순 ▲');
			$('#maeBtn').attr('class','btn btn-active')
		}else if($('#sortindex').val()==='4'){
			$('#maeBtn').val('매각기일순 ▼');
			$('#maeBtn').attr('class','btn btn-active')
		}else if($('#sortindex').val()==='5'){
			$('#hitBtn').val('조회수순 ▲');
			$('#hitBtn').attr('class','btn btn-active')
		}else if($('#sortindex').val()==='6'){
			$('#hitBtn').val('조회수순 ▼');
			$('#hitBtn').attr('class','btn btn-active')
		}
		
		$('#statussel').val(${param.statussel});
		$('#mulgun').val(${param.mulgun});
		
		//소팅
		$('#lowpBtn').click(function(){
			$('#lowpBtn').attr('class','btn btn-outline-primary active')
			var lbta = $('#sortindex').val();
			if(lbta==='1'){
				location.href = "auctionMain?sortindex=2&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}else{
				location.href = "auctionMain?sortindex=1&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}
		});
		
		$('#maeBtn').click(function(){
			$('#maeBtn').attr('class','btn btn-outline-primary active')
			var lbtb = $('#sortindex').val();
			if(lbtb==='3'){
				location.href = "auctionMain?sortindex=4&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}else{
				location.href = "auctionMain?sortindex=3&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}
		});
		
		$('#hitBtn').click(function(){
			$('#maeBtn').attr('class','btn btn-outline-primary active')
			var lbtc = $('#sortindex').val(); 
			if(lbtc==='5'){
				location.href = "auctionMain?sortindex=6&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}else{
				location.href = "auctionMain?sortindex=5&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
			}
		});
		//진행사항/물건용도
		$('#statussel').change(function(){
			location.href ="auctionMain?sortindex="+$('#sortindex').val()+"&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
		});
		
		$('#mulgun').change(function(){
			location.href ="auctionMain?sortindex="+$('#sortindex').val()+"&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val()+"&searchType="+$('#searchType').val()+"&searchValue="+$('#searchValue').val();
		});
		
	});
	
	function apagemove(){
		if($('#sbid').val()===null||$('#sbid').val()===''){
			alert("로그인이 필요한 페이지 입니다");
			//location.href = "";
			return false;
		}else{
			location.href = "auctionAdd";
		}
	}
	
	var bantxt = {
			"r1" :
		        '<p class="bantxt" style="color:#70727f; left: 66%;"><span class="bantxt-bold">경매검색,원하는 물품을 검색 해보세요</span><br>'+
		            '<span class="bantxt-bold">전국 부동산 정보 수록</span><br>'+
		            '<span class="bantxt-bold"></span>'+
		        '</p>',
	        "r2" :
		        '<p class="bantxt" style="color:#70727f; left: 66%;"><span class="bantxt-bold">신규 오픈 감사 이벤트</span><br>'+
		            '<span class="bantxt-bold">8월 한달간 수수료 50% 감면!!</span><br>'+
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
	
	</script>
<%@ include file="../include/footer.jsp"%>
	