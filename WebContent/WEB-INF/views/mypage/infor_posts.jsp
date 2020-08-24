<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="customers" id="customers">
	
	<tr>
		<th id="">작성일자</th>
		<th id="">카테고리</th>
		<th id="">글 제목</th>
		<th id="">추천수</th>
		<th id="">조회수</th>
	</tr>
	<c:forEach items="${list }" var="cblist">
		<tr>
			<td>${cblist.wchgdate }</td>
			<td>${cblist.wgubun }</td>
			<td><a href="writing_detail?wnum=${cblist.wnum}">${cblist.wtitle }</a></td>
			<td>${cblist.wrec }</td>
			<td>${cblist.whit }</td>
		</tr>
	</c:forEach>
</table>
