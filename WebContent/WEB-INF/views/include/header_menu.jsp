<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<style>
.navbar.navbar-expand-lg.navbar-light.bg-light{
	border-bottom: 1px solid rgb(229, 229, 229);;
}
.header_main_right {
	color: black;
	font-size: 20px;
	font-weight: bold;
	border: 2px solid #D8D8D8;
	padding: 5px;
	border-radius: 15px;
	font-family: 'Noto Sans KR',sans-serif;
	margin-right: 5px;
}

.header_main_right:hover {
	color: black;
	border: 2px solid #F28705;
	padding: 5px;
	border-radius: 15px;
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

.mr-auto {
	color: black;
	font-size: 20px;
	font-weight: bold;
	margin-right: 10px;
	cursor: pointer;
	font-family: 'Noto Sans KR',sans-serif;
}
.nav-link:hover{
	text-decoration: none !important;
}
.collapse.navbar-collapse > ul:first-child{
	margin-left: auto !important;
}

.nav-item.service {
	margin-right: auto;
}
.nav-item,.nav-link {
	width: 150px;
	text-align: center;
}
.nav-link:hover{
	cursor: pointer;
}

.nav-item.dropdown {
	height: 60px;
	padding-top: 20px;
}

.navbar-light .navbar-nav .nav-link {
	color: black;
}

.navbar-light .navbar-nav .nav-link:hover, .navbar-light .navbar-nav .nav-link:focus
{
	color: #F28705;
}

.dropdown-menu {
	margin-top: -0.5px;
	z-index: 1030;
}

.dropdown-menu > li{
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 3px;
	cursor: pointer;
}

.dropdown-menu > li > a{
	background-color: white;
	color: black;
	font-family: 'Noto Sans KR',sans-serif;
	font-size: 1rem;
}

.dropdown-menu > li > a:hover{
	color: #F28705;
}
</style>
<body id="page-top">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 100px;">
		<a class="navbar-brand" href="/" style="margin-left: 20px; font-size: 40px; height:auto;font-family:'CookieRun Black',serif; font-weight: bold;" ><img
			style="width: 100px; height: 100px; margin-right: 20px; display: inline;"
			src="resources/assets/img/logo.png">꿀방</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor03" aria-controls="navbarColor03"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarColor03">
			<c:catch>
                	<c:choose>
                    	<c:when test="${empty user}">
                    	</c:when>
						<c:otherwise>	
							<ul class="navbar-nav mr-auto">
								<li class="nav-item addestate dropdown">
									<a class="nav-link" onclick="location.href='addestate'">매물 등록&nbsp;<i class="fas fa-file-upload"></i></a>
								</li>
							</ul>
						</c:otherwise>
				</c:choose>
            </c:catch>		
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown commercial" class="dropdown-toggle" data-toggle="dropdown">
				<a class="nav-link" onclick="analysisCheck('분석')">분석&nbsp;<i class="fas fa-store"></i></a>
					<ul class="dropdown-menu commercial">
          				<li><a href="#" onclick="analysisCheck('실거래가')">실거래가</a></li>
		                <li><a href="#" onclick="analysisCheck('뉴스')">뉴스</a></li>
        			</ul>
				</li>
			</ul>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown estate">
				<a class="nav-link" onclick="location.href='estateMain'">부동산&nbsp;<i class="fas fa-building"></i></a>
					<ul class="dropdown-menu estate">
          				<li><a href="#"  onclick="location.href='estateMain'">매물</a></li>
		                <li><a href="#"  onclick="location.href='realprice'">실거래가</a></li>
		                <li><a href="#"  onclick="location.href='nearEstate'">주변 부동산</a></li>
        			</ul>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto">	
				<li class="nav-item dropdown auction">
				<a class="nav-link" onclick="location.href='auctionMain'">경매&nbsp;<i class="fas fa-money-bill-alt"></i></a>
					<ul class="dropdown-menu auction">
          				<li>
          					<a href="#" onclick="location.href='auctionMain'">물건검색</a>
          				</li>
		                <c:catch>
                			<c:choose>
                    			<c:when test="${empty user}">
									<li><a href="#" onclick="loginCheck()">판매관리</a></li>
		                			<li><a href="#" onclick="loginCheck()">경매 매물 등록</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#" onclick="location.href='auction_sales?aid=${user.aid }'">판매관리</a></li>
		                			<li><a href="#" onclick="location.href='auctionAdd'">경매 매물 등록</a></li>
								</c:otherwise>
                    		</c:choose>
                		</c:catch>
        			</ul>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto">	
				<li class="nav-item community dropdown">
				<a class="nav-link" onclick="location.href='comuMain'">커뮤니티&nbsp;<i class="fas fa-comments"></i></a>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto last">	
				<li class="nav-item service dropdown">
				<c:catch>
                	<c:choose>
                    	<c:when test="${empty user}">
							<a class="nav-link" onclick="loginCheck()">고객센터&nbsp;<i class="fas fa-hands-helping"></i></a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" onclick="location.href='listall'">고객센터&nbsp;<i class="fas fa-hands-helping"></i></a>
						</c:otherwise>
                    </c:choose>
                </c:catch>	
				</li>
			</ul>
			
			<form class="form-inline my-2 my-lg-0" style="padding-top: 20px;">
			<c:catch>
            	<c:choose>
                	<c:when test="${empty user}">
						<a href="login" class="header_main_right">회원가입ㆍ로그인</a>
					</c:when>
                	<c:otherwise>
                		<a href="mypage_lessor?aid=${user.aid}" class="header_main_right">내 정보</a>
						<a href="logout" class="header_main_right">로그아웃</a>
					</c:otherwise>
				</c:choose>
            </c:catch>						
			</form>
		</div>
	</nav>
<script type="text/javascript">
$(".nav-item.dropdown.commercial").hover(
	function(){
	$(".dropdown-menu.commercial").attr('class', 'dropdown-menu commercial show');
	},
	function(){
	$(".dropdown-menu.commercial").attr('class', 'dropdown-menu commercial');
	}
);

$(".nav-item.dropdown.estate").hover(
	function(){
	$(".dropdown-menu.estate").attr('class', 'dropdown-menu estate show');
	},
	function(){
	$(".dropdown-menu.estate").attr('class', 'dropdown-menu estate');
	}
);

$(".nav-item.dropdown.auction").hover(
	function(){
	$(".dropdown-menu.auction").attr('class', 'dropdown-menu auction show');
	},
	function(){
	$(".dropdown-menu.auction").attr('class', 'dropdown-menu auction');
	}
);

function loginCheck(){
	alert('로그인이 필요한 서비스입니다. 로그인 페이지로 이동합니다.');
	location.href = 'login';
}

function register_func() {
	var aid = "${user.aid}";
	if (aid === null || aid === "") {
		alert("로그인하십시오.");
	} else {
		location = "register";
	}
}

function analysisCheck(text){
	var aid = "${user.aid}";
	
	if (aid === null || aid === "") {
		alert('로그인이 필요한 서비스입니다. 로그인 페이지로 이동합니다.');
		location.href = 'login';
	} else {
			$.ajax({
				url:"analysisCheck?aid="+aid,
				type:"get",
				success: function(data){
				
					if(data ===1){
						if(text==='분석'){
							location.href = 'commercialMain';
						}else if(text==='실거래가'){
							location.href = 'realprice';
						}
						else if(text==='뉴스'){
							location.href = 'newsList';
						}
						
					}else{
						alert('구독이 필요한 서비스입니다. 구독 페이지로 이동합니다.');
						var anum = "${user.anum}";
						location.href = 'payment?anum='+anum;
					}
				}
				
				
			});
	}
}
</script>
<script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.17.1/firebase.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-analytics.js"></script>
<script src="resources/js/auction/fcmScript.js"></script>
	            