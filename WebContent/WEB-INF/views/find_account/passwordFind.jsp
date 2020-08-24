<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>
/* #projects {
	padding: 0 0 0 0;
	width: 700px;
	margin: 0 auto;
	margin-bottom: 150px;
} */

/* 200815 CSS */
.projects-section{
	padding: 168px 0;
}
.pwdContainer{
	background-image: url("resources/images/index/backgroundImageDark.jpg");
	height: 969px;
	font-family: 'Noto Sans KR', sans-serif;
	overflow: hidden;
}
.findPwdBody{
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
.idArea{
	font-size: 17px;
    text-align: center;
    margin-top: 40px;
    margin-bottom: 20px;
}
.inputDname{
	display: grid;
}
#dname{
	width: 360px;
	margin-left: 20px;
	margin-right: 20px; 
	text-align: center;
	height: 50px;
    font-size: 17px;
}
em{
	font-style: normal;
	color: #F25C05;
}
#submitA{
	background-color: #FD7400;
	color: #FFFFFF;
	border: 0px;
	margin-top: 50px;
	margin-bottom: 10px;
	height: 50px;
	font-size: 20px;
	width: 400px;
}
#aid{
	text-align: center;
	border: 0px;
	margin-bottom: 5px;
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
<div class="pwdContainer">
	<section class="projects-section" id="projects">
		<div class="findPwdBody">
			<form method="post" action="passwordFind" id="passwordFind">
				<div class="title">
					<p>비밀번호 재설정</p>
					<span class="xContainer">
						<button onclick="location.href='index'">
								<i class="fas fa-times"></i>
						</button>
					</span>
				</div>
				<c:out value="${param.name}"/>
				<div class="idArea">
					<input type="text" id="aid" name="aid" value="${param.aid}" readonly="readonly"><br>해당 ID의 <em>회원 이름</em>을 입력해 주세요.
				</div>
				<div class="inputDname">
					<input type="text" id="dname" name="dname" placeholder="가입자 성명" required="required">
				</div>
				<input type="button" id="submitA" value="확인">
			</form>
		</div>
	</section>
</div>
<script>

var submitAction = function(e){
	e.preventDefault();
	e.stopPropagation();
}

$(function(){
	$('#submitA').click(function(){
		var dname = $('#dname').val();
		var aid = $('#aid').val();
		$.ajax({
			url: "nameChk?dname="+dname+"&aid="+aid,
			success : function(data){
				if(data === 1){
					alert('이메일 주소로 비밀번호를 발송하였습니다.')
					$('#passwordFind').submit();
				}else{
					alert('회원정보가 일치하지 않습니다.')
					$('#dname').val('');
					$('#dname').focus();
				}
			},
			error : function(data){
				console.log('error:' + data);
			}
		});
	});
});
</script>