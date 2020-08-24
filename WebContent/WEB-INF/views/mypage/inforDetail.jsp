<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container membertarget">
	<h3 class="subtopma">회원 정보 관리</h3>
	<p class="modalInfo"><em>이름</em> 및 <em>전화번호</em>를 변경하실 수 있습니다.</p>
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<input type="hidden" class="form-control" name="aid" id="aid" value="${vo.aid }">
		<input type="hidden" class="form-control" name="apwd" value="${vo.apwd }"> 
		<table class="type02">
			<tr>
				<th scope="row">이름</th>
				<td><input type="text" class="form-control" name="dname" id="dname"
					value="${vo.memberinfor.dname }"></td>
			</tr>
			<tr>
				<th scope="row">생년월일</th>
				<td><input type="text" class="form-control" name="dbirth" id="dbirth"
					readonly="readonly" value="${vo.memberinfor.dbirth }"></td>
			</tr>
			<tr> 
				<th scope="row">나이</th>
				<td><input type="text" class="form-control" name="age" id="age"
					readonly="readonly" value=""></td>
			</tr>
			<tr>
				<th scope="row">성별</th>
				<td><input type="text" class="form-control" name="dgender" id="dgender"
					readonly="readonly" value="${vo.memberinfor.dgender }"></td>
			</tr>
			<tr>
				<th scope="row">전화번호</th>
				<td><input type="text" class="form-control" name="dtel" id="dtel"
					value="${vo.memberinfor.dtel }"></td>
			</tr>
			
		</table>
		<div class="container buttonSet" id="signup">
			<button type="submit" class="btn button3" id="inforDetailUpdate_btn"><i class="fas fa-check"></i>&nbsp;확인</button>
			<button type="button" class="btn button4" id="inforrefresh_btn"><i class="fas fa-times"></i>&nbsp;취소</button>
		</div>
	</form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() { 
		var date = new Date();						// 현재 시간 
		var year = date.getFullYear(); 				// Number // 현재 연도 yyyy
		var dbirth = '${vo.memberinfor.dbirth }';	//String	// db에 있는 나의 생년월일
		var myyear = dbirth.substr(0, 4);			//Number	// 내 생년월일에 연도 만 잘라내기
		var age = year - myyear;					// 나이 = 현재 년도 - 태어난연도
		myyear = Number(myyear);					// 태어난년도 number 로 변환
		$('#age').val(age);

		var dbirth_theorem = dbirth.substr(0, 4) + " 년 "
		+ dbirth.substr(5, 2) + " 월 " + dbirth.substr(8, 2) + " 일 ";  // yyyy 년 mm 월 dd 일 
		
		$("#dbirth").val(dbirth_theorem);
			$('#inforrefresh_btn').click(function() {
				location.reload();
			});
	});
</script>

