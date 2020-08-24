<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="th_page_space">

	<div class="th_card th_infor_card " style="float: left;">
		<form action="inforDetail" method="post">
			<div class="card-header">회원 정보 관리</div>
			<div class="th_card-body" id="infor_memberdetail">
				<div>
					<p class="card-text">꿀방에서의 <em>'나'를 표현하는 프로필</em> 정보입니다.<br>수정 화면에서 프로필 정보를 변경하실 수 있습니다.</p>
					<input type="hidden" value="${user.aid}" name="aid">
					<button type="button" class="btn btn-success" id="memberdetail_btn">수정하기</button>
				</div>
			</div>
		</form>
	</div>
	
	<div class="th_card th_infor_card" style="float: left;">
		<form action="loginDetail" method="post" >
			<div class="card-header">로그인 정보 관리</div>
			<div class="th_card-body" id="infor_logindata">
				<p class="card-text">꿀방에서의 로그인과 관련된 정보입니다.<br>수정 화면에서 <em>비밀번호를 변경</em>하실 수 있습니다.</p>
				<input type="hidden" value="${user.aid }" name="aid">
				<button type="button" class="btn btn-success" id="logindetail_btn">수정하기</button>
			</div>
		</form>
	</div>
	
	<div class="th_card th_infor_card" style="float: left;">
		<form action="paymentDetail" method="post" >
			<div class="card-header">구독 결제 정보</div>
			<div class="th_card-body" id="infor_paymentdatail">
				<p class="card-text"><em>구독</em>을 통해 더 많은 정보를 획득하세요!<br>정보 확인 및 구독 가입(갱신)을 하실 수 있습니다.</p>
				<input type="hidden" value="${vo.aid }" name="aid"> <input
					type="hidden" value="${vo.anum }" name="anum">
				<button type="button" class="btn btn-success" id="paymentdetail_btn">확인하기</button>
			</div>
		</form>
	</div>
	
	<div class="th_card th_infor_card" style="float: left;">
		<form action="memberdelete" method="post">
			<div class="card-header">회원 탈퇴</div>
			<div class="th_card-body" id="member_secession">
				<p class="card-text">꿀방을 <em>탈퇴</em>하고 싶으시다면<br>회원 탈퇴 버튼을 눌러 탈퇴를 하실 수 있습니다.</p>
				<input type="hidden" value="${vo.aid }" name="aid"> <input
					type="hidden" value="${vo.anum }" name="anum">
				<button type="button" class="btn btn-success" id="member_secession_btn">회원탈퇴</button>
			</div>
		</form>
	</div>
	
</div>
