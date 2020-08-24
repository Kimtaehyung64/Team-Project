<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<style>
#Select1, #Select2 {
	margin-left: 10px;
	margin-right: 10px;
}

#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}
tr th {
width:150px;}
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<div class="form-inline form-group" id="location1">
			<h1>차트 게시판</h1>
		</div>
		<div>
			<select id="gulist">
			</select>
			<select id="donglist">
				<option>동 선택</option>
			</select>
			<button onclick="searchList()">검색 하기</button>
		</div>
		<table class="table table-hover" id="dataList" style="width: 1300px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>구</th>
					<th>동</th>
					<th>가격(만원)</th>
					<th>전용면적</th>
					<th>건축년도</th>
				</tr>
			</thead>
			<tbody id="productBody">
				<c:forEach var="listv" items="${list}">
					<tr>
						<th>${listv.num}</th>
						<td>${listv.gu}</td>
						<td>${listv.dong}</td>
						<td>${listv.prc}</td>
						<td>${listv.spc2}</td>
						<td>${listv.year}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" id="pageTd">
						<%@ include file="server/pageProcess.jsp"%>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<script>
	
	</script>
</section>
<%@ include file="../include/footer.jsp"%>