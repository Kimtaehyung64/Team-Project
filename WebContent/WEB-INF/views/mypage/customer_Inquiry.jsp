<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="customers" id="customers">
	
	<tr>
		<th id="">글번호</th>
		<th id="">제목</th>
		<th id="">작성자</th>
		<th id="">작성일자</th>
		<th id="">답변상태</th>
	</tr>
	<c:forEach items="${list }" var="cutslist">
		<tr>
			<td>${cutslist.c_num }</td>
			<td>${cutslist.c_subject }</td>
			<td>${cutslist.aid }</td>
			<td>${cutslist.c_regdate }</td>
			<td class="chkview">${cutslist.c_anschk }</td>
		</tr>
	</c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$(".chkview").each(function() {
			if ($(this).text() === '1') {
				$(this).text("답변완료");
			} else {
				$(this).text("답변대기");
			}
		})
	});
</script>