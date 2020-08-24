<!-- Hyundoo JS-->
	/*
	 * $(function() { var url = 'gu' $.ajax({ url : url, success : function(d) {
	 * $('#combobox1').html(d); }, error : function(e) { console.log("Error : " +
	 * e); } });
	 */
		/*
		 * $('#combobox1') .change( function() { //마커 추가하기. var param =
		 * $(this).val(); var url =
		 * 'hyundoo.Project?page=commercial&subcode=6&guname=' +
		 * encodeURIComponent(param); $ .ajax({ url : url, success : function(d) {
		 * console.log(typeof (d)); var myObj = JSON.parse(d); var i = 0;
		 * //console.log(d); for ( var e in myObj) { //console.log("e : "+e);
		 * var marker = new naver.maps.Marker( { position : new
		 * naver.maps.LatLng( myObj[e].lat, myObj[e].lng), map : map }); } ; },
		 * error : function(e) { console.log("Error : " + e); } }); })
		 */
	// });
	$(function() {
		$('#combobox1')
				.change(
						function() {
							var param = $('#combobox1').val()
							var url = 'dong?guName='
									+ encodeURIComponent(param) 
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox2').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
							var url = 'information?guName='
									+ encodeURIComponent(param)
							$.ajax({
								url : url,
								success : function(d) { 
									$('#information').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
							var seoul = new naver.maps.LatLngBounds(
									new naver.maps.LatLng(37.42829747263545,
											126.76620435615891),
									new naver.maps.LatLng(37.7010174173061,
											127.18379493229875));
							var map = new naver.maps.Map(document
									.getElementById('map'), {
								minZoom : 10.5,
								zoom : 10.5,
								mapTypeId : 'normal',
								center : new naver.maps.LatLng(37.4098871,
										126.989261),
								maxBounds : seoul,
								baseTileOpacity : 0,
								scaleControl : false,
								logoControl : false,
								mapDataControl : false,
								zoomControl : false,
								mapTypeControl : false
							});

							/* var HOME_PATH = window.HOME_PATH || '.'; */
							naver.maps.Event.once(map, 'init_stylemap',
									function() {
										$.ajax({
											url : 'json/' + $(this).val()
													+ '.json',
											dataType : 'json',
											success : startDataLayer
										});
									});
							var location = $(this).val();
							console.log(location);
							var url = "productdesc?location="+encodeURIComponent(location);
							$.ajax({
								url: url,
								success : function(d){
									$('#product').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							})
						});
		

		
		open_pop();
		
		
						});
		
	$(function() {
		$('#combobox2')
				.change(
						function() {
							var param = $('#combobox1').val()
							var param2 = $('#combobox2').val()
							var url = 'information2?guName='
									+ encodeURIComponent(param)
									+ '&dongName='
									+ encodeURIComponent(param2) 
							$.ajax({
								url : url,
								success : function(d) {
									$('#information').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});
	$(function() {
		var url = 'largename'
		$.ajax({
			url : url,
			success : function(d) {
				$('#combobox3').html(d);
			},
			error : function(e) {
				console.log("Error : " + e);
			}
		});
	});

	$(function() {
		$('#combobox3')
				.change(
						function() {
							var param = $('#combobox3').val()
							var url = 'mediumname?largeName='
									+ encodeURIComponent(param)
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox4').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});

	$(function() {
		$('#combobox4')
				.change(
						function() {
							var largeName = $('#combobox3').val();
							var mediumName = $('#combobox4').val();
							var url = 'smallname?largeName='
									+ encodeURIComponent(largeName)
									+ "&mediumName="
									+ encodeURIComponent(mediumName)
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox5').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});
	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제
		// 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("juso", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제
		// 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게
		// 됩니다.
		// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes,
		// resizable=yes");
	}
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		// document.form.roadFullAddr.value = roadFullAddr;
		$('#roadAddrPart1').val(roadAddrPart1);
		$("#addrDetail").val(addrDetail);
		$("#zipNo").val(zipNo);
	}
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});
/*	function open_pop(){
		console.log('바뀜2??')
		$(".productdescmodal").click(function(){
		var atclno = $(this).val();
		console.log(atclno);
		var url = "productModal?atclno=" + atclno;
		$.ajax({
			url : url,
			success : function(d) {
				$("#myModal").html(d);
			},
			error:function(e){
				console.log(e);
			}
		})
		$("#myModal").show();
	});
	}*/
    $( document ).on('click', '.productdescmodal',function() {
    		if($("button.Cntcount").length>=3){
    			$("button.Cntcount").last().remove();
    		}
    		var pdnum = $(this).val();
    		console.log(pdnum);
    		var url = "productModal?pdnum=" + pdnum;
    		$.ajax({
			url : url,
			success : function(d) {
				$("#myModal").html(d);
			},
			error:function(e){
				console.log(e);
			}
    		})
			$("#myModal").show();
    		var pdnum = $(this).attr('value');
    		url = "recentCnt?pdnum="+ pdnum;
    		$.ajax({
    			url:url,
    			success : function(data){
    				$("#recentCnt").prepend(data); 
    			}
    		});
    	});
	function close_pop(flag) {
		$('#myModal').hide();
	};
	
	function open_pop2() {
		$('#myModal2').show();
	};
	// 팝업 Close 기능
	function close_pop2(flag) {
		$('#myModal2').hide();
	};
