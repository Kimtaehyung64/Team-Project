<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="EUC-KR"%>
<div style="display: block; text-align: center;">
<!-- 이전 페이지 -->
<c:if test="${paging.startPage != 1 }">
<a href="list1?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><</a>
</c:if>
<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
<c:choose>
<c:when test="${p == paging.nowPage }">
<b>${p}</b> <!-- 현재 페이지일 경우, 링크 해제 -->
</c:when>
<c:when test="${p != paging.nowPage }">
<!-- 다른 페이지 링크 -->
<a href="list1?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
</c:when>
</c:choose>
</c:forEach>
<!-- 다음 페이지 -->
<c:if test="${paging.endPage != paging.lastPage}">
<a href="list1?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">></a>
</c:if>
</div>
</html>