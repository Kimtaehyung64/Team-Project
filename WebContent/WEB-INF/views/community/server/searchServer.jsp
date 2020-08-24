<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:choose>
	<c:when test="${cate eq 'Select1'}">
		<option>구 선택</option>
	</c:when>
	<c:when test="${cate eq 'Select2'}">
		<option>동 선택</option>
	</c:when>
</c:choose>
<c:forEach items="${result}" var="val">
	<option>${val}</option>
</c:forEach>
