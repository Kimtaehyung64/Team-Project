<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  </head>
    <body id="page-top">
         
          <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav2" >
         
         <div class="container col-md-12" >
         	
                <a class="navbar-brand js-scroll-trigger menu-other" href="index">메인메뉴테스트</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                 <ul class="navbar-nav ml-auto menu-other">
                        <c:catch>
                        <c:choose> 
                        <c:when test="${empty user}">                        
                        <li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="mypage"> </a></li>
                        </c:when>
                          
                        <c:otherwise>                          
                        <li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="#">${user.dname}님 환영합니다.</a></li>  
                        </c:otherwise>
<%--                         <c:otherwise>                         --%>  
<%--                         <li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="mypage">${user.dname}님 환영합니다.</a></li> --%>
<%--                         </c:otherwise> --%>
                        </c:choose>	
                        </c:catch>
                   </ul>  
                                                            
                    <ul class="navbar-nav ml-auto2">
                     <c:catch>
                        <c:choose> 
                        <c:when test="${empty user}">                        
                       		<li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="mypage"> </a></li>
                        </c:when>
                          
                        <c:otherwise>                          
                      		<li class="nav-item"><a class="nav-link js-scroll-trigger" href="addestate">매물등록</a></li>
                        </c:otherwise>
<%--                         <c:otherwise>                         --%>  
<%--                         <li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="mypage">${user.dname}님 환영합니다.</a></li> --%>
<%--                         </c:otherwise> --%>
                        </c:choose>	
                        </c:catch>
                    	
                    	
                    	
                       <li class="nav-item">
	                       <a class="nav-link js-scroll-trigger" href="commercialMain">상가</a>
	                       <ul class="invisible sub-menu">
		                     <li><a href="realprice">실거래가</a></li>
		                       	<li><a href="nearEstate">주변부동산</a></li>
		                       	<li><a href="product">매물</a></li>
		                       	<li><a href="newsList">뉴스</a></li>
						</ul></li>
	                      
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="estateMain">부동산</a>
	                      
	                        <ul class="invisible sub-menu">
		                       	<li><a href="estateMain">매물</a></li>
		                      	<li><a href="realprice">실거래가</a></li>
		                       	<li><a href="nearEstate">주변부동산</a></li>
		                       
	                       </ul>
                        </li>
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="auctionMain">경매</a>
	                        
	                        <ul class="invisible sub-menu">
		                       		<li><a href="auctionMain">물건검색</a></li>
		                       	<li><a href="auction_sales?aid=${user.aid }">판매관리</a></li>
		                       
		                       	<li><a href="auctionAdd">부동산등록</a></li>
		                       
	                       </ul>
                        </li>
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="comuMain">커뮤니티</a>
                        </li>
                        <li class="nav-item">
  <c:catch>
                       <c:choose>
                       <c:when test="${empty user}">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login">고객센터</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="listall">고객센터</a></li>
                        </c:otherwise>
                        </c:choose>
                        </c:catch>          
                        </li>
                         
                            
                    </ul>
                      <ul class="navbar-nav ml-auto2 menu-other">
                        <li class="nav-item">
	                        
	                       	<c:choose>
		                       	<c:when test="${user.agubun eq '공인중개사'}">
		                       		<a class="nav-link js-scroll-trigger" href="mypage_lessor?aid=${user.aid }">내정보</a>
		                       	</c:when>
		                       	<c:when test="${user.agubun eq '임대인'}">
		                       		<a class="nav-link js-scroll-trigger" href="mypage_lessor?aid=${user.aid }">내정보</a>
		                       	</c:when>
		                        <c:otherwise>
		                        	 <a class="nav-link js-scroll-trigger" href="login" >내정보</a>
		                        </c:otherwise>
	                       </c:choose>
                       <input type="hidden" value="mypage">
                        </li>
                       <c:catch>
                       <c:choose>
                       <c:when test="${empty user}">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login">로그인</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="logout">로그아웃</a></li>
                        </c:otherwise>
                        </c:choose>
                        </c:catch>
                    </ul>
                   
                </div>
               </div>
               <br>
            </nav>
         <!--    <div class="row " style="margin-top: 80px; top: 80px;">
                 <div class="col-md-12 menu-top ">
		            <div class=" col-md-12 commercil invisible ">
		            	
		            </div>
		             <div class=" col-md-12 estate invisible ">
		            	
		            </div>
		              <div class=" col-md-12 auction  invisible">
		            	 <ul class="navbar-nav mr-auto float-left" >
				      <li class="nav-item active">
				        <a class="nav-link" href="#">물건검색 <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">판매관리</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">구매관리</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">부동산등록</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">경매정보</a>
				      </li>
				    </ul>
		            </div>
		             <div class=" col-md-12 community invisible ">
		            	
		            </div>
		            <div class=" col-md-12 customer invisible">
		            	
		            </div>
		             <div class=" col-md-12 mypage invisible ">
		            	
		            </div>
	 
            </div> -->
  <script>
	    function register_func(){
			var aid = "${user.aid}";
			console.log(aid);
			if(aid ===null || aid === ""){
				alert("로그인하십시오.");
			}else{
				location = "register";
			}
	}
	</script>     
	            