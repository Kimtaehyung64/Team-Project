<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<%@ include file="../include/header_menu.jsp"%>

<style>
#tabl1{margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;}
</style>


<body id="table">
<form action="ansinsert1" method="post">

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
							<td id="tabl1" name="c_type">								
							${detail1.c_type}</td>
						</tr>

						<tr>
							<td>작성자</td>
							<td id="tabl1" name="c_writer" >${detail1.c_writer}</td>
						</tr>

						<tr>
							<td>제목</td>
							<td id="tabl1" name="c_subject">${detail1.c_subject}</td>
						</tr>

						<tr>
							<td>답변내용</td>
							<td><textarea cols=85 rows=15 name="c_ans" value="${detail1.c_ans}"></textarea></td>
						</tr>

						
					
					</table>
						
					<input type="submit" value="답변등록">
					<input type="hidden" name="c_num" value="${detail1.c_num}">
				</td>
			</tr>
		</table>
		</form>


</body>


<%@ include file="../include/footer.jsp"%>


