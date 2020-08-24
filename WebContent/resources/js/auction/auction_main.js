	$(document).ready(function() {
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
	}); 
// 	function set_bannerimg(){
// 		$.each(banimg, function(i, v) {
// 			$('.' + i).attr("src",v);
// 		});
// 	}
	
// 	var banimg = {
// 		"r1" : 'images/kosmo.jsp',
// 		"r2" : 'images/ko1.JSP',
// 		"r3" : 'images/bu2.jsp',
// 	};
	
	
	function set_bantxt() {
		$.each(bantxt, function(i, v) {
			$('.' + i).append(v);
		});
	}
	
	var bantxt = {
		"r1" :
	        '<p class="bantxt" style="color:#70727f; left: 20%;"><span class="bantxt-bold">[아파트형공장]</span><br>'+
	            '<span class="bantxt-bold">서울 특별시 금천구 가산동 426-5 월드 메르디앙 <br>벤처 센터2차 410호</span><br>'+
	            '<span class="bantxt-bold">[최저가]324,270,000</span>'+
	        '</p>',
        "r2" :
	        '<p class="bantxt" style="color:#70727f; left: 80%;"><span class="bantxt-bold">[아파트형공장]</span><br>'+
	            '<span class="bantxt-bold">서울 특별시 구로구 구로동 197-7번지 에이스  <br>테크노 타워 2 6층 602-1호</span><br>'+
	            '<span class="bantxt-bold">[최저가]160,973,000</span>'+
	        '</p>',
		"r3" :
	        '<p class="bantxt" style="color:#70727f; left: 20%;"><span class="bantxt-bold">[주택/빌라]</span><br>'+
	            '<span class="bantxt-bold">서울 종로구 청운동 52-19번지</span><br>'+
	            '<span class="bantxt-bold">[최저가]30,000,000,000</span>'+
	        '</p>'
	};