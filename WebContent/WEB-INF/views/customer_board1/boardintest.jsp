<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<%@ include file="../include/header_menu.jsp"%>

<body id="table">
	
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
							<td>문의유형</td>
							<td><select class="form-control" id="">
								
							</select></td>
						</tr>

						<tr>
							<td>작성자</td>
							<td><input type=text name=name size=20></td>
						</tr>

						<tr>
							<td>제목</td>
							<td><input type=text name=title size=60></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name=content cols=85 rows=15></textarea></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<td>비밀번호</td> -->
<!-- 							<td><input type=password name=pw size=10 maxlength=10></td> -->
<!-- 						</tr> -->
						
						<tr>
							<td>답변</td>
							<td><textarea name=content cols=85 rows=2></textarea></td>
						</tr>
					
					</table>
					
						<button id="writeBtn" onclick="location='customer'">돌아가기</button>
					
					
						<button id="writeBtn" onclick="location='customer'" id="remove">게시글 삭제</button>
					
				</td>
			</tr>
		</table>
<script>
// $(function(){
// 	$('#idChkBtn').click(function(){
// 		$.ajax({
// 			url: "http://localhost/semiProjectSpring/idChk?id="+$('#remove').val(),
// 			success : function(data){
// 				if(data===0){
// 					$('#target').html("<p style='color:green'>멋진 아이디네요!</p>");
// 				}else{
// 					$('#target').html("<p style='color:red'>이미 사용중이거나 탈퇴한 아이디입니다.</p>");
// 					$('#id').val("");
// 				}
// 			}		
// 		});
// 	});
// });
</script>
</body>
<%@ include file="../include/footer.jsp"%>


