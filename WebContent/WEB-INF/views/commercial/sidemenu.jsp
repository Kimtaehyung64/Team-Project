<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <link href="resources/css/commercial/sidebar.css" rel="stylesheet"/> -->
<div id="response">
	<div id="rightSide" style="overflow-y: auto;">
		<div id="right_zzim" style="overflow-y: auto;">
			<div class="recTit" style="overflow-y: auto;">
				<a class="sidebarTitle">뉴스 핵심 키워드</a>
				<div id="recentCnt">
					<table class="table sideMenuTable" style="overflow-y: auto;">
						<thead>
							<tr>
								<th>랭킹</th>
								<th>키워드</th>
								<th>빈도</th>
							<tr>
						</thead>
						<tbody>
							<c:forEach var="value" items="${keywordlist}">
								<tr>
									<td>${value.num}</td>
									<td>${value.keyword}</td>
									<td>${value.frequency}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	window.onload = function() {
		url = "keyword"
		$.ajax({
			url : url,
			success : function(d) {
				$("#response").html(d)
			},
			error : function(e) {
				console.log("Error : " + e);
			}
		});
	}
</script>

