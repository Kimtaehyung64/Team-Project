<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/community/writing.css" rel="stylesheet">
<script type="text/javascript"
	src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="updetail" method="post">
			<input type="hidden" value="${list.wgubun}" id="gubun" name="gubun">
			<input type="hidden" value="${list.wnum}" id="wnum" name="wnum">			
			<div id="myTabContent" class="tab-content">
				<p>내가 사는, 알고 있는 지역에 관한 정보를 알려주세요.</p>
			</div>
			<div class="form-group">
				<div class="form-inline form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" name="wtitle"
							maxlength="50" value="${list.wtitle}">
					</div>
				</div>
				<div class="tab-pane fade show active" id="all">
					<br>
					<div class="form-inline form-group">
						<label for="Select1">구/동 선택</label>
						<select class="form-control col-md-2" id="Select0" name="wgubun">
							<option value="상가">상가</option>
							<option value="부동산">부동산</option>
							<option value="경매">경매</option>
						</select>
						<input type="hidden" id="input_gu" value="${list.wloc1}"> 
						<select class="form-control col-md-2" id="Select1" name="wloc1">
							<option selected="selected">${list.wloc1}</option>
						</select> <select class="form-control col-md-2" id="Select2" name="wloc2">
							<option selected="selected">${list.wloc2}</option>
						</select>
					</div>
				</div>
				<textarea id="ir1" name="wcontents" class="form-control" rows="20"
					cols="100" contenteditable="true">
				${list.wcontents}
				</textarea>
				<div id="writebutton">
					<button id="runin" type="submit" class="btn button3"><i class="fas fa-check"></i>&nbsp;수정</button>
					<button type="button" class="btn button4"
						onclick="location.href='writingdetail?wnum=${list.wnum}'"><i class="fas fa-times"></i>&nbsp;취소</button>
				</div>
			</div>
		</form>
	</div>
</section>
<style>
#projects{
	font-family: 'Noto Sans KR',sans-serif;
}
#Select0, #Select1, #Select2 {
	margin: 10px;
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
		
		// 글의 분류를 자동으로 설정하기 위한 javascript
		$(function(){
			$("#Select0").children("option").each(function(i){
				var text = $(this).val();
				var option = $("#gubun").val();
				if(text===option){
					$(this).attr("selected","selected")
				}
			});
		});
		
		// 글의 구를 자동으로 설정하기 위한 javascript
		var cate = $('#Select1').attr('id');
		var url = "comugu?cate=" + encodeURIComponent(cate);
		$.ajax({
			url : url,
			success : function(d) {
				$("#Select1").html(d);
				$("#Select1").children("option").each(function(i) {
					var text=$(this).val()
					var gu=$("#input_gu").val()					
					if(text===gu){
						$(this).attr("selected", "selected")
					}	
				});
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

		if ($('#gubun').val() == '상가') {
			$('#commercial').attr('class', 'tab-pane fade active show');
			$('#com').attr('class', 'nav-link active');

			$('#estate').attr('class', 'tab-pane fade');
			$('#est').attr('class', 'nav-link disabled');

			$('#auction').attr('class', 'tab-pane fade');
			$('#auc').attr('class', 'nav-link disabled');

		} else if ($('#gubun').val() == '부동산') {
			$('#commercial').attr('class', 'tab-pane fade');
			$('#com').attr('class', 'nav-link disabled');

			$('#estate').attr('class', 'tab-pane fade active show');
			$('#est').attr('class', 'nav-link active');

			$('#auction').attr('class', 'tab-pane fade');
			$('#auc').attr('class', 'nav-link disabled');
		} else {
			$('#commercial').attr('class', 'tab-pane fade');
			$('#com').attr('class', 'nav-link disabled');

			$('#estate').attr('class', 'tab-pane fade');
			$('#est').attr('class', 'nav-link disabled');

			$('#auction').attr('class', 'tab-pane fade active show');
			$('#auc').attr('class', 'nav-link active');
		}
	});
</script>
<%@ include file="../include/footer.jsp"%>