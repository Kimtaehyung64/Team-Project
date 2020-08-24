<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50">
	<div class="container">Copyright ⓒ Your Website 2020</div>
</footer>
<!-- Bootstrap core JS-->

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="resources/js/text.js"></script>
<script src="resources/js/ion.rangeSlider.min.js"></script>
<script>
	$(function() {
		$(".irs-from").addClass('invisible');
		$(".irs-to").addClass('invisible');
		var invisible = 'invisible';
		var visible = 'visible';
		var className = 'invisible';
	
		$('.filter-div').children('.btn').click(function() {

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
				console.log(i+"번째 check : "+check)
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
					$(this).children('.sub-menu').removeClass("invisible")
							.addClass('visible');
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
