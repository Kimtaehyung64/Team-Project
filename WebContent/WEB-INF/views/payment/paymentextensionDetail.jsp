<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/auction/payment.css?after" rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet"/>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
div.final_price {
	border-top: 1px solid #E6E6E6;
	border-bottom: 1px solid #E6E6E6;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: bold;
	color: #F24607;
	text-align: center;
	line-height: 230%;
	width: 700px;
	padding: 0px;
	margin-left: 50px;
	margin-right: 50px;
}
#cardnumber1, #cardnumber2, #cardnumber3, #cardnumber4 {
	width: 65px;
}
.container {
	margin-top: 20px;
}
/*  */
.paymentSecond {
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
}
.payCheck{
    padding-bottom: 10px;
    width: 700px;
    border-bottom: 1px solid #E6E6E6;
    margin-left: 50px;
}
.paymentBody {
	background-color: #FFFFFF;
	max-width: 800px;
	margin: 0 auto;
	margin-top: 40px;
	border-radius: 10px;
	height: 850px;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}
#title {
	text-align: center;
	font-size: 25px;
	padding-top: 20px;
}
.etc_payment {
	border-bottom: 1px solid #E6E6E6;
	margin-left: 50px;
	margin-right: 50px;
}
.paymentCard {
	display: flex;
	padding-top: 10px;
}
.paymentCardLabel {
	font-size: 17px;
	margin-top: 5px;
}
label {
	margin-bottom: 10px;
}
.paymentNotice {
	margin-left: 50px;
	margin-right: 50px;
	padding-top: 10px;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 10px;
}
#Table1 {
	display: flex;
	padding-top: 10px;
	margin-left: 50px;
	margin-right: 50px;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 10px;
}
.TotalCost {
	width: 800px; 
	text-align : center;
	font-size: 25px;
	text-align: center;
}
.id_agrmt{
	border: 2px solid #004358;
	width: 700px;
	margin-left: 50px;
	margin-right: 50px;
}
.id_agrmt > p{
	 text-align: center;
	 font-size: 15px;
}
.checkContainer{
	margin-left: 50px;
	margin-right: 50px;
	text-align: center;
}
.checkTag{
	font-weight: bold;
	font-size: 15px;
	margin-bottom: 15px;
}
.button3{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
    width: 150px;
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
    width: 150px;
}
.button4:hover{
	border: 2px solid #004358;
	background-color: #FFFFFF;
	color: #000000;
}
#projects{
	overflow: hidden;
    height: 100%;
}
</style>
</head>
<body>
<div class="paymentSecond">
	<section class="projects-section" id="projects">
		<div class="paymentBody">
			<form action="myProlongup" method="post">
				<div id="title">
					<p class="payCheck">결제확인창</p>
				</div>
				
				<!-- 신용카드 / 무통장입금 체크 -->
				<div class="etc_payment">
					<span><label class="selected">
					<input type="radio" name="pway" class="pay1" id="card" checked="checked" value="신용카드">신용카드</label> 
					<span><label style="margin-left: 5px;"><input type="radio"
						id="bank1" name="pway" class="pay1" value="무통장입금">무통장입금</label></span>
					</span>
					<input type="hidden" value="${user.anum}" name="pnum">
					<input type="hidden" value="구독" name="pgubun">
					<input type="hidden" value="${vo.ppay + bvo.ppay}" name="ppay">
					<input type="hidden" value="${vo.psdate}" name="psdate" id="psdate">
					<input type="hidden" value="${bvo.pedate }" name="pedate">
					<input type="hidden" value="${vo.monthnum + bvo.monthnum}" name="monthnum">
				</div>
				
		<!-- 신용카드 : 카드 선택 & 카드 번호 & 할부 방식 & 기타 고지사항 -->
		<div id="aa">
			<div class="paymentCard">
				<div style="padding-left: 50px; margin-right: 20px;">
					<p class="paymentCardLabel">카드선택</p>
					<div id="target">
						<select name="kinds">
							<option>${vo.paydetailvo.kinds}</option>
							<option>국민은행</option>
							<option>하나은행</option>
							<option>기업은행</option>
							<option>농협은행</option>
							<option>신한은행</option>
							<option>새마을금고</option>
							<option>제일은행</option>
							<option>우체국은행</option>			
						</select>
					</div>
				</div>
				<div>
					<p class="paymentCardLabel">할부방식</p>
					<div style="margin-right: 20px;">
						<select name="inment">
							<option value="0">일시불</option>
							<option value="1">1개월</option>
							<option value="2">2개월</option>
							<option value="3">3개월</option>
							<option value="4">4개월</option>
							<option value="5">5개월</option>
							<option value="6">6개월</option>
							<option value="7">7개월</option>
							<option value="8">8개월</option>
							<option value="9">9개월</option>
							<option value="10">10개월</option>
							<option value="11">11개월</option>
							<option value="12">12개월</option>
						</select>
					</div>
				</div>
				<div>
					<p class="paymentCardLabel">카드번호</p>
					<div>
						<input type="text" min="1000" max="9999" maxlength="4"  id="cardnumber1"  required="required" value=""> -
						<input type="text" min="1000" max="9999" id="cardnumber2" maxlength="4" required="required" value=""> -
						<input type="text" min="1000" max="9999" id="cardnumber3" maxlength="4" required="required" value=""> -
						<input type="text" min="1000" max="9999" id="cardnumber4" maxlength="4"  required="required" value="">
						<input type="hidden" name="mentnum" id="mentnum" value="">
					</div>
				</div>
			</div>
			<div class="paymentNotice">
				<div>
					<a href="#"><span>간편결제안내</span></a> | <a href="#"><span>공인인증안내</span></a> | 
					<a href="#"><span>안전결제안내</span></a> | <a href="#"><span>안심클릭안내</span></a> | 
					<a href="#"><span>해외발급카드안내</span></a>
				</div>	
			</div>
		</div>
		
		<!-- 무통장입금 :  -->
		<div id="PayOnline">
			<input type="hidden" value="PayMethod_Set"
				name="PayMethod_SetClientID">
			<div id="Table1">
				<div style="margin-right: 15px;">
					<p class="paymentCardLabel">입금하실 은행</p>
						<select>
								<option>${vo.paydetailvo.kinds}</option>
								<option>국민은행</option>
								<option >기업은행</option>
								<option >농협은행</option>
								<option >시티은행</option>
								<option>신한은행</option>
								<option >우리은행</option>
								<option >우체국은행</option>
								<option >제일은행</option>
								<option >하나은행</option>
						</select>
				</div>
					<div style="margin-right: 15px;">
						<p class="paymentCardLabel" style="text-align: center;">예금주 확인</p>
						<p>㈜코스모 클라쓰</p>
					</div>
					<div style="margin-right: 15px;">
						<p class="paymentCardLabel">계좌번호 입력</p>
						<input type="text" placeholder="계좌번호입력" id="bankbooknumber">
					</div>
					<div>
						<p class="paymentCardLabel">입금자 성명</p>
						<input class="form" type="text"
							maxlength="20" size="20" placeholder="성명" value="${sign.memberinfor.dname}" readonly="readonly">
					</div>
				</div>
			</div>
		
		<!-- 최종 결제 금액 -->
		<div class="container TotalCost">
			<span id="finalPayTxt">신용카드</span> 최종 결제금액
		</div>
		<div class="final_price container" id="CalcAmount">
			<span id="pay">${bvo.ppay}원</span>
		</div>
		
		<!-- 정보 제공 동의 -->
		<div class="my_agrmt_wrap container" style="padding-left:0px;">
		<p class="checkTag" style="width:800px; text-align: center;">
			<input type="checkbox" id="check" name="chk">&nbsp;개인정보 판매자 제공에 동의합니다.(필수)
		</p>
		<div>
			<div class="id_agrmt">
				<p style="font-size: 25px; border-bottom: 1px solid #E6E6E6;">개인정보 수집 내용</p>
				<p>제공받는 자 : 코스모 주식회사</p>
				<p>목적 : 구독권 결제 및 확인</p>
				<p>항목 : 성명, 주소, 연락처(안심번호 적용 시, 연락처는 제외), 개인통관고유부호(선택 시)</p>
				<p>보유기간 : 구매확정 후 3개월까지</p>
			</div>
		</div>
	</div>
	
	<!-- 개인 정보 수집 및 이용 동의 -->
	<div class="checkContainer">
		<p class="checkTag" style="margin-top: 15px;">
			<input type="checkbox" id="check" name="chk">&nbsp;개인정보 수집 및 이용에 동의합니다.(필수)
		</p>
		<p class="checkTag">		
			<input type="checkbox" id="check" name="chk">&nbsp;주문 상품정보에 동의합니다.(필수)
		</p>
		<p style="font-weight: bold; color: #004358; font-size: 15px;">
		<input type="checkbox" id="checkall">&nbsp;위의 사항에 대하여 모두 동의합니다.(모두 체크)
		</p>
		<div style="margin-top: 30px;">
		<button type="button" class="button4" onclick="location='index'"><i class="fas fa-home"></i>&nbsp;메인으로</button>
		<button type="submit" class="button3" id="button1"><i class="fas fa-key"></i>&nbsp;결제하기</button>
		</div>
		</div>
		</form>
		</div>
	</section>
</div>
	<script>
	var psdate = '${vo.psdate}';
	var psdate_1 = psdate.substr(0,10);
	
	var cardnumber = '${vo.paydetailvo.mentnum}';	
	var card1 = cardnumber.substr(0,4);
	var card2 = cardnumber.substr(5,4);
	var card3 = cardnumber.substr(10,4);
	var card4 = cardnumber.substr(15,4);
	
		$(function() {
			$('#psdate').val(psdate_1);
			
			$('#cardnumber1').val(card1);
			$('#cardnumber2').val(card2);
			$('#cardnumber3').val(card3);
			$('#cardnumber4').val(card4);
			
			$('#button1').click(function() {
				var cardnumber1 = $('#cardnumber1').val();
				var cardnumber2 = $('#cardnumber2').val();
				var cardnumber3 = $('#cardnumber3').val();
				var cardnumber4 = $('#cardnumber4').val();
				
				$('#mentnum').val(cardnumber1 + "-" + cardnumber2 + "-" + cardnumber3 + "-" + cardnumber4);
			});
			
			$('#aa').show(); //페이지를 로드할 때 표시할 요소
			$('#PayOnline').hide(); //페이지를 로드할 때 숨길 요소
			$('.pay1').change(function() {
				//alert($(this).attr('id'));
				if ($(this).attr('id') === 'bank1') {
					$('#aa').hide();
					$('#PayOnline').show(); //클릭 시 두 번째 요소 표시
				} else {
					$('#aa').show();
					$('#PayOnline').hide();
				}
				
			});
			$(document).ready(function(){
			    //최상단 체크박스 클릭
			    $("#checkall").click(function(){
			        //클릭되었으면
			        if($("#checkall").prop("checked")){
			            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			            $("input[name=chk]").prop("checked",true);
			            //클릭이 안되있으면
			            alert("모두 동의하시겠습니까?")
			            
			        }else{
			            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			            $("input[name=chk]").prop("checked",false);
			        }
			    })
			})
			$('#button1').click(function () {
			       if (!$('#check').is(':checked')) {
			           alert('필수 항목에 동의해주세요.');
			           return false;
			       }else{
			    	   alert('구독 연장이 완료되었습니다.');
			       }
			});
			// 숫자 입력 처리
			$("#cardnumber1,#cardnumber2,#cardnumber3,#cardnumber4,#bankbooknumber").keyup(function (event) {
		        regexp = /[^0-9]/gi;
		        v = $(this).val();
		        if (regexp.test(v)) {
		            $(this).val(v.replace(regexp, ''));
		        }
		    });
		});
	</script>
</body>
</html>