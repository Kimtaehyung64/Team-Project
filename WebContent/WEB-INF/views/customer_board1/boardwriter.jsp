<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<%@ include file="../include/header_menu.jsp"%>

<body id="table">
		<form action="boardin1" method="post">
		<input type="hidden" name="anum" value="${user.anum}">
		<table
			style="padding-top: 50px; align: center;  border: 0; margin-top:7rem; margin-left: 15rem;">
			<tr>
				<td height=20 align=center bgcolor=#ccc><font color=white>
						문의내용</font></td>
			</tr> 
			<tr>
				<td bgcolor=white>
					<table class="table2">  
						<tr>
							<td>문의 종류</td>
							<td><select class="form-control" id="c_type" name="c_type" required="required">
									<option>문의유형1</option>
									<option>문의유형2</option>
									<option>문의유형3</option>
									<option>문의유형4</option>
									<option>기타</option>
							</select></td>    
						</tr>

						<tr>
							<td>작성자</td>
							<td><input type=text name="c_writer" size=20 required="required"></td>
						</tr>

						<tr>
							<td>제목</td>
							<td><input type=text name="c_subject" size=60 required="required"></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name="c_content" cols=85 rows=15 id="ir1" required="required"></textarea></td>
						</tr>

						<tr>
							<td>비밀번호</td>
							<td><input type=password name="c_pwd" size=10 maxlength=10 required="required"></td>
						</tr>
					</table>
					<center>
						<input type="submit" value="제출하기">
					</center>
				</td>
			</tr>
		</table>
		</form>


<!-- <script type="text/javascript">  -->
<!-- //  	var oEditors = []; -->
<!-- //  	nhn.husky.EZCreator.createInIFrame({ -->
<!-- //  	 oAppRef: oEditors, -->
<!-- //  	 elPlaceHolder: "ir1", -->
<!-- //  	 sSkinURI: "resources/edit/SmartEditor2Skin.html", -->
<!-- //  	 fCreator: "createSEditor2" -->
<!-- //  	}); -->
	
 	
<!-- //  	$('#runin').click(function() { -->
<!-- //  		var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]); -->
<!-- //  		//alert($('#ir1').val()); -->
<!-- //  		//alert($('#wimage').val()); -->
<!-- //  	}) -->
<!-- 	</script>  -->
</body>

<%@ include file="../include/footer.jsp"%>


