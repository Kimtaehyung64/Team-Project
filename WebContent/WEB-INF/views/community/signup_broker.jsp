<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <link href="resources/css/community/signup_broker.css" rel="stylesheet"> -->
<link href="resources/css/styles.css" rel="stylesheet"/>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* 200812 CSS 수정 */
.projects-section {
    padding: 0px;
}
p{
	margin-bottom: 0px;
}
.signUpBroker{
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
	overflow: hidden;
}
.signUpBody{
	background-color: #FFFFFF;
	max-width: 500px;
	width:500px;
	margin: 0 auto;
	border-radius: 10px;
	margin-top: 50px;
	height: 880px;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
}
.title{
	text-align: center;
	font-size: 25px;
	padding-top: 20px;
}
.title > p{
	border-bottom: 1px solid #E6E6E6; 
	padding-bottom: 10px; 
	margin-bottom: 20px;
}
.title > p > em{
	font-style: normal;
	color: #F25C05;
}

.signupArea{
	display: flex;
	font-size: 15px;
	margin-left: 50px;
	margin-right: 50px;
}
.signupLabel{
	font-size: 20px;
	margin-left: 50px;
	margin-bottom: 0px;
}
#aid{
	margin-right: 5px;
	width: 170px;
    height: 30px;
    border: 1px solid #004358;
}
.certify{
	height: 31px;
}
#certifyInsert{
	border: 1px solid #004358;
	width: 295px;
	background-color: #D8D8D8;
	margin-bottom: 20px;
	height: 30px;
}
#certifyArea{
	margin-left: 50px;
    margin-right: 50px;
    margin-top: 5px;
}
#apwd{
	width: 295px;
	height: 30px;
}
#passwordCheck{
	width: 295px;
	height: 30px;
	border: 1px solid #004358;
}
#dgender{
	width: 295px;
	height: 30px;
	border: 1px solid #004358;
	margin-bottom: 20px;
}
#dname{
	width: 90px;
	height: 30px;
	border: 1px solid #004358;
	margin-right: 5px;
	margin-bottom: 20px;
}
	#dcname{
	width: 200px;
	height: 30px;
	border: 1px solid #004358;
	margin-bottom: 20px;
}
#pwdtarget,#chktarget{
	color: #FE2E2E;
	font-size: 14px;
	height: 20px;
}
#yeartarget{
	color: #FE2E2E;
	font-size: 14px;
	height: 20px;
	margin-left: 50px;
}
.birthArea,.telArea{
	display: flex;
	font-size: 15px;
	margin-left: 50px;
	margin-right: 50px;
}
.dbirth,.dtel{
	width: 90px;
	height: 30px;
}
#dmonth,#dtelmiddle{
	margin-left: 12px;
    margin-right: 12px;
}
.buttonArea{
	display: flex;
	font-size: 15px;
	margin-left: 85px;
	margin-right: 50px;
	padding-left: 35px;
	margin-top: 20px;
}
#addressSearch{
	padding: 5px 15px 5px 15px;
	margin-left: 10px;
	background-color: #004358;
    border: 1px solid #004358;
    color: #FFFFFF;
    line-height: 3px;
    font-size: 14px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
	width: auto;
	cursor: pointer;
}
#daddress1{
	height: 30px;
	width: 296px;
}
#daddress2{
	width: 295px;
    height: 30px;
    margin-top: 10px;
    margin-bottom: 20px;
}
.addressLabel{
	font-size: 20px;
    margin-left: 50px;
    margin-bottom: 0px;
}
</style>
<div class="signUpBroker">
<section class="projects-section" id="projects">
	<div class="signUpBody">
		<div class="title">
			<p><em>공인중개사</em> 회원가입</p>
		</div>
		<!--  signup_broker_in -->
		<form method="post" action="signup_broker_in" autocomplete="off" id="signup_form" name="signup_form">
			
			<!-- 회원가입 ID 영역 -->
			<p class="signupLabel">아이디</p>
			<div class="signupArea">
				<div id="inputid">
					<input type="email" id="aid" name="aid" placeholder="email" maxlength="50">
				</div>
				<div id="idCertify">
					<button type="button" class="certify button3" id="certify">인증번호 전송</button>
				</div>
			</div>
			<div id="certifyArea">
				<input type="text" id="certifyInsert" name="certifyInsert" placeholder="인증번호를 입력하여 주십시오." readonly="true">
			</div>
			<!-- 회원가입 ID 영역 -->
			
			<!-- 회원가입 PASSWORD 영역 -->
			<p class="signupLabel">비밀번호</p>
			<div class="signupArea">
				<div>
					<input type="password" id="apwd" name="apwd" placeholder="영문+숫자, 6자 이상">
					<div id="pwdtarget"></div>
				</div>
			</div>
			<!-- 회원가입 PASSWORD 영역 -->
			
			<!-- 회원가입 PASSWORD 확인 영역 -->
			<p class="signupLabel">비밀번호 재확인</p>
			<div class="signupArea">
				<div>
					<input type="password" id="passwordCheck" placeholder="비밀번호 재확인">
					<div id="chktarget"></div>
				</div>
			</div>
			
			<!-- 회원가입 PASSWORD 확인 영역 -->
			
			<!-- 회원가입 이름 영역 -->
			<p class="signupLabel">이름<b style="margin-right:60px;"></b>부동산 이름</p>
			<div class="signupArea">
				<div>
					<input type="text" id="dname" name="dname" placeholder="가입자 성명">
					<input type="text" id="dcname" name="dcname" placeholder="부동산 이름">
				</div>
			</div>
			<!-- 회원가입 이름 영역 -->
				
			<!-- 회원가입  주소 영역 -->
			<p class="addressLabel">부동산 주소</p>
			<div class="signupArea">
				<input type="text" id="daddress1" name="daddress1" placeholder="ex)강남구 역삼동">
				<button type="button" id="addressSearch" onclick="goPopup();">주소검색</button>
			</div>
			<div class="signupArea">
				<input type="text" id="daddress2" name="daddress2" placeholder="ex) 그 외 상세 주소">
			</div>
			<input type="hidden" id="daddress" name="daddress">
			<!-- 회원가입  주소 영역 -->
			
			<!-- 회원가입 생년월일 영역 -->
			<p class="signupLabel">생년월일</p>
				<div class="birthArea">
					<div>
						<input type="text" class="dbirth" placeholder="년(4자)" id="dyear" name="dyear" maxlength="4">
					</div>
					<div>
						<select id="dmonth" name="dmonth" class="dbirth">
							<option selected="selected" disabled>월</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
					</div>
					<div>
						<input type="number" placeholder="일" id="dday" name="dday" class="dbirth" maxlength="2"   min="1" max="31">
					</div>
				</div>
				<div id="yeartarget"></div>
			<!-- 회원가입 생년월일 영역 -->
			
			<!-- 회원가입 성별 영역 -->
			<p class="signupLabel">성별</p>
			<div class="signupArea">
				<div>
					<select id="dgender" name="dgender">
						<option selected="selected" disabled>성별</option>
						<option>남자</option>
						<option>여자</option>
					</select>
				</div>
			</div>
			<!-- 회원가입 성별 영역 -->
			
			<!-- 회원가입  전화번호 영역 -->
			<p class="signupLabel">전화번호</p>
			<div class="telArea">
				<div id="tel1">
					<select id="dtelheader" name="dtelheader" class="dtel">
						<option selected="selected">010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
					</select>
				</div>
				<div id="tel2">
					<input type="text" id="dtelmiddle" name="dtelmiddle" class="dtel" maxlength="4">
				</div>
				<div id="tel3">
					<input type="text" id="dtelfooter" name="dtelfooter" class="dtel" maxlength="4">
				</div>
			</div>
			<!-- 회원가입  전화번호 영역 -->

			<!-- 회원가입  버튼 영역 -->
			<div class="buttonArea">
				<div id="signup">
					<button type="button" class="button4" onclick="location = 'index'"><i class="fas fa-home"></i>&nbsp;메인으로</button>
					<button type="submit" class="button3" id="submit"><i class="fas fa-signature"></i>&nbsp;가입하기</button>
				</div>
			</div>
			<input type="hidden" id="agubun" name="agubun" value="공인중개사">
			<!-- 회원가입  버튼 영역 -->
			

		</form>
	</div>
</section>
</div>
<script>
	
function goPopup() {
	var pop = window.open("juso", "pop",
			"width=570,height=420, scrollbars=yes, resizable=yes");
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제
	// 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게
	// 됩니다.
}

function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
		roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
		bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm,
		liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm,
		lnbrSlno, emdNo) {
	$('#daddress1').val(roadAddrPart1);
	$('#daddress2').val(roadAddrPart2 + addrDetail);
	$('#daddress').val(roadAddrPart1 + '|' + roadAddrPart2 + addrDetail);
}

$(function() {
	var rest='';
	// 아이디 한글 입력 방지 처리
	$('#aid').keyup(function(e){
		if (!(e.keyCode >=37 && e.keyCode<=40)) {
			var v = $(this).val();
			$(this).val(v.replace(/[^a-z0-9@.]/gi,''));
		}
	});

	// 비밀번호 양식 체크
	$('#apwd').keyup(function(e){
		var pwd = "";
		pwd = String($('#apwd').val());
		
		if(pwd.length===0){
			$('#pwdtarget').html("<p>비밀번호를 입력하여 주십시오.</p>");
		}else if(pwd.length>=1&&pwd.length<=5){
			$('#pwdtarget').html("<p>6자 이상의 영문 및 숫자를 사용하여 주십시오.</p>");
		}else{
			// 양식이 맞을 경우, 메시지를 출력하지 않음.
			$('#pwdtarget').html("");
			// 비밀번호가 양식에 맞을 때에만 확인 체크
			$('#passwordCheck').keyup(function(){
				var pwd1= String($("#apwd").val());
				var pwd2= String($("#passwordCheck").val());
				if(pwd1.length>=1 || pwd2.length>=1){ 
					if(pwd1 == pwd2){ 
						$("#chktarget").html("<p style='color:green'>비밀번호가 일치합니다.</p>");
					}else{ 
						$("#chktarget").html("<p style='color:red'>비밀번호가 일치하지 않습니다.</p>");
					}
				}else{
					$("#chktarget").html("");
				}
			});	
		}
		
		
	});

	// 연도 / 일 연동되게 만들기
	
	// 연도 설정
	/* $('#dyear').keyup(function(){
		var year=$("#dyear").val();
		var currentyear = new Date().getFullYear();
		
		if(year>currentyear){
			$("#yeartarget").html("<p>미래에서 오셨군요!</p>");
		}else if(year>currentyear-18){
			$("#yeartarget").html("<p>만 18세 미만은 가입하실 수 없습니다!</p>");
		}else if(year<1920){
			$("#yeartarget").html("<p>과거에서 오셨군요!</p>");
		}else{
			$("#yeartarget").html("");
		}
	});
	
	// 일 수 설정
	$('#dday').keyup(function(){
		var day = $(this).val();
		var month = $('#dmonth option:selected').val();
		
		if(month===0){
		$("#yeartarget").html("<p style='color:red'>월을 입력해 주세요.</p>");
		}else{
			if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
				if(day<1||day>31){
					$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");	
				}else{
					$("#yeartarget").html("");
				}
			}else if(month==2){
				if(day<1||day>29){
					$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");
				}else{
					$("#yeartarget").html("");
				}
			}else{
				if(day<1||day>30){
					$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");
				}else{
					$("#yeartarget").html("");
				}
			}
		}
	}); */
	function daycheck(){
		var year=$("#dyear").val();
		var currentyear = new Date().getFullYear();
		var day = $("#dday").val();
		var month = $('#dmonth option:selected').val();
		if(day>31){
			alert("날짜는 31까지만 입력해주세요.")
			$("#dday").val("");
		}
		else if(year ===""){
			$("#yeartarget").html("<p>년도를 입력해주세요.</p>");
		}else if(month ===""){
			$("#yeartarget").html("<p> 월 을 선택해주세요.</p>");
		}else if(day ===""){
			$("#yeartarget").html("<p>날짜를 입력해주세요.</p>");
		}
		else if(year>currentyear){
			$("#yeartarget").html("<p>미래에서 오셨군요!</p>");
		}else if(year>currentyear-18){
			$("#yeartarget").html("<p>만 18세 미만은 가입하실 수 없습니다!</p>");
		}else if(year<1920){
			$("#yeartarget").html("<p>과거에서 오셨군요!</p>");
		}else{
			if(month===0){
				$("#yeartarget").html("<p style='color:red'>월을 입력해 주세요.</p>");
				}else{
					if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
						if(day<1||day>31){
							$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");	
						}else{
							$("#yeartarget").html("");
						}
					}else if(month==2){
						if(day<1||day>29){
							$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");
						}else{
							$("#yeartarget").html("");
						}
					}else{
						if(day<1||day>30){
							$("#yeartarget").html("<p>생년월일을 다시 확인해주세요.</p>");
						}else{
							$("#yeartarget").html("");
						}
					}
				}
			}
	}
	
	$("#dmonth").change(function() {
			
			daycheck()
	})
	$('#dyear,#dday').keyup(function(){
	
			daycheck()
		
		});
	// 숫자 입력 처리
	$("#dyear,#dday,#dtelmiddle,#dtelfooter").keyup(function (event) {
        regexp = /[^0-9]/gi;
        v = $(this).val();
        if (regexp.test(v)) {
            $(this).val(v.replace(regexp, ''));
        }
    });
	
	// 이메일 양식 인증
	$("#certify").click(function(){
		var aid = $('#aid').val();
		// 중복 계정 체크
		$.ajax({
			url:'idChk?aid='+encodeURIComponent(aid),
			success: function(data){
				if(data === 1){
					// 이미 가입이 되어 있는 경우
					alert('이미 가입된 계정입니다. 다른 이메일을 입력하여 주십시오.');
				}else{
					alert('이메일을 전송 중입니다. 잠시만 기다려 주십시오.')
					$.ajax({
						url: "emailCheck?aid="+aid,
						success:function(res){
							rest=res
							alert('인증번호가 전송되었습니다. 이메일을 확인하여 주십시오.');
							$('#certifyInsert').attr('readonly',false)
							$('#certifyInsert').css('background-color', '#FFFFFF');
							console.log(res);
						},
						error:function(e){
							alert(e);
						}
					});
				}
			}		
		})
	});
	
	// 가입하기 버튼 클릭 시, 가입 조건 확인
	$('#submit').click(function(e){
		// 인증 번호 체크
		if($.trim(rest) !== $('#certifyInsert').val()){
			alert('인증번호가 맞지 않습니다.');
			e.preventDefault();
		}else{
			alert('가입이 완료되었습니다!');
		}
	});
	
	
});
</script>
