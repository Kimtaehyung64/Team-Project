<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<h3 class="subtopma">로그인 정보 관리</h3>
	<p class="modalInfo"><em>주기적인 비밀번호 변경</em>을 통해 <br>개인정보를 안전하게 보호하세요.</p>
	<form class="form-horizontal" action="mypageloginUpdate" method="post">
		<table class="type02">
			<tr>
				<th scope="row">아이디</th>
				<td><input type="text" class="form-control" name="aid"
					readonly="readonly" value="${user.aid }"></td>
			</tr>
			<tr>
				<th scope="row">비밀번호</th>
				<td><input type="password" class="form-control" name="apwd"
					id="apwd" value="${vo.apwd }"> <input type="button"
					id="cbtn" class="pwdCheck" value="보이기"></td>
			</tr>
			<tr>
				<th scope="row">가입날짜</th>
				<td><input type="text" class="form-control" name="ainday"
					id="ainday" readonly="readonly" value="${vo.ainday }"></td>
			</tr>
			<tr>
				<th scope="row">수정날짜</th>
				<td><input type="text" class="form-control" name="achgday"
					id="achgday" readonly="readonly" value="${vo.achgday }"></td>
			</tr>
<%-- 			<tr>
				<th scope="row">아이디 구분</th>
				<td><input type="text" class="form-control" name="agubun"
					readonly="readonly" value="${vo.agubun }"></td>
			</tr> --%>
		</table>
		<div class="container buttonSet" id="signup">
			<button type="submit" class="btn button3"><i class="fas fa-exchange-alt"></i>&nbsp;변경</button>
			<button type="button" class="btn button4" id="mypage_loginfor_refresh"><i class="fas fa-times"></i>&nbsp;취소</button>
		</div>
	</form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		var cnum = 0;

		var $ainday = $('#ainday').val(); // String
		var $achgday = $('#achgday').val(); // String

		var ainday_theorem = $ainday.substr(0, 4) + " 년 "
				+ $ainday.substr(5, 2) + " 월 " + $ainday.substr(8, 2) + " 일 "
				+ $ainday.substr(10, 2) + " 시 ";
		var achgday_theorem = $achgday.substr(0, 4) + " 년 "
				+ $achgday.substr(5, 2) + " 월 " + $achgday.substr(8, 2) + " 일 "
				+ $achgday.substr(10, 2) + " 시 ";
		
		$('#ainday').val(ainday_theorem);
		$('#achgday').val(achgday_theorem);

		$('#cbtn').click(function() {

			if (cnum === 0) {
				$('#apwd').attr('type', 'text');
				$('#cbtn').val('감추기');
				cnum++
			} else if (cnum === 1) {
				cnum = 0;
				$('#apwd').attr('type', 'password');
				$('#cbtn').val('보이기');
			}

		});
		
	$('#mypage_loginfor_refresh').click(function() {
		location.reload();
	});
	
	
	});
</script>

