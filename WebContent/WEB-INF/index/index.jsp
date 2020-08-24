<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%--@ include file="include/header_main.jsp"--%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase" id="title"><img style="width: 100px; height: 100px;" src="resources/assets/img/logo.png"><span class="logotext typer">Grayscale</span></h1>
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
            </div> 
        </header>
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
        </section>
  <script src="resources/js/index.js"></script>
 
 <%--@ include file="include/footer.jsp"--%>