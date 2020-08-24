<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%-- 
<div style="display: block; text-align: center; width: 100%;height:1220px; margin-top: 20px;">
<c:if test="${paging.startPage != 1 }">
<b class="paging" onclick="paging('이전')"><</b>
</c:if>
<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
<c:choose>
<c:when test="${p == paging.nowPage }">
<b>${p }</b>
</c:when>
<c:when test="${p != paging.nowPage }">
<b class="paging" onclick="paging(${p})">${p }</b>
</c:when>
</c:choose>
</c:forEach>
<c:if test="${paging.endPage != paging.lastPage}">
<b class="paging" onclick="paging('이후')" >></b>
</c:if>

</div> 
--%>



	<div id="pagenum1" style="display: block; text-align: center; width: 100%;height:100%; margin-top: 20px;">
		<ul class="pagination pagination-sm">
			<!-- 이전 페이지 -->
			<c:choose>
				<c:when test="${paging.startPage != 1 }">
					<li class="page-item"><a class="page-link"
						 onclick="paging('이전')">&laquo;</a></li>
				</c:when>
				<c:when test="${paging.startPage == 1 }">

				</c:when>
			</c:choose>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<!-- 현재 페이지일 경우, 링크 해제 -->
						<li class="page-item active"><a class="page-link">${p }</a></li>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<!-- 다른 페이지 링크 -->
						<li class="page-item"><a class="page-link"
							 onclick="paging(${p})">${p }</a>
						</li>
					</c:when>
				</c:choose>
			</c:forEach>
			<!-- 다음 페이지 -->
			<c:choose>
				<c:when test="${paging.endPage != paging.lastPage}">
					<li class="page-item"><a class="page-link"
						onclick="paging('이후')">&raquo;</a>
					</li>
				</c:when>
				<c:when test="${replyPage.endPage == replyPage.lastPage}">
				
				</c:when>
			</c:choose>
		</ul>
		<input type="hidden" id="startPage" value="${paging.startPage - 1}">
<input type="hidden" id="endPage" value="${paging.endPage +1}">
<input type="hidden" id="cntPerPage" value="${paging.cntPerPage}">
<input type="hidden" id="paging" value="${paging}"> 
	</div>
<style>
	.pagination {
	 	display: inline-flex;
	}
</style>	