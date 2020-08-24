<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header_main.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/* 탑 버튼 */
#scrollTopBtn {
    display: none;
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 99;
    border: 1px;
    border-style: solid;
    border-color: rgba(77,77,77,0.1);
    outline: none;
    background-color: #F28705;
    color: #ffffff;
    font-size: 1em;
    font-weight: bold;
    font-family: 'Noto Sans KR',sans-serif;
    cursor: pointer;
    padding: 25px 29px;
    border-radius: 45px;
}

/* 탑 버튼 Hover */
#scrollTopBtn:hover {
  background-color: white;
  color: #F28705;
  border: 1px solid #F28705;
}

.topContainer,.commercialContainer,.estateContainer,.auctionContainer,.subscribeContainer {
	width: 100%;
	height: 680px;
	font-family: 'Noto Sans KR',sans-serif;
}

.topContainer,.estateContainer,.subscribeContainer {
	width: 100%;
	font-family: 'Noto Sans KR',sans-serif;
	height: 907px;
	background-color: #FBF8EF;
}
.mainImage {
    background-image: url("resources/images/index/index_main_copy.png");
    background-size: 100% 100%;
}
.topArea {
	width: 1200px;
    height: 100%;
    margin: 0 auto;
   
}
.auctionArea{
	width: 1200px;
    height: 100%;
    margin-left: 200px;
}
.topImage {
	width: 676px;
	height: 609px;
	

	
	float: right;
}
.commercialImage {
    width: 650px;
    height: 433px;
    background-image: url(resources/images/commercial/mainCommercial.png);
    float: left;
    margin-top: 100px;
}
.estateImage{
	width: 815px;
	height: 609px;
	background-image: url("resources/images/estate/mainEstate.png");
	float: right;
	margin-top: 60px;
}
.auctionImage{
	width: 676px;
	height: 609px;
    background-image: url("resources/images/auction/mainAuction.jpg");
	float: left;
	margin-top: 30px;
}
.paymentImage{
	width: 815px;
	height: 609px;
	background-image: url("resources/images/mainPayment.png");
	float: right;
	margin-top: 60px;
}
.topText {
	display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    height: 680px;
    
}
.commercialText,.auctionText{
	display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    height: 680px;
    float: right;
}
.paymentText{
	display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    height: 680px;
}
.topText > p, .commercialText > p, .auctionText > p, .paymentText > p{
	font-size: 40px;
	font-weight: bold;
	letter-spacing: -0.9px;
    line-height: 1.3;
}
.topText > button,.commercialText > button, .auctionText > button ,.paymentText > button,.searchArea  span{
	color: rgb(255, 255, 255);
    font-weight: 700;
    background-color: #F28705;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 228px;
    height: 58px;
    font-size: 18px;
    border: 1px solid #F28705;
    border-image: initial;
    border-radius: 2px;
    margin-top: 15px;
}
.topText > button:hover,
.commercialText > button:hover,
.auctionText > button:hover,
.paymentText > button:hover,
.searchArea  span:hover{
	background-color: white;
	border: 1px solid #F28705;
	border-radius: 2px;
	color: #F28705;
	cursor: pointer;
}
.topText > button:focus,
.commercialText > button:focus,
.auctionText > button:focus,
.paymentText > button:focus,
.searchArea  span:focus{
	background-color: white;
	border: 1px solid #F28705;
	border-radius: 2px;
	color: #F28705;
}
.subMenuBar{
	height: 60px;
    
    text-align: center;
    line-height: 59px;

    /* background-color :#FBF8EF; */
    background-color:transparent;
    font-family: 'Noto Sans KR',sans-serif;
    box-sizing: border-box;
    margin: 0px;
    padding: 0px;
  	
    z-index: 1030;
    width: 1920px;
}
.subMenuBar > a{
	height: 14px;
    font-size: 15px;
    color: #000000;
    font-family: 'Noto Sans KR',sans-serif;
    vertical-align: middle;
    padding-bottom: 10px;
    text-decoration: none;
    margin-left: 25px;
    margin-right: 25px;
    color: white;
}
.subMenuLine{
	display: inline-block;
    width: 1px;
    height: 14px;
    vertical-align: middle;
    background-color: #D8D8D8;
    font-family: 'Noto Sans KR',sans-serif;
    box-sizing: border-box;
    margin: 0px;
    margin-left:10px;
    margin-right:10px;
    padding: 0px;
  
}
/*subMenuBar에 대한 CSS 끝*/
.topNext{
	display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    position: absolute;
    width: 320px;
    height: 90px;
    right: 412px;
    bottom: 299px;
    background-color: white;
    font-size: 18px;
    font-weight: bold;
    box-shadow: rgba(0, 0, 0, 0.1) 0px 18px 50px -7px;
    cursor: pointer;
    padding: 30px 42px;
}
#topNext{
	color: #F28705;
}
em{
	text-decoration: none;
	color: #F27405;
	font-style: normal;
}
#search-nav > div > article > div > div:nth-child(2) > a{
  color: white;
}

#search-nav > div > article > div > div:nth-child(2) > a:hover{
  color: #F28705;
  
}
.opacity{


    position: absolute;
    height: 180px;
    width: 100%;
    background-color: rgba(0,0,0,0.5);
    opacity: 0.7;
    margin-top: -180px;
}
</style>
<%@ include file="include/header_menu.jsp"%>
<div class="topContainer mainImage" style="height: 630px;">
	<div class="topArea ">
		<div class="topImage"></div>
		 <div class="topText" style="height: 500px;">
		<!--	<p>상권ㆍ부동산ㆍ경매 정보,</p>
			<p>이 곳, <em>꿀방</em>에서 확인하세요!</p>
			<button onclick="location.href='login'">CMJ 시작하기</button>-->
		</div> 
		<!-- <div class="topNext" style="top:620px;" onclick="nextFunction()">CMJ 더 알아보기<i id="topNext" class="fas fa-angle-double-down"></i></div> -->
		<div id="main_search_nav">
		<div class="container2" id="search-nav">
	<div class="row">
		<article class="subMenuBar" style="height: 150px;">
			<div class="searchArea" style="width: 1103px; text-align: center; ">
			<div>
				<input type="text" id="keyword" style="width: 600px;">
				<span class="button3" id="search_btn" style="padding: 17px 30px 18px 30px; display: inline; ">검색</span>
			</div>
			<div style="width: 100%;">
			<a href="realprice">실거래가</a>
			<div class="subMenuLine"></div>
			<a href="nearEstate">주변 부동산</a>
			<div class="subMenuLine"></div>
			<a href="product">매물 검색</a>
			<div class="subMenuLine"></div>
			<a href="estateMain">매물 현황</a>
			<div class="subMenuLine"></div>
			<a href="newsList">뉴스</a>
			
			</div>
			</div>
		</article>
		
	</div>
</div>
		</div>
	</div>
	<div class="opacity"></div>
</div>
<div class="commercialContainer">
	<div class="topArea">
		<div class="commercialText">
			<p>성공적인 창업 </p>
			<p>내 집 마련을 위한 <em>상권분석</em></p>
			<button onclick="location.href='commercialMain'">상가로 가기</button>
		</div>
		<div class="commercialImage"></div>
	</div>
</div>

<div class="estateContainer" style="height: 700px;">
	<div class="topArea">
		<div class="estateImage"></div>
		<div class="topText">
			<p>잘 고른 <em>방</em> 하나</p>
			<p>열 <em>방</em> 안 부럽다!</p>
			<button onclick="location.href='estateMain'">부동산으로 가기</button>
		</div>
	</div>
</div>
<div class="auctionContainer">
	<div class="auctionArea">
		<div class="auctionText">
			<p>보다 쉽게, 보다 빠르게</p>
			<p><em>실시간</em>으로 보는 경매 데이터</p>
			<button onclick="location.href='auctionMain'">경매로 가기</button>
		</div>
		<div class="auctionImage"></div>
	</div>
</div>
<div class="subscribeContainer">
	<div class="topArea">
		<div class="paymentImage"></div>
		<div class="paymentText">
			<p>차별화된 데이터</p>
			<p><em>구독</em>하여 만나보세요!</p>
			<c:catch>
				<c:choose>
					<c:when test="${empty user}">
						<button onclick="location.href='login'">구독하러 가기</button>
					</c:when>
					<c:otherwise>
						<button onclick="location.href='mypage_lessor?aid=${user.aid}'">구독하러 가기</button>
					</c:otherwise>
				</c:choose>
			</c:catch>
		</div>
	</div>
</div>
<button onclick="topFunction()" id="scrollTopBtn" title="Go to top">맨 위로 가기</button>
<%@ include file="include/footer.jsp"%>
<script>
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
    var $element = matchMedia("screen and (min-width: 786px)").matches ? document.getElementById("scrollTopBtn") : document.getElementById("scrollTopBtnMob");
    $element.style.display = (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) ? 'block' : 'none';
    }
    
    function topFunction() {
        $('html,body').animate({ scrollTop: 0 }, 500);
    }
    
    function nextFunction() {
    	$('html,body').animate({ scrollTop: 830 }, 900);
    }
</script>
<%--  <header class="masthead">
             <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase" id="title"><span class="logotext typer">Grayscale</span></h1>
                    <h3 class="text-white-50 mx-auto mt-2 mb-5">CMJ은 한발 앞서가는 분석으로 <br>최적의 매물과 가치를 만들어 드립니다.</h3>
                
					 <ul>
					<c:choose>									 
					<c:when test="${empty user}">
					<li>                 
                    <a class="btn btn-primary js-scroll-trigger" href="login">로그인</a>
                    </li>
                    </c:when>   
                    
                    <c:otherwise>
                    <li>
                    <a class="btn btn-primary js-scroll-trigger" href="index#footerMenu">시작하기</a>  
                    </li>
                    </c:otherwise>
                    </c:choose>
                                     
                   </ul>
                   
                </div>
            </div>  --%>
  <%-- </header>
        <!-- About-->
        <!-- Projects-->   
        <!-- Signup-->  
        <!-- Contact-->
        <section class="contact-section bg-black" id="footerMenu">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                        	
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <a href="commercialMain">
                                <h3 class="text-uppercase m-0">상가</h3>
                                <hr class="my-4" />
                                <div class="small text-black-50"></div>
                             	</a>
                             	<br>
                             	<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0">실거래가</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="nearEstate">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">근처 부동산 검색</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="product">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">매물 검색</h3>
                                <hr class="my-4" />
                                </a>
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                             
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                        	<a href="estateMain">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h3 class="text-uppercase m-0">부동산</h3>
                                <hr class="my-4" />
                                <br>
                             	<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0">실거래가</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="nearEstate">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">근처 부동산 검색</h3>
                                <hr class="my-4" />
                                </a>
                                                             	
                                <br>
                             	<br>	
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                             <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <a href="commercialMain">
                                <h3 class="text-uppercase m-0"><a href="auctionMain">경매</a> </h3>
                                <hr class="my-4" />
                                <div class="small text-black-50"></div>
                             	</a>
                             	<br>
                				<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0"><a href="auction_sales?aid=${user.aid }"> 판매관리</a></h3>
                                <hr class="my-4" />
                                </a>
                                <br> 
                                <br>  	           	
                                <a href="product">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">부동산관리</h3>
                                <hr class="my-4" />
                                </a>
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a><a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section> --%>