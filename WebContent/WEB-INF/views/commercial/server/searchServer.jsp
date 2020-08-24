<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
 <c:choose>
	<c:when test="${cate eq 'combobox1'}">
		<option>구 선택</option>
	</c:when>
	<c:when test="${cate eq 'combobox2'}">
		<option>동 선택</option>
	</c:when>
	<c:when test="${cate eq 'combobox3'}">
		<option>상권 선택</option>
	</c:when>
	<c:when test="${cate eq 'combobox4'}">
		<option>업종선택</option>
	</c:when>
	<c:when test="${cate eq 'combobox5'}">
		<option>업종소분류</option>
	</c:when>
	<c:when test="${cate eq 'combobox6'}">
		<option>전체</option>
	</c:when>
</c:choose> 
<c:forEach items="${result}" var="val">
	<option>${val}</option>
</c:forEach>

 