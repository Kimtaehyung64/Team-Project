<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="resources/js/text.js"></script>
<style>
.footerContainer{
	width: 100%;
	height: 300px;
	font-family: 'Noto Sans KR',sans-serif;
	background-color: #000000;
	color: #FFFFFF;
}
.footerTop{
	width: 100%;
    height: 80px;
}
.footerCenter{
	width: 100%;
    padding: 35px 0px 0px 250px;
}
.footerCenter > div{
	display: flex;
    -webkit-box-align: center;
    align-items: center;
    width: 1200px;
    height: 100%;
    margin: 0px auto;
}
.footerCenterLeftTop{
	width: 227px;
    flex: 0 0 auto;
}
.footerCenterLeftTop > p{
	font-size: 16px;
    line-height: 14px;
    color: #FFFFFF;
}
.footerCenterLeftTop > h1{
	height: 26px;
    margin-top: 12px;
    font-size: 30px;
    font-weight: bold;
    line-height: 26px;
    color: #FFFFFF;
}
.footerCenterLeftBottom{
	margin-top: 15px;
}
.footerCenterLeftBottom > p{
	color: #848484;
	font-size: 14px;
    line-height: 22px;
    margin-bottom: 0px;
}
.middleP1{
	color: #848484;
	font-size: 14px;
    line-height: 14px;
    margin-bottom: 0px;
    margin-top: 25px;
}
.middleP2{
	margin-top: 15px;
	color: #848484;
	font-size: 14px;
    line-height: 14px;
    margin-bottom: 0px;
}
.middleP3{
	margin-top: 23px;
    color: #848484;
    font-size: 14px;
    line-height: 14px;
    margin-bottom: 0px;
}
</style>
<div class="footerContainer">	
	<div class="footerTop">
	
	</div>
	<div class="footerCenter">
		<div>
			<div class="footerCenterLeftTop">
				<p>고객센터</p>
				<h1>7760-3932</h1>
				<div class="footerCenterLeftBottom">
					<p>10:00 - 18:30</p>
					<p>토요일, 일요일, 공휴일 휴무</p>
				</div>
			</div>
			<div class="footerCenterMiddle">
				<p class="middleP1">
					<span>사업자 번호: 000-00-00000 | </span>
					<span>통신판매업신고번호: 제2020-서울 구로-77777호 | </span>
					<span>대표: 박현두, 조태준</span>
				</p>
				<p class="middleP2">
					주소: (153-759) 서울시 금천구 가산동 426-5 월드메르디앙 2차 413호
				</p>
				<p class="middleP3">
					Copyright (C) 2020 KOSMO64. All rights reserved.
				</p>
			</div>
		</div>
	</div>
</div>
<script src="resources/js/ion.rangeSlider.min.js"></script>
<script>
	$(function() {
		$(".irs-from").addClass('invisible');
		$(".irs-to").addClass('invisible');
		var invisible = 'invisible';
		var visible = 'visible';
		var className = 'invisible';
	
		$('.filter-div').children('.filterButton').click(function() {

			$('.filter-page').removeClass(invisible);
			$('.filter-page').addClass(visible);
			
			$(".irs-from").removeClass(invisible);
			$(".irs-to").removeClass(invisible);
			$(".irs-from").addClass(visible);
			$(".irs-to").addClass(visible);
			
			 
			if (className === 'visible') {

				$('.filter-page').slideUp(1000);
				
				
			} else {
 				
				$('.filter-page').slideDown(1000);
			}
			className = visible;
			visible = invisible;
			invisible = className;
			
			
			$(".rentv").each(function(i) {
				var check=$(this).prop("checked")
				
				if(i===0 && check===false){
						
					if($("#slider2 .irs-from").hasClass("visible")){
						
						$("#slider2 .irs-from").removeClass("visible");
						$("#slider2 .irs-to").removeClass("visible");
					
					}
					
						$("#slider2 .irs-from").addClass("invisible");
						$("#slider2 .irs-to").addClass("invisible");
					
					
				}else if(i===1 && check===false){
					type=$(".rentv:nth-of-type(1)").prop('checked')
					if(!type){
						if($("#slider1 .irs-from").hasClass("visible")){
							
						$("#slider1 .irs-from").removeClass("visible");
						$("#slider1 .irs-to").removeClass("visible");							
						}
						$("#slider1 .irs-from").addClass("invisible");
						$("#slider1 .irs-to").addClass("invisible");
					}
					
					
						
						
					
				}else if(i===2 && check===false){
					
					if($("#slider3 .irs-from").hasClass("visible")){
						$("#slider3 .irs-from").removeClass("visible");
						$("#slider3 .irs-to").removeClass("visible");
					}
						
					
						$("#slider3 .irs-from").addClass("invisible");
						$("#slider3 .irs-to").addClass("invisible");
						
					
					
				}
				else if(i===0 && check===true){
					
						$("#slider1 .irs-from").addClass("visible");
						$("#slider1 .irs-to").addClass("visible");
						$("#slider2 .irs-from").addClass("visible");
						$("#slider2 .irs-to").addClass("visible");
						
						$("#slider1 .irs-from").removeClass("invisible");
						$("#slider1 .irs-to").removeClass("invisible");
						$("#slider2 .irs-from").removeClass("invisible");
						$("#slider2 .irs-to").removeClass("invisible");
			
					
				}else if(i===1 && check===true){
					
						$("#slider1 .irs-from").addClass("visible");
						$("#slider1 .irs-to").addClass("visible");
						$("#slider1 .irs-from").removeClass("invisible");
						$("#slider1 .irs-to").removeClass("invisible");
					
					
				}else if(i===2 && check===true){
					
						$("#slider3 .irs-from").addClass("visible");
						$("#slider3 .irs-to").addClass("visible");
						$("#slider3 .irs-from").removeClass("invisible");
						$("#slider3 .irs-to").removeClass("invisible");
				
					
				}
			})
		});
		$('.sub-menu').parent("li").hover(
				function() {
					// 인
					$(this).children('.sub-menu').removeClass("invisible").addClass('visible');
					$('#mainnav2').css("z-index", '0');
					$('#search-nav').css("z-index", '10');
				},
				function() {
					// 아웃
					$(this).children('.sub-menu').removeClass("visible")
							.addClass('invisible');
					$('#mainnav2').css("z-index", '1030');
					$('#search-nav').css("z-index", '1030');
				});
		
		
		
		
	});
</script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> 
<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
</body>
</html>
