<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container membertarget">
	<h3 class="subtopma">회원 탈퇴</h3>
	<p class="modalInfo"><em>아이디</em>와 <em>비밀번호</em>를 입력하여 탈퇴하실 수 있습니다.</p>
	<form class="form-horizontal" action="deletemember" method="post">
		<table class="type02">
			<tr>
				<th scope="row">아이디</th>
				<td><input type="text" class="form-control" name="aid" id="aid"
					value=""></td>
			</tr>
			<tr>
				<th scope="row">비밀번호</th>
				<td><input type="password" class="form-control" name="apwd"
					id="apwd" value=""></td>
			</tr>
		</table>
		<div class="container buttonSet" id="signup" style="">
			<button type="button" class="btn button3" id="member_secession_btn" onclick="deletemtpage();"><i class="fas fa-check"></i>&nbsp;확인</button>
			<button type="button" class="btn button4" id="mypage_refresh_btn"><i class="fas fa-times"></i>&nbsp;취소</button>
		</div>
	</form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(function(){
	$('#mypage_refresh_btn').click(function() {
		location.reload();
	});
});
	
	
	function deletemtpage(){
		var aid = $('#aid').val();
		var apwd = $('#apwd').val();
		if(aid == '${vo.aid}' && apwd == '${vo.apwd}'){
			var result1 = confirm('정말 삭제하시겠습니까?');
			if(result1){
				$.ajax({
					url : "deletemember" ,
					type : "post" ,
					data : {aid : "${vo.aid }"
						,apwd : "${vo.apwd }"},
						success:location='logout'
					});
				}
		}else{
			alert("아이디 및 비밀번호가 일치하지 않습니다. 다시 입력하세요.");
		}
	}

</script>

