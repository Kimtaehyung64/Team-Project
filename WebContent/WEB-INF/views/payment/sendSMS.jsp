<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/auction/main/bootstrap.css">
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.paymentThird {
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
}

.paymentBody {
	background-color: #FFFFFF;
	max-width: 550px;
	margin: 0 auto;
	margin-top: 200px;
	border-radius: 10px;
	height: 550px;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}

.title {
	text-align: center;
	font-size: 25px;
	padding-top: 20px;
	margin-right: 15px;
	margin-left: 15px;
	border-bottom: 1px solid #E6E6E6;
}

.paymentInfo {
	text-align: center;
	height: 90px;
}

.paymentInfo ul {
	list-style: none;
	padding: 0px;
	margin-top: 20px;
}

.paymentInfo li {
	font-size: 0.8125rem;
	color: #2E2EFE;
}

.paymentPhoneNumber {
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
}

#left {
	list-style: none;
	padding: 0px;
	margin-top: 1rem;
}

.paymentPhoneNumber li {
	color: #2E2EFE;
}

.button3 {
	height: 30px;
	background-color: #FFFFFF;
	border: 2px solid #D8D8D8;
	color: #000000;
	line-height: 3px;
	font-size: 14px;
	padding: 0px 15px 0px 15px;
	width: 120px;
	margin-left: 5px;
}

.button3:hover {
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}

.subTitle {
	font-size: 20px;
}

#inputPhoneNumber1 {
	width: 85px;
	text-align: center;
	font-size: 14px;
}

#inputPhoneNumber2, #inputPhoneNumber3 {
	width: 100px;
	text-align: center;
	font-size: 14px;
}

.paymentCertify {
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
}

.paymentButton {
	margin-top: 20px;
	text-align: center;
}

.button4 {
	height: 40px;
	background-color: #FFFFFF;
	border: 2px solid #D8D8D8;
	color: #000000;
	line-height: 3px;
	font-size: 14px;
	padding: 5px 15px 5px 15px;
	width: 150px;
}

.button4:hover {
	border: 2px solid #004358;
	background-color: #FFFFFF;
	color: #000000;
}

.button5 {
	height: 40px;
	background-color: #FFFFFF;
	border: 2px solid #D8D8D8;
	color: #000000;
	line-height: 3px;
	font-size: 14px;
	padding: 5px 15px 5px 15px;
	width: 150px;
}

.button5:hover {
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}

#projects {
	overflow: hidden;
	height: 100%;
}

#inputCertifiedNumber {
	text-align: center;
}
button.disabled{
	pointer-events: none;
  	cursor: default;
}
</style>
</head>
<body>
	<div class="paymentThird">
		<section class="projects-section" id="projects">
			<!-- //content-->
			<div class="paymentBody">
				<div class="title">
					<p>휴대전화 인증</p>
				</div>
				<form action="paymentUpdate" method="post" name="seacu">
					<div>
						<input type="hidden" value="${user.anum}" name="pnum"> <input
							type="hidden" value="구독" name="pgubun"> <input
							type="hidden" value="${vo.ppay}" name="ppay"> <input
							type="hidden" value="${vo.pway}" name="pway"> <input
							type="hidden" value="${vo.psdate}" name="psdate"> <input
							type="hidden" value="${vo.pedate}" name="pedate"> <input
							type="hidden" value="${vo.monthnum}" name="monthnum"> <input
							type="hidden" value="${vo1.inment}" name="inment"> <input
							type="hidden" value="${vo1.kinds}" name="kinds"> <input
							type="hidden" value="${vo1.mentnum}" name="mentnum">
						<div class="container">
							<div class="paymentPhoneNumber">
								<p class="subTitle">휴대전화번호 입력</p>
								<input type="text" id="inputPhoneNumber1"
									name="inputPhoneNumber" maxlength="3" title="휴대전화 첫번째 자리 입력"
									required="required"> - <input type="text"
									id="inputPhoneNumber2" name="inputPhoneNumber" maxlength="4"
									title="휴대전화 가운데 자리 입력" required="required"> - <input
									type="text" id="inputPhoneNumber3" name="inputPhoneNumber"
									maxlength="4" title="휴대전화 끝자리 입력" required="required">
<!-- 								<input type="button" value="인증번호받기" title="인증번호받기"
									id="sendPhoneNumber" class="button3"> -->
								<button type="button" title="인증번호받기" id="sendPhoneNumber" class="button3">
									인증번호받기
								</button>	
								<ul id="left">
									<li>* 휴대전화번호 입력 후 인증번호 받기 버튼을 눌러 주세요.</li>
									<li>* 휴대전화 문자메시지에서 인증번호를 확인 후 인증번호 입력란에 인증번호를 입력하세요.</li>
								</ul>
							</div>
							<div class="paymentCertify">
								<p class="subTitle">인증번호 입력</p>
								<input type="text" id="inputCertifiedNumber"
									name="inputCertifiedNumber" maxlength="4" value=""
									required="required">	
								<div class="paymentInfo">
									<ul>
										<li>* 결제 간 보안을 위해 휴대전화 인증을 시행하고 있습니다.</li>
										<li>* 메시지 수신이 가능한 휴대전화로 인증번호를 받으실 수 있습니다.</li>
										<li>* 통신사의 사정으로 휴대전화 인증을 위한 메시지를 받지 못하는 경우가 발생할 수 있습니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="paymentButton">
						<input type="button" value="뒤로가기" title="뒤로가기"
							class="button5" onclick="location='payback'"> 
						<input type="submit" value="휴대전화인증 확인" title="휴대전화인증 확인" id="checkBtn" name="checkBtn" class="button4">
					</div>
				</form>
			</div>
			<!-- content//-->
		</section>
	</div>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
	$('#sendPhoneNumber').click(function(e) {
		phoneNumber = $('#inputPhoneNumber1').val()
				+ $('#inputPhoneNumber2').val()
				+ $('#inputPhoneNumber3').val();
		if ($('#inputPhoneNumber1').val() == "" || $('#inputPhoneNumber2').val() == "" || $('#inputPhoneNumber3').val() == "" ) {
			alert("휴대폰 번호를 입력해 주세요.")
			$('form').bind('submit', submitAction);
		} else {

		}
		console.log(phoneNumber)
		alert("인증번호 전송완료!");
		var time = 180;
		var min = ""; // 분
		var sec = ""; //초
		var x = setInterval(function(){
			min = parseInt(time/60);
			sec = time%60;
		document.getElementById("sendPhoneNumber").innerHTML = min + "분" + sec + "초";
		$('#sendPhoneNumber').addClass('disabled');	
		$('#sendPhoneNumber').css('color', '#FF0000');
		time --;
		if(time< 0){
			clearInterval(x);
			document.getElementById("sendPhoneNumber").innerHTML = "시간초과";
			alert("입력값 입력시간이 경과되었습니다. 다시 입력해주세요.")
			$('#sendPhoneNumber').css('color', '#000000');
			location.reload();
		}	
		},1000)
		$.ajax({
					url : "sendSMS2?phoneNumber="
							+ phoneNumber,
					success : function(res) {
						console.log(res)
						$('#checkBtn').click(
										function(e) {
											if ($.trim(res) == $(
													'#inputCertifiedNumber').val()) {
												alert("인증성공! 휴대폰 인증이 정상적으로 완료되었습니다.!")
												location.href = "pay3"
											} else {
												alert("인증번호가 맞지 않습니다. 다시 입력해주세요.")
												e.preventDefault()

											}
											var submitAction = function(e) {
												e.preventDefault();
											 	e.stopPropagation();
										};	
										})
								}
					})
	});
</script>
</body>
</html>