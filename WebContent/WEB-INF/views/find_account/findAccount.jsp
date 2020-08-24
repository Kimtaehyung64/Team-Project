<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/styles.css" rel="stylesheet">
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>

/* 200815 CSS 리팩토링 */
.projects-section{
	padding: 10.5rem 0;
}
.findAccount{
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
	overflow: hidden;
}
.findAccountBody{
	background-color: #FFFFFF;
	max-width: 400px;
	margin: 0 auto;
	border-radius: 10px;
	margin-top: 50px;
	height: 400px;
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
	box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
}
.title{
	text-align: center;
	font-size: 25px;
	padding-top: 20px;
	display: flex;
	border-bottom: 1px solid #E6E6E6; 
}
.title > p{
	padding-bottom: 10px; 
	width: 300px;
	margin-right: 45px;
	padding-left: 90px;
}
.findArea{
	display: flex;
	font-size: 15px;
	margin-left: 50px;
	margin-right: 50px;
}
.labelArea{
	font-size: 15px;
	margin-bottom: 5px;
	text-align: center;
}
.findID{
	display: grid;
}
.findIDLabel{
	font-size: 17px;
    text-align: center;
    margin-top: 40px;
}
#userID{
	width: 360px;
	margin-left: 20px;
	margin-right: 20px; 
	text-align: center;
	height: 50px;
    font-size: 17px;
}
#idChkBtn{
	background-color: #FD7400;
	color: #FFFFFF;
	border: 0px;
	margin-top: 50px;
	margin-bottom: 10px;
	height: 50px;
	font-size: 20px;
	width: 400px;
}
#idtarget{
	height: 30px;
    margin-top: 10px;
    text-align: center;
    font-size: 20px;
}
em{
	font-style: normal;
	color: #F25C05;
}
/* xbutton */
.xContainer {
	text-align: right;
	height: 0px;
}

.xContainer>button {
	border: 1px solid #D8D8D8;
	color: #000000;
	background-color: #FFFFFF;
	border-radius: 20px;
	padding: 3px 6px 3px 6px;
	text-decoration: none;
	font-size: 20px;
}

.xContainer>button:hover {
	border: 1px solid #F25C05;
	color: #000000;
	background-color: #FFFFFF;
	border-radius: 20px;
}
</style>
<div class="findAccount">
	<section class="projects-section" id="projects">
		<div class="findAccountBody">
			<div class="title">
				<p>비밀번호 재설정</p>
				<span class="xContainer">
					<button onclick="location.href='index'">
							<i class="fas fa-times"></i>
					</button>
				</span>
			</div>
			<div class="labelArea">
				<p class="findIDLabel">가입하신 이메일을 입력 후<br><em>ID 확인하기</em> 버튼을 눌러주세요.</p>
			</div>
			<div class="findID">							
				<input type="text" id="userID" name="userID" maxlength="51" placeholder="이메일" required="required">
			</div>
			<input type="button" value="ID 확인하기" id="idChkBtn"> 
		</div>
	</section>
</div>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>	 	
<script>

/* 아이디 확인 버튼을 클릭시 작동하는 JavaScript */		
$(function(){
	$('#idChkBtn').click(function(){
		$.ajax({
			url: "idChk?aid="+$('#userID').val(),	
			success : function(data){
				if(data===1){
					alert("아이디 확인이 완료되었습니다.");
					location = 'passwordFindform?aid='+$('#userID').val();
				}else{
					alert("입력하신 아이디가 존재하지 않습니다.");
					$('#userID').val('');
					$('#userID').focus();
				}
			}
		});
	});
});
</script>