<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="pagenum1">
	<ul class="pagination pagination-lg" style="width:300px;margin: 0 auto;">
	<c:choose>
		<c:when test="${paging.startPage != 1 }">
			<li class="page-item"> 
				<a class="page-link" href="product?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&searchValue=${paging.seachValue}">&laquo;</a>
			</li>
		</c:when>
		<c:otherwise>
			<li class="page-item disabled">
				<a class="page-link" href="#">&laquo;</a>
			</li>
		</c:otherwise>
	</c:choose>		
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<li class="page-item active"><a class="page-link" href="#">${p}</a></li>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<li class="page-item"> <a class="page-link" href="product?nowPage=${p }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&searchValue=${paging.seachValue}">${p}</a></li>
			</c:when>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test="${paging.endPage != paging.lastPage}">
			<li class="page-item">
				<a class="page-link" href="product?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&searchValue=${paging.seachValue}">&raquo;</a>
			</li>
		</c:when>
		<c:otherwise>
			<li class="page-item disabled">
				<a class="page-link" href="#">&raquo;</a>
			</li>
		</c:otherwise>
	</c:choose>	
	</ul>
</div> 