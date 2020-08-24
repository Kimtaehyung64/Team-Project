<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
	<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center; margin-top: 200px;" id="a">
<h4 class="subtopma">${vo.memberinfor.dname } 님의 결제 정보 입니다.</h4>
<div class="container" > 
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<div class="form-group ">
			<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
			<div class="col-sm-3 container">
				<input type="email" class="form-control" name="aid" id="aid"
					 readonly="readonly" value="${vo.aid }">
			</div>  
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">결제일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="psdate"
					 value="${vo.payvo.psdate }" >
			</div>
		</div> 
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">종료일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="pedate"
					  value="${vo.payvo.pedate }" >
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">결제금액</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="ppay"
					  value="${vo.payvo.ppay }" >
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">결제 방식</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="pway"
					placeholder=""  value="${vo.payvo.pway }" >
					<input type="hidden" class="form-control" name="pway"
					  value="${vo.payvo.pgubun }" >
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">구독 개월수</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="inment"
					  value="${vo.payvo.paydetailvo.inment }" >
			</div>
		</div> 
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">결제 은행</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="kinds"
					  value="${vo.payvo.paydetailvo.kinds }" >
			</div>
		</div>
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">카드번호</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="mentnum" value="${vo.payvo.paydetailvo.mentnum }" >
			</div>
		</div>
		
		 
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" id="signup" style="margin-left: 90px;">
				
				<button type="submit" class="btn btn-success btn-lg" 
					>수정하기 </button>
					<button type="submit" class="btn btn-success btn-lg" formmethod="post"
				 formaction="mypage_lessor" formtarget="#aid" >뒤로가기 </button>
			</div>
		</div>
	</form>
</div>


	</div>

<%@ include file="../include/footer.jsp"%>


