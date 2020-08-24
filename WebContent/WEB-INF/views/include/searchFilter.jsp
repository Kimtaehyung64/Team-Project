<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>    
<style>
/* 여기서부터 subMenuBar에 대한 CSS */
.subMenuBar{
	height: 60px;
    box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 1px -2px;
    text-align: center;
    line-height: 59px;
    background: #FFFFFF;
    font-family: 'Noto Sans KR',sans-serif;
    box-sizing: border-box;
    margin: 0px;
    padding: 0px;
    border-bottom: 1px double #D8D8D8;
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
    padding: 0px;
}
/*subMenuBar에 대한 CSS 끝*/

/* button CSS */
.filterButton{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
}
.filterButton:hover{
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}
.button3{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
}
.button3:hover{
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}
.button4{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
}
.button4:hover{
	border: 2px solid #004358;
	background-color: #FFFFFF;
	color: #000000;
}
/* button CSS 끝 */

/* 필터 버튼 통합을 위한 CSS 시작 */
#search-nav{
	height: 61px;
}
#keyword{
	height: 35px;
}
.searchArea{
	float: left;
	padding-left: 30px;
}
.filter-section{
	float: right;
	display: flex;
	padding-right: 30px;
	padding-left: 0px;
}
/* 필터 버튼 통합을 위한 CSS 끝 */

/* 필터 부분 메인 CSS 시작 */
#filter-page{
	position: static;
	font-family: 'Noto Sans KR',sans-serif;
}
.filterTitle{
	margin-top: 20px;
    font-size: 25px;
    margin-left: 30px;
    margin-bottom: 0px;
    display: grid;
}
.depositTitle{
	margin-top: 20px;
    font-size: 25px;
    margin-left: 15px;
    margin-bottom: 10px;
    display: grid;
}
.checkBoxArea{
	margin-left: 15px;
	padding-top: 20px;
}
.filterlabel{
	font-size: 13px;
    margin-top: 5px;
    color: #BDBDBD;
}
.filter-sub-page-div input[type=checkbox]{ 
	margin-right: 3px;
}
.deposits,.monthmoenys,.trades,.roomSizes,.roomCost{
	margin-left: 15px;
	width: 1050px;
}

#slider1,#slider2,#slider3,#slider4,#slider5{
	display: inline-flex;
}

#slider1 > span:first-child, 
#slider2 > span:first-child,
#slider3 > span:first-child,
#slider4 > span:first-child,
#slider5 > span:first-child {
	margin-left: 25px;
	width: 600px;
}
.sliderLabel{
	padding-left: 25px;
    padding-top: 25px;
}
.fa-star{
	color: #FFE11A;
}
.fa-exclamation-circle{
	color: #ED2F3B;
}
.fa-check{
	color: #000000;
}
.fa-times{
	color: #ED2F3B;
}
.fa-cog{
	color: #FD7400;
}
.fa-undo{
	color: #004358;
}
.subMenuBar{
	z-index: 1020 !important;
}
/* 필터 부분 메인 CSS 끝 */
</style>
<div class="container2" id="search-nav">
	<div class="row">
		<article class="subMenuBar">
			<div class="searchArea">
				<input type="text" id="keyword_val" style="height: 35px;">
				<span class="button3" id="search_btn" onclick="search_estate()">검색</span>
			</div>
			<a href="realprice">실거래가</a>
			<div class="subMenuLine"></div>
			<a href="nearEstate">주변 부동산</a>
			<div class="subMenuLine"></div>
			<a href="product">매물 검색</a>
			<div class="subMenuLine"></div>
			<a href="estateMain">매물 현황</a>
			<div class="subMenuLine"></div>
			<a href="newsList">뉴스</a>
			<div class="filter-section">
				<div class="filter-div">
					<a class="filterButton js-scroll-trigger" href="#page-top"><i class="fas fa-cog"></i>&nbsp;필터</a>
        			<a class="button4 js-scroll-trigger" href="#page-top"><i class="fas fa-undo"></i>&nbsp;초기화</a>
        		</div>
        	</div>
		</article>
		<div class="col-md-12 mt-12 filter-page invisible fixed-top" id="filter-page">
            <form action="" method="post" name="search_form" id="search_form" style="height: 100%; overflow: scroll;">
            	<div class="col-md-12 mt-12 filter-sub-page" >
            	
            			<!-- 방종류를 선택하는 영역 시작 -->
	            		<div class="filter-sub-page-div">
	            			<p class="filterTitle" id="page-up">방종류<label class="filterlabel"><i class="fas fa-star"></i>&nbsp;중복선택이 가능합니다.&nbsp;(상가/사무실,아파트 제외)</label></p> 
	            			<div class="checkBoxArea">
	            				<input type="checkbox" value="0" name="build" class="room checked " onclick="search_build('room')"><label class="room_check">원룸 </label>
	            				<input type="checkbox" value="1" name="build" class="room checked" onclick="search_build('room')"><label class="room_check">투ㆍ쓰리룸</label>
	            				<input type="checkbox" value="2" name="build" class="room checked" onclick="search_build('room')"><label class="room_check">오피스텔</label>
	            				<input type="checkbox" value="3" name="build" class="apt " onclick="search_build('apt')"><label class="room_check ">아파트</label>
	            				<input type="checkbox" value="4 " name="build" class="store" onclick="search_build('store')"><label class="room_check ">상가/사무실 </label>
	            				<label class="filterlabel" style="margin-left:10px;"><i class="fas fa-exclamation-circle"></i>&nbsp;다중 선택 시 아파트, 상가/사무실은 포함할 수 없습니다.</label>
	            			</div>
	            		</div>
	            		<!-- 방종류를 선택하는 영역 끝 -->
	            		
	            		<!-- 매물 종류를 선택하는 영역 시작 -->
	            		<div class="filter-sub-page-div">
	            			<p class="filterTitle">매물 종류<label class="filterlabel"><i class="fas fa-star"></i>&nbsp;중복선택이 가능합니다.</label></p>
	            			<div class="checkBoxArea">
	            				<input type="checkbox" name="rentv" class="checked rentv" value="0"><label>월세</label>
	            				<input type="checkbox" name="rentv" class="checked rentv" value="1"><label>전세 </label>
	            				<input type="checkbox" name="rentv" class="checked rentv" value="2"><label>매매</label>
	            			</div>
	            		</div>
	            		<!-- 매물 종류를 선택하는 영역 끝 -->
	            		
	            		<!-- 매물 종류의 선택에 따라 보여지는 영역 시작 -->
	            		<div class="filter-sub-page-div" style="height: 410px;">
	            		<!-- 보증금 전세가 시작 -->
	            			<div class="deposits">
								<p class="depositTitle">보증금/전세가</p>
		            			<div id="slider1" class="slider">
									<span id="deposits" class="invisible slider"></span>
									<div class="sliderLabel">
										<span id="deposits_val1"></span> / <span id="deposits_val2"></span>
										<input type="hidden" name="deposits_from" id="deposits_from" readonly="readonly" >
										<input type="hidden" name="deposits_to" readonly="readonly" id="deposits_to">
									</div>
								</div>
							</div>
						<!-- 보증금 전세가 끝 -->
						
						<!-- 월세 시작 -->	
							<div class="monthmoenys">
								<p class="depositTitle">월세</p>
								<div id="slider2" class="slider">
									<span id="monthmoenys" class="invisible slider"></span>
									<div class="sliderLabel">
										<span id="monthmoenys_val1"></span> / <span id="monthmoenys_val2"></span>
										<input type="hidden" name="monthmoenys_from" id="monthmoenys_from" readonly="readonly">
										<input type="hidden" name="monthmoenys_to" readonly="readonly" id="monthmoenys_to">
									</div>
								</div>	
							</div>
						<!-- 월세 끝 -->
					
						<!-- 매매가 시작 -->	
							<div class="trades">
								<p class="depositTitle">매매가</p>
								<div id="slider3" class="slider">
									<span id="trades" class="invisible slider"></span>
									<div class="sliderLabel">
										<span id="trades_val1"></span> / <span id="trades_val2"></span>
										<input type="hidden" name="trades_from" id="trades_from" readonly="readonly" >
										<input type="hidden" name="trades_to" readonly="readonly" id="trades_to">
									</div>
								</div>
							</div>
							<!-- 매매가 끝 -->
	            		</div>
	            		<!-- 매물 종류의 선택에 따라 보여지는 영역 끝 -->
	            		
	            		<!-- 방크기 (전용면적)을 조정하는 영역 시작 -->
	            		<div class="filter-sub-page-div">
	            			<div class="roomSizes">
	            				<p class="depositTitle">방크기(전용면적)</p>
								<div id="slider4" class="slider">
									<span id="roomArea" class="invisible slider"></span>
									<div class="sliderLabel">
										<span id="roomArea_val1"></span> / <span id="roomArea_val2"></span>
										<input type="hidden" name="roomArea_from" id="roomArea_from" readonly="readonly" >
										<input type="hidden" name="roomArea_to" readonly="readonly" id="roomArea_to">
									</div>
								</div>
							</div>
	            		</div>
	            		<!-- 방크기 (전용면적)을 조정하는 영역 끝 -->
	            		
	            		<!-- 관리비를 조정하는 영역 시작 -->
	            		<div class="filter-sub-page-div">
	            			<div class="roomCost">
	            				<p class="depositTitle">관리비</p>
								<div id="slider5" class="slider">
									<span id="roomCare" class="invisible slider"></span>
									<div class="sliderLabel">
										<span id="roomCare_val1"></span> / <span id="roomCare_val2"></span>
										<input type="hidden" name="roomCare_from" id="roomCare_from" readonly="readonly" >
										<input type="hidden" name="roomCare_to" readonly="readonly" id="roomCare_to">
									</div>
								</div>
							</div>
	            		</div>
	            		<!-- 관리비를 조정하는 영역 끝 -->
	            		
	            		<!-- 층수를 선택하는 영역 시작 -->
	            		<div class="filter-sub-page-div">
	            			<p class="filterTitle">층수 <label class="filterlabel"><i class="fas fa-star"></i>&nbsp;중복선택이 가능합니다.</label></p>
	            			<div class="checkBoxArea">
	            				<input type="checkbox" name="floor" value="0" class="floor_all">	<label>전체</label>
	            				<input type="checkbox" name="floor"value="1" class="checked floor">	<label>1층</label>
	            				<input type="checkbox" name="floor"value="2" class="checked floor">	<label>2층</label>
	            				<input type="checkbox" name="floor"value="3" class="checked floor">	<label>3층</label>
	            				<input type="checkbox" name="floor"value="4" class="checked floor">	<label>4층</label>
	            				<input type="checkbox" name="floor"value="5" class="checked floor">	<label>5층</label>
	            				<input type="checkbox" name="floor"value="6" class="checked floor">	<label>6층</label>
	            				<input type="checkbox" name="floor"value="7" class="checked floor">	<label>7층이상</label>
	            				<input type="checkbox" name="floor" value="8" class="floor">	<label>반지층</label>
	            				<input type="checkbox" name="floor" value="9" class="floor">	<label>옥탑</label>
	            				<input type="hidden" name="cntPerPage" id="cntPerPage_val" value="10">
								<input type="hidden" name="nowPage" id="nowPage"value="1"> 
								<input type="hidden" name="keyword" id="keyword">
	            				
	            				
	            			</div>
	            		</div>
	            		<!-- 층수를 선택하는 영역 끝 -->
	            		
	            		
	            			            		
	            		<div class="col-md-12 mt-12 filter-sub-page-div filter-div last" style='padding-top: 30px'>
	            			<a class="button3 filterButton" id="filter_apply" onclick="submit()" href="#page-top"><i class="fas fa-check"></i>&nbsp;적용하기</a>
	            			<a class="button4 filterButton" id="filter_close" href="#page-top"><i class="fas fa-times"></i>&nbsp;닫기</a>
	            		</div>
            		</div>
            	</form>
            </div>
	</div>
</div>
<script>




	$(function(){
		$(".checked").prop("checked",true);
		
		$("input[name=build]").click(function() {
			var bool=0;
			var input=$("input[name=build]");
			$("input[name=build]").each(function(i, element) {
		
				if($(this).prop("checked") === false){
					bool=bool+1;
				}			
			
			});
			
			if(bool===5){
				$(this).prop("checked",true);
				bool=1;
			}
			
		})
		
		$("input[name=rentv]").click(function() {
			var bool=0;
			var input=$("input[name=rentv]");
			$("input[name=rentv]").each(function(i, element) {
				
				
				if($(this).prop("checked") === false){
					bool=bool+1;
				}
				
			
			});
			
			if(bool===3){
				$(this).prop("checked",true);
				bool=1;
			}
			
		})
		
		$(".floor_all").click(function(){
			var bool=$(".floor_all").prop("checked");
			
			if(bool===true){
				$(".floor").prop("checked",true);				
			}else{
				$(".floor").prop("checked",false);
				$(".checked").prop("checked",true);
			}
		});
		$(".floor").click(function() {
			$(".floor").each(function() {
				if(!$(this).prop('checked')){
					$(".floor_all").prop("checked",false);
				}
			})
			
		})
		$(".rentv").click(function(){
			var bool=$(this).prop("checked")
			var index = $(this).val();
			var trades=true;
			console.log(bool+" / "+typeof(index))
			
			if(bool===false){
				switch(index) {
				  case "0":
					  var type=$(".rentv:nth-of-type(1)").prop('checked')
					  if(!type){
						  trades=$(".monthmoenys").children().hasClass("invisible");
							if(trades===false){
								$(".monthmoenys").children().addClass("invisible");
								$(".monthmoenys").children().removeClass("visible");
								$("#slider2 .irs-from").addClass("invisible");
								$("#slider2 .irs-to").addClass("invisible");
								$("#slider2 .irs-from").removeClass("visible");
								$("#slider2 .irs-to").removeClass("visible");
								if($("#slider2 .irs").children().hasClass("irs-min")){
									
									$("#slider2 .irs .irs-min").css("visibility","hidden");
									
									//$("#slider2 .irs .irs-min").removeClass("visible");									
									}
									if($("#slider2 .irs").children().hasClass("irs-max")){
										
										$("#slider2 .irs .irs-max").css("visibility","hidden");
										
										//$("#slider2 .irs .irs-max").removeClass("visible");
									}
								
							}
					  }
					
					var type=$(".rentv:nth-of-type(2)").prop('checked')
					if(!type){	
						 trades=$(".deposits").children().hasClass("invisible");
						if(trades===false){
							$(".deposits").children().addClass("invisible");
							$(".deposits").children().removeClass("visible");
							$("#slider1 .irs-from").addClass("invisible");
							$("#slider1 .irs-to").addClass("invisible");
							$("#slider1 .irs-from").removeClass("visible");
							$("#slider1 .irs-to").removeClass("visible");
							
							if($("#slider1 .irs").children().hasClass("irs-min")){
								
								$("#slider1 .irs .irs-min").css("visibility","hidden")
								
								//$("#slider1 .irs .irs-min").removeClass("visible");									
								}
								if($("#slider1 .irs").children().hasClass("irs-max")){
									
									$("#slider1 .irs .irs-max").css("visibility","hidden")
									
									//$("#slider1 .irs .irs-max").removeClass("visible");
								}
						}
					}
				    break;
				  case "1":
					var type=$(".rentv:nth-of-type(1)").prop('checked')
					
					if(!type){	
						 trades=$(".deposits").children().hasClass("invisible");
						if(trades===false){
							$(".deposits").children().addClass("invisible");
							$(".deposits").children().removeClass("visible");
							$("#slider1 .irs-from").addClass("invisible");
							$("#slider1 .irs-to").addClass("invisible");
							$("#slider1 .irs-from").removeClass("visible");
							$("#slider1 .irs-to").removeClass("visible");
							if($("#slider1 .irs").children().hasClass("irs-min")){
								
								$("#slider1 .irs .irs-min").css("visibility","hidden")
								
								//$("#slider1 .irs .irs-min").removeClass("visible");									
								}
								if($("#slider1 .irs").children().hasClass("irs-max")){
									
									$("#slider1 .irs .irs-max").css("visibility","hidden")
									
									//$("#slider1 .irs .irs-max").removeClass("visible");
								}
						}
					}
				
					
				    break;
				  case "2":
						var type=$(".rentv:nth-of-type(3)").prop('checked')
						if(!type){
							trades=$(".trades").children().hasClass("invisible");
							if(trades===false){
								$(".trades").children().addClass("invisible");
								$(".trades").children().removeClass("visible");
								$("#slider3 .irs-from").addClass("invisible");
								$("#slider3 .irs-to").addClass("invisible");
								$("#slider3 .irs-from").removeClass("visible");
								$("#slider3 .irs-to").removeClass("visible");
								if($("#slider3 .irs").children().hasClass("irs-min")){
									
									$("#slider3 .irs .irs-min").css("visibility","hidden")
									
									//$("#slider3 .irs .irs-min").removeClass("visible");									
									}
									if($("#slider3 .irs").children().hasClass("irs-max")){
										
										$("#slider3 .irs .irs-max").css("visibility","hidden")
										
										//$("#slider3 .irs .irs-max").removeClass("visible");
									}
								
							}
						}
					 
				    break;
				}
			}else{
				switch(index) {
				  case "0":
					  var type=$(".rentv:nth-of-type(1)").prop('checked')
					  if(type){
						  trades=$(".monthmoenys").children().hasClass("visible");
							if(trades===false){
								$(".monthmoenys").children().addClass("visible");
								$(".monthmoenys").children().removeClass("invisible");
								$("#slider2 .irs-from").addClass("visible");
								$("#slider2 .irs-to").addClass("visible");
								$("#slider2 .irs-from").removeClass("invisible");
								$("#slider2 .irs-to").removeClass("invisible");
								if($("#slider2 .irs").children().hasClass("irs-min")){
									if($("#slider2 .irs-from").text()!=='0만원'){
									$("#slider2 .irs .irs-min").css("visibility","visible")
									}
									//$("#slider2 .irs .irs-min").removeClass("invisible");									
									}
									if($("#slider2 .irs").children().hasClass("irs-max")){
										if($("#slider2 .irs-to").text()!=='무제한'){
										$("#slider2 .irs .irs-max").css("visibility","visible")
										}
										//$("#slider2 .irs .irs-max").removeClass("invisible");
									}
							}
					  }
					  
						  trades=$(".deposits").children().hasClass("visible");
							if(trades===false){
								$(".deposits").children().addClass("visible");
								$(".deposits").children().removeClass("invisible");
								$("#slider1 .irs-from").addClass("visible");
								$("#slider1 .irs-to").addClass("visible");
								$("#slider1 .irs-from").removeClass("invisible");
								$("#slider1 .irs-to").removeClass("invisible");
								if($("#slider1 .irs").children().hasClass("irs-min")){
									if($("#slider1 .irs-from").text()!=='0만원'){
									$("#slider1 .irs .irs-min").css("visibility","visible")
									}
									//$("#slider1 .irs .irs-min").removeClass("invisible");									
									}
									if($("#slider1 .irs").children().hasClass("irs-max")){
										if($("#slider1 .irs-to").text()!=='무제한'){
										$("#slider1 .irs .irs-max").css("visibility","visible")
										}
										//$("#slider1 .irs .irs-max").removeClass("invisible");
									}
							}
					  
						 
				    break;
				  case "1":
					  var type=$(".rentv:nth-of-type(2)").prop('checked')
					  if(type){
						  trades=$(".deposits").children().hasClass("visible");
							if(trades===false){
								$(".deposits").children().addClass("visible");
								$(".deposits").children().removeClass("invisible");
								$("#slider1 .irs-from").addClass("visible");
								$("#slider1 .irs-to").addClass("visible");
								$("#slider1 .irs-from").removeClass("invisible");
								$("#slider1 .irs-to").removeClass("invisible");
								if($("#slider1 .irs").children().hasClass("irs-min")){
									console.log("사라지냐?");
									
									console.log()
									if($("#slider1 .irs-from").text()!=='0만원'){
									$("#slider1 .irs .irs-min").css("visibility","visible")
									}
									//$("#slider1 .irs .irs-min").removeClass("invisible");									
									}
									if($("#slider1 .irs").children().hasClass("irs-max")){
										console.log("사라지냐?");
										if($("#slider1 .irs-to").text()!=='무제한'){
											
										$("#slider1 .irs .irs-max").css("visibility","visible")
										}
										
										//$("#slider1 .irs .irs-max").removeClass("invisible");
									}
							}
					  }
					  
				    break;
				  case "2":
					  var type=$(".rentv:nth-of-type(3)").prop('checked')
					  if(type){
						  trades=$(".trades").children().hasClass("visible");
							if(trades===false){
								$(".trades").children().addClass("visible");
								$(".trades").children().removeClass("invisible");
								$("#slider3 .irs-from").addClass("visible");
								$("#slider3 .irs-to").addClass("visible");
								$("#slider3 .irs-from").removeClass("invisible");
								$("#slider3 .irs-to").removeClass("invisible");
								if($("#slider3 .irs").children().hasClass("irs-min")){
									if($("#slider3 .irs-from").text()!=='0만원'){
									$("#slider3 .irs .irs-min").css("visibility","visible")
									}
									//$("#slider3 .irs .irs-min").removeClass("invisible");									
									}
									if($("#slider3 .irs").children().hasClass("irs-max")){
										if($("#slider3 .irs-to").text()!=='무제한'){
										$("#slider3 .irs .irs-max").css("visibility","visible")
										}
										//$("#slider3 .irs .irs-max").removeClass("invisible");
									}
							}
					  }
					 
					  
				    break;
				}
			}
		
				
			
			
			
		});
		
		 var custom_values = ['0만원','500만원','1000만원','1500만원','2000만원','2500만원','3000만원','3500만원','4000만원','4500만원',
			 '5000만원','5500만원','6000만원','6500만원','7000만원','7500만원','8000만원','8500만원','9000만원','9500만원','1억',
			 '1억500만원','1억1000만원','1억1500만원','1억2000만원','1억2500만원','1억3000만원','1억3500만원','1억4000만원','1억4500만원',
			 '1억5000만원','1억5500만원','1억6000만원','1억6500만원','1억7000만원','1억7500만원','1억8000만원','1억8500만원','1억9000만원',
			 '1억9500만원','2억','2억500만원','2억1000만원','2억1500만원','2억2000만원','2억2500만원','2억3000만원','2억3500만원','2억4000만원',
			 '2억4500만원','2억5000만원','2억5500만원','2억6000만원','2억6500만원','2억7000만원','2억7500만원','2억8000만원','2억8500만원','2억9000만원',
			 '2억9500만원','3억','3억500만원','3억1000만원','3억1500만원','3억2000만원','3억2500만원','3억3000만원','3억3500만원','3억4000만원',
			 '3억4500만원','3억5000만원','3억5500만원','3억6000만원','3억6500만원','3억7000만원','3억7500만원','3억8000만원','3억8500만원','3억9000만원',
			 '3억9500만원','4억','4억500만원','4억1000만원','4억1500만원','4억2000만원','4억2500만원','4억3000만원','4억3500만원','4억4000만원',
			 '4억4500만원','4억5000만원','4억5500만원','4억6000만원','4억6500만원','4억7000만원','4억7500만원','4억8000만원','4억8500만원','4억9000만원',
			 '4억9500만원','5억','5억500만원','5억1000만원','5억1500만원','5억2000만원','5억2500만원','5억3000만원','5억3500만원','5억4000만원',
			 '5억4500만원','5억5000만원','5억5500만원','5억6000만원','5억6500만원','5억7000만원','5억7500만원','5억8000만원','5억8500만원','5억9000만원',
			 '5억9500만원','6억','6억500만원','6억1000만원','6억1500만원','6억2000만원','6억2500만원','6억3000만원','6억3500만원','6억4000만원',
			 '6억4500만원','6억5000만원','6억5500만원','6억6000만원','6억6500만원','6억7000만원','6억7500만원','6억8000만원','6억8500만원','6억9000만원',
			 '6억9500만원','7억','7억500만원','7억1000만원','7억1500만원','7억2000만원','7억2500만원','7억3000만원','7억3500만원','7억4000만원',
			 '7억4500만원','7억5000만원','7억5500만원','7억6000만원','7억6500만원','7억7000만원','7억7500만원','7억8000만원','7억8500만원','7억9000만원',
			 '7억9500만원','8억','8억500만원','8억1000만원','8억1500만원','8억2000만원','8억2500만원','8억3000만원','8억3500만원','8억4000만원',
			 '8억4500만원','8억5000만원','8억5500만원','8억6000만원','8억6500만원','8억7000만원','8억7500만원','8억8000만원','8억8500만원','8억9000만원',
			 '8억9500만원','9억','무제한'];
		    // be careful! FROM and TO should be index of values array
		    var my_from = custom_values.indexOf(0);
		    var my_to = custom_values.indexOf('무제한');
		    
		    $("#deposits").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        from: my_from,
		        to: my_to,
		        step: 500,
		        values: custom_values,
		        onChange: function (data) {
		        	 
			            
			            $("#deposits_val1").text(data.from_value);
			        	$("#deposits_val2").text(data.to_value);
			        	$("#deposits_from").val(data.from_value)
			        	$("#deposits_to").val(data.to_value);
		            
		        },
		        onStart: function(data){
		        	$("#deposits_val1").text(data.from_value);
		        	$("#deposits_val2").text(data.to_value);
		        	$("#deposits_from").val(data.from_value)
		        	$("#deposits_to").val(data.to_value);
		        }
		        
		        
		       
		    });
		    
		 
		    
		    month=['0만원','10만원','20만원','30만원','40만원','50만원','60만원','70만원','80만원','90만원','100만원','110만원','120만원','130만원',
		    	'140만원','150만원','160만원','170만원','180만원','190만원','200만원','210만원','220만원','230만원','240만원','250만원','260만원',
		    	'270만원','280만원','290만원','300만원','무제한']
		    $("#monthmoenys").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        from: 0,
		        to: 300,
		        values:month, 
		        step: 5,
		        grid:true,
		        onChange: function (data) {
		        	 console.log(data.from);
			            
			            $("#monthmoenys_val1").text(data.from_value);
			        	$("#monthmoenys_val2").text(data.to_value);
			        	$("#monthmoenys_from").val(data.from_value)
			        	$("#monthmoenys_to").val(data.to_value);
		            
		        },
		        onStart: function(data){
		        	$("#monthmoenys_val1").text(data.from_value);
		        	$("#monthmoenys_val2").text(data.to_value);
		        	$("#monthmoenys_from").val(data.from_value)
		        	$("#monthmoenys_to").val(data.to_value);
		        }
		        
		       
		    });
		    trade=[]
			for(i=0;i<150000;i+=1000){
				if(i>10000){
					t=i/10000;
					a=i%10000;
					t=Math.floor(t);
					text=t+'억'+a+'만원'
					if(a===0){
					text=t+'억'						
					}
					trade.push(text)
				}else{
				trade.push(i+'만원');					
				}
				
			}
		    trade.push("무제한")
		    $("#trades").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:trade, 
		        step: 5,
		        onChange: function (data) {
		        	
			           
			            $("#trades_val1").text(data.from_value);
			        	$("#trades_val2").text(data.to_value);
			        	$("#trades_from").val(data.from_value)
			        	$("#trades_to").val(data.to_value);
		            
		        },onStart: function(data){
		        	$("#trades_val1").text(data.from_value);
		        	$("#trades_val2").text(data.to_value);
		        	$("#trades_from").val(data.from_value)
		        	$("#trades_to").val(data.to_value);
		        }
		        
		       
		    });
		    var roomArea=[]
		    for(i=0;i<=115;i++){
		    	var pung=i/3.305785;
		    	pung=Math.floor(pung);
		    	roomArea.push(i+"m²("+pung+")평")
		    }
		    roomArea.push("무제한")
		    $("#roomArea").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:roomArea, 
		        step: 5,
		        onChange: function (data) {
		        	 
			            $("#roomArea_val1").text(data.from_value);
			        	$("#roomArea_val2").text(data.to_value);
			        	$("#roomArea_from").val(data.from_value)
			        	$("#roomArea_to").val(data.to_value);

		        },onStart: function(data){
		        	$("#roomArea_val1").text(data.from_value);
		        	$("#roomArea_val2").text(data.to_value);
		        	$("#roomArea_from").val(data.from_value)
		        	$("#roomArea_to").val(data.to_value);
		        }
		        
		       
		    });
		    
		    
		    roomCare=[]
			for(i=0;i<=50;i+=2){
				roomCare.push(i+"만원")
				
			}
		    roomCare.push("무제한")
		    $("#roomCare").ionRangeSlider({
		    	skin: "round",
		        type: "double",
		        min: 0,
		        max: 300,
		        from: 0,
		        to: 300,
		        values:roomCare, 
		        step: 5,
		        onChange: function (data) {
		            console.log(data.from);
		            console.log(data.to);
		            console.log(data);
		            console.log(data.from_value);
		            console.log(data.to_value);
		           
		            $("#roomCare_val1").text(data.from_value);
		        	$("#roomCare_val2").text(data.to_value);
		        	$("#roomCare_from").val(data.from_value)
		        	$("#roomCare_to").val(data.to_value);
		            
		        },onStart: function(data){
		        	$("#roomCare_val1").text(data.from_value);
		        	$("#roomCare_val2").text(data.to_value);
		        	$("#roomCare_from").val(data.from_value)
		        	$("#roomCare_to").val(data.to_value);
		        }
		        
		       
		    });
		    
		    
		    
	});
	
	function search_build(text){
		if (text==="room"){
			$(".apt").prop( "checked", false );
			$(".store").prop( "checked", false );
		}else if(text==="apt"){
			$(".room").prop( "checked", false );
			$(".store").prop( "checked", false );
		}else if(text==="store"){
			$(".apt").prop( "checked", false );
			$(".room").prop( "checked", false );
		}
	}
	// 검색필터 적용시키는 function
	function submit(){		
		$("#keyword_val").val($("#keyword").val());
		search_Ajax($('#search_form'),'filter')		
	}
	//검색버튼클릭시 실행되는 function
	function search_estate(){
		
		$("#keyword").val($("#keyword_val").val());
		console.log($("#keyword").val());
		search_Ajax($('#search_form'),'button')
	}
	
	// ajaxfunction
	function search_Ajax(data,text){
		var formData='';
		
		formData= data.serialize();
		
		$("#nowPage").val("1");
		$.ajax({
			cache: false,
			url:'estatelist',
	        type: 'POST',
	        data: formData,
	        success: function(data){
	        	$('#listtarget').html(data);
				$("#cntPerPage_val").val($('#cntPerPage').val());
	        }
		});
	}
</script>