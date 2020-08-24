<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div id="pagenum1">
		<ul class="pagination pagination-sm">
			<!-- 이전 페이지 -->
			<c:choose>
				<c:when test="${replyPage.startPage != 1 }">
					<li class="page-item"><a class="page-link"
						href="writing_detail?wnum=${replyPage.wnum}&nowPage=${replyPage.startPage - 1 }
						&cntPerPage=${replyPage.cntPerPage}">&laquo;</a></li>
				</c:when>
				<c:when test="${replyPage.startPage == 1 }">

				</c:when>
			</c:choose>
			<c:forEach begin="${replyPage.startPage }" end="${replyPage.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == replyPage.nowPage }">
						<!-- 현재 페이지일 경우, 링크 해제 -->
						<li class="page-item active"><a class="page-link">${p }</a></li>
					</c:when>
					<c:when test="${p != replyPage.nowPage }">
						<!-- 다른 페이지 링크 -->
						<li class="page-item"><a class="page-link"
							href="writing_detail?wnum=${replyPage.wnum}&nowPage=${p }
							&cntPerPage=${replyPage.cntPerPage}">${p }</a>
						</li>
					</c:when>
				</c:choose>
			</c:forEach>
			<!-- 다음 페이지 -->
			<c:choose>
				<c:when test="${replyPage.endPage != replyPage.lastPage}">
					<li class="page-item"><a class="page-link"
						href="writing_detail?wnum=${replyPage.wnum}&nowPage=${replyPage.endPage+1 }
						&cntPerPage=${replyPage.cntPerPage}">&raquo;</a>
					</li>
				</c:when>
				<c:when test="${replyPage.endPage == replyPage.lastPage}">
				
				</c:when>
			</c:choose>
		</ul>
	</div>
<style>
	.pagination {
	 	display: inline-flex;
	}
</style>	