$(function(){
	$(".typer").typed({
		strings : [ " C조", "Semi Project", " CMJ ", " " ],
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
	
}); 