<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<div id="pagenum1">
		<ul class="pagination pagination-lg">
			<!-- 이전 페이지 -->
			<c:choose>
				<c:when test="${paging.startPage != 1 }">
					<li class="page-item"><a class="page-link"
						href="comuMain?sortindex=${paging.sortindex}&nowPage=${paging.startPage - 1 }
						&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&searchValue=${searchValue}">&laquo;</a></li>
				</c:when>
				<c:when test="${paging.startPage == 1 }">
					<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a></li>
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
							href="comuMain?sortindex=${paging.sortindex}&nowPage=${p }
							&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&searchValue=${searchValue}">${p }</a>
						</li>
					</c:when>
				</c:choose>
			</c:forEach>
			<!-- 다음 페이지 -->
			<c:choose>
				<c:when test="${paging.endPage != paging.lastPage}">
					<li class="page-item"><a class="page-link"
						href="comuMain?sortindex=${paging.sortindex}&nowPage=${paging.endPage+1 }
						&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&searchValue=${searchValue}">&raquo;</a>
					</li>
				</c:when>
				<c:when test="${paging.endPage == paging.lastPage}">
					<li class="page-item disabled"><a class="page-link" href="#">&raquo;</a>
					</li>
				</c:when>
			</c:choose>
		</ul>
	</div>