<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/community/writing.css" rel="stylesheet">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="boardin" method="post">
			<div class="form-group">
				<div class="form-inline form-group">
				<input type="hidden" name="anum" value="${user.anum}">
				<input type="hidden" name="aid" value="${user.aid}">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" name="c_subject" maxlength="40">
					</div>
				</div>
				<div class="tab-pane fade show active" id="all">
					<br>
					<div class="form-inline form-group" style="margin-bottom: 10px;">
						<label for="Select1" style="margin-right: 10px;">문의유형 : </label>
						<select class="form-control" id="c_type" name="c_type" required="required">
							<option>매물문의</option>
							<option>상가문의</option>
							<option>경매문의</option>
							<option>월세/전세문의</option>
							<option>기타문의</option>
						</select> 
					</div>
				</div>
				<textarea id="ir1" name="c_content" class="form-control" rows="20" cols="100" contenteditable="true">
				</textarea>
				<div id="writebutton">
					<button id="runin" type="submit" class="btn button3"><i class="fas fa-check"></i>&nbsp;확인</button>
					<button type="button" class="btn button4" onclick="location='listall'"><i class="fas fa-times"></i>&nbsp;취소</button>
				</div>
			</div>
		</form>
	</div>
</section>
<style>
#Select1, #Select2{
	margin-left: 10px;
	margin-right: 10px;
}
</style>
<script>
	$(function() {
		$('#est').click(function() {
			location = 'wriEst';
		});
		$('#auc').click(function() {
			location = 'wriAuc';
		});
		
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ir1",
		 sSkinURI: "resources/edit/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
		
		$('#runin').click(function() {
			var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
		});
	});
</script>
<%@ include file="../include/footer.jsp"%>