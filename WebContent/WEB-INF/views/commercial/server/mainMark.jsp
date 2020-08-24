<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
[
<c:forEach var="e" items="${result}" varStatus="idx">
	{"lat": "${e.lat}" ,"lng":"${e.lng}"}
<c:if test="${listsize-1>idx.index}">,</c:if>
</c:forEach>
]
 