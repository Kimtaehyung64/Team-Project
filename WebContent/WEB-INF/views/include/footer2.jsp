<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50">
	<div class="container">Copyright ⓒ Your Website 2020</div>
</footer>
<!-- Bootstrap core JS-->

<!-- 	   <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script> -->
<!-- Third party plugin JS-->
<!-- <script -->
<!-- 	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script> -->
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="resources/js/text.js"></script>
<script>
	$(function() {
		$(".typer").typed({
			strings : [ " C조 Project", " Test용 문구", " 조장 : 박현두", " 대박임" ],
			typeSpeed : 500,
			backDelay : 1500,
			showCursor : false
		});
		$('#filter_close').click(
				function() {
					$('.filter-page').slideUp(1000).addClass('invisible').removeClass('visible');
					className = 'invisible';
					invisible = 'invisible';
					visible = 'visible';
				}) 
		$('.card').click(function() {
			var num = $(this).index();
			console.log(num)
		});
		var invisible = 'invisible';
		var visible = 'visible';
		var className = 'invisible';
		$('.filter-div').children('.btn').click(function() {

			$('.filter-page').removeClass(invisible);
			$('.filter-page').addClass(visible);
			if (className === 'visible') {

				$('.filter-page').slideUp(1000);

			} else {

				$('.filter-page').slideDown(1000);
			}
			className = visible;
			visible = invisible;
			invisible = className;
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
</body>
</html>
