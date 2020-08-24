<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/community/writing.css" rel="stylesheet">
<script type="text/javascript"
	src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="writing_commercial_in" method="post">
			<div id="myTabContent" class="tab-content">
					<p>내가 사는, 알고 있는 지역에 관한 정보를 알려주세요.</p>
			</div>
			<div class="form-group">
				<div class="form-inline form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" name="wtitle"
							maxlength="50">
					</div>
				</div>
				<div class="tab-pane fade show active" id="all">
					<div class="form-inline form-group">
						<label for="all">카테고리 : </label>
						<select class="form-control col-md-2" id="Select0" name="wgubun">
							<option>분류 선택</option>
							<option value="상가">상가</option>
							<option value="부동산">부동산</option>
							<option value="경매">경매</option>
						</select>
						<select class="form-control col-md-2" id="Select1" name="wloc1">
							<option>구 선택</option>
						</select> <select class="form-control col-md-2" id="Select2" name="wloc2">
							<option>동 선택</option>
						</select>
					</div>
				</div>
				<textarea id="ir1" name="wcontents" class="form-control" rows="20"
					cols="100" contenteditable="true">
				</textarea>
				<p class="caution">저작권 등 다른 사람의 권리를 침해하거나 명예를 훼손하는 게시물은<br>
				이용약관 및 관련법률에 의해 제재를 받으실 수 있습니다.</p>
				<input type="hidden" id="anum" name="anum" value="${user.anum}">
				<div id="writebutton">
					<button id="runin" type="submit" class="btn button3"><i class="fas fa-check"></i>&nbsp;확인</button>
					<button type="button" class="btn button4"
						onclick="location='comuMain'"><i class="fas fa-times"></i>&nbsp;취소</button>
				</div>
			</div>
		</form>
	</div>
</section>
<style>
#Select0, #Select1, #Select2 {
	margin: 10px;
}
#projects{
	font-family: 'Noto Sans KR',sans-serif;
}
.caution{
	color: #999;
	font-size: 14px;
    font-family: -webkit-pictograph;
}
.tab-content > p{
	border-bottom: 1px solid #D8D8D8;
	font-size: 20px;
}

</style>
<script>
	$(function() {
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "resources/edit/SmartEditor2Skin.html",
			fCreator : "createSEditor2"
		});

		$('#runin').click(
				function() {
					var val1 = oEditors.getById["ir1"].exec(
							"UPDATE_CONTENTS_FIELD", []);
				});
		
		var cate = $('#Select1').attr('id');
		var url = "comugu?cate=" + encodeURIComponent(cate);
		$.ajax({
			url : url,
			success : function(d) {
				$("#Select1").html(d);
			}
		})
		$("#Select1").change(function() {
			var guName = $(this).val();
			var url = "comudong?guName=" + guName;
			$.ajax({
				url : url,
				success : function(d) {
					$("#Select2").html(d);
				}
			})
		})
	});
</script>
<%@ include file="../include/footer.jsp"%>