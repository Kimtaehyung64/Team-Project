<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="..\include\header_index.jsp"%>
<link href="resources/css/auction/payment.css?after" rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet"/>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>
.paymentFirst {
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
}
.paymentBody {
	background-color: #FFFFFF;
	max-width: 500px;
	margin: 0 auto;
	border-radius: 10px;
	margin-top: 200px;
	height: 450px;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
}
#title {
	text-align: center;
	font-size: 25px;
	padding-top: 20px;
}
#payment {
	width: auto; 
	height: auto;
}
#payment > div{
	text-align: center;
}
#cc, #dd{
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	width: 110px;
	text-align: center;
}
#payment1{
	text-align: center;
	border-bottom: 1px solid white;
	margin: 0 auto;
	margin-top: 20px;
}
em{
	color: #F24607;
	font-style: normal;
}
.box{
	border: 2px solid #004358;
	width: 150px;
	height: 150px;
}
.box:hover{
	border: 2px solid #FD7400;
	cursor: pointer;
}
.box > p{
	height: 50px;
	padding-top: 20px;
}
.st.box{
	margin-left: 5px;
	margin-right: 5px;
}
.return{
	height: 100px;
}
p{
	margin-top: 0px;
	margin-bottom: 0px;
}
a{
	text-decoration: line-through;
	color: red;
	font-size: 15px;
}
a:hover{
	color:red;
	text-decoration: line-through;
}
/*  */
#dd{
	margin-right: 15px;
}
/*  */
</style>
<div class="paymentFirst">
	<section class="projects-section" id="projects">
		<div class="paymentBody">
			<div id="title">
				<p style="border-bottom: 1px solid #E6E6E6; padding-bottom: 10px;"><em>연장</em>하실 개월 수를 선택해주세요.</p>
			</div>
			<form method="post" action="premiumProlongpay" id="premiumProlongpay">
				<div id="payment">
				<div style="padding-top:15px;"> 
					구독 종료일  :<input type="text" value="" id="cc" readonly="readonly"><br>
					연장된 종료일 :<input type="text" value="" id="dd" readonly="readonly">
				</div>
		</div>
		<div id="payment1">
		<input type="hidden" value="" id="ppay" name="ppay">
		<input type="hidden" value="" id="psdate" name="psdate">
		<input type="hidden" value="" id="pedate" name="pedate">
		<input type="hidden" value="" id="monthnum" name="monthnum">
		<input type="hidden" value="${user.anum }" name="anum" id="anum">
			<div style="display: inline-flex;">
				<div class="basic box" id="basic">
				<input type="hidden" value="1" id="one">
				<p><em>1</em>개월 연장</p>
				<div class="basic return" style="padding-top:15px;">29,900원</div>
				</div>
				
				<div class="st box" id="st">
				<input type="hidden" value="3" id="three">
				<p><em>3</em>개월 연장</p>
				<div class="st return" style="padding-top:5px;">
					<a>월 29,900원</a>
					<p>월 23,900원</p>
				</div>
				
				</div>
				<div class="pr box" id="pr">
				<input type="hidden" value="12" id="twelve">
				<p><em>12</em>개월 연장</p>
				<div class="pr return" style="padding-top:5px;">
					<a>월 29,900원</a>
					<p>월 18,900원</p>
				</div>
				</div>
			</div>
				<div style="padding-top:40px;">
					<button type="button" class="button4" id="ff" onclick="location='index#footerMenu69'"><i class="fas fa-home"></i>&nbsp;메인으로</button>
					<button type="button" class="button3" id="ee">다음으로&nbsp;<i class="fas fa-chevron-right"></i></button>
				</div>
			</div>
			</form>
		</div>
	</section>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
		var date = new Date();
		date = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
				+ date.getDate();
		var month = new Date();
		month = month.getFullYear() + "-" + (month.getMonth() + 2) + "-"
				+ month.getDate();
		var month1 = new Date();
		month1 = month1.getFullYear() + "-" + (month1.getMonth() + 4) + "-"
				+ month1.getDate();
		var month2 = new Date();
		month2 = (month2.getFullYear() + 1) + "-" + (month2.getMonth() + 1)
				+ "-" + (month2.getDate() - 1);
		$(function() {
			var psdate = "${vo.pedate}";
			var psdate_d = psdate.substr(0,10);
			var prolong = "${vo.pedate}";
			var re_prolong1 = prolong.substr(0,4) + "-"+ (Number(prolong.substr(5,2))+1 )+ "-" + prolong.substr(8,2) ; 
			var re_prolong3 = prolong.substr(0,4) + "-"+ (Number(prolong.substr(5,2))+3 )+ "-" + prolong.substr(8,2) ; 
			var re_prolong12 = (Number(prolong.substr(0,4))+1)+"-"+prolong.substr(5,2)+"-"+prolong.substr(8,2); 
/* 			console.log((Number(re_prolong3.substr(5,2)) ));
			console.log(typeof((Number(prolong.substr(5,2))+3 ))); */
			$('#cc').val(psdate_d);
			$('#basic').click(function() {
				
				alert("1개월을 선택하셨습니다.");
				$('.basic.box').css('border', '2px solid #FD7400');
				$('.st.box').css('border','2px solid #004358');
				$('.pr.box').css('border', '2px solid #004358');
				
				$('#ppay').val(29900);
				$('#psdate').val(psdate_d);
				if(Number(re_prolong1.substr(5,2)) > 12 ){
				var month =	Number(re_prolong1.substr(5,2) - 12) ;
				rere_prolong1 = (Number(prolong.substr(0,4))+1) + "-"+ month + "-" + prolong.substr(8,2) ; 
					$('#pedate').val(rere_prolong1);
					$('#dd').val(rere_prolong1);
					console.log(rere_prolong1);
				}else{
					$('#pedate').val(re_prolong1);
					$('#dd').val(re_prolong1);
					console.log(re_prolong1);
				}
				
				
				$('#monthnum').val($('#one').val());

			});
			$('#st').click(function() {
				console.log($('#f1').val())
			
				
				alert("3개월을 선택하셨습니다.");
				$('.basic.box').css('border', '2px solid #004358');
				$('.st.box').css('border','2px solid #FD7400');
				$('.pr.box').css('border', '2px solid #004358');
				
				$('#ppay').val(23900 * 3);
				$('#psdate').val(psdate_d);
				if(Number(re_prolong3.substr(5,2)) > 12 ){
				var month =	Number(re_prolong3.substr(5,2) - 12) ;
				rere_prolong3 = (Number(prolong.substr(0,4))+1) + "-"+ month + "-" + prolong.substr(8,2) ; 
					$('#pedate').val(rere_prolong3);
					$('#dd').val(rere_prolong3);
					console.log(rere_prolong3);
				}else{
					$('#pedate').val(re_prolong3);
					$('#dd').val(re_prolong3);
					console.log(re_prolong3);
				}
				
				$('#monthnum').val($('#three').val());
			});
			$('#pr').click(function() {
				/* console.log($('#f1').val()) */
				
				$('#dd').val(re_prolong12);
				alert("12개월을 선택하셨습니다.");
				$('.basic.box').css('border', '2px solid #004358');
				$('.st.box').css('border','2px solid #004358');
				$('.pr.box').css('border', '2px solid #FD7400');
				
				$('#ppay').val(18900 * 12);
				$('#psdate').val(psdate_d);
				$('#pedate').val(re_prolong12);
				$('#monthnum').val($('#twelve').val());
			});
			

			$('#ee').click(function() {
				if ($('#dd').val() == "") {
					alert('연장하실 개월 수를 선택해 주세요.');
				} else{
					$("#premiumProlongpay").submit();
				}
					
			});
		});
</script>