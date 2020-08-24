<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="tab-pane fade show active" id="all">
	<div>
		<div id="checkorder1">
			<div class="form-check-inline">
				&nbsp;&nbsp;&nbsp; <input type="hidden" id="sortindex"
					name="sortindex" value="${paging.sortindex}">
				<button type="button" class="button3" id="writeBtn1"
					style="border-radius: 3px;">
					<i class="fas fa-pen"></i>&nbsp;글쓰기
				</button>
			</div>
		</div>
	</div>
	<input type="hidden" name="anum" value="${user.anum }"> <input
		type="hidden" name="aid" value="${user.aid }">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">문의 유형</th>
				<th scope="col">제목</th>
				<th scope="col">등록일</th>
				<th scope="col">답변상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="clist" items="${listall}">
				<c:if test="${user.aid == clist.aid}">
					<tr>
						<th class="num">${clist.c_num}</th>
						<td class="type">${clist.c_type}</td>
						<td class="tit"><a href="Detail?c_num=${clist.c_num}">${clist.c_subject}</a></td>
						<td class="date">${clist.c_regdate}</td>
						<td class="view chkview">${clist.c_anschk}</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>

	<div class="form-check-inline" id="searchform1">
		<select class="custom-select" id="searchType" name="searchType">
			<option value="title">제목</option>
			<option value="contents">내용</option>
		</select> <input type="text" class="form-control" id="searchValue"
			name="searchValue">
		<button type="submit" class="button3" id="btnSearch" value="Search">검색</button>
	</div>
	<!-- 페이지 프로세스 include 처리 -->
	<%@include file="pageprocess_all.jsp"%>
</div>
<script>
	$(function() {

		$(document).on('click', '#btnSearch', function(e) {
			var url = "listall";
			url = url + "?searchType=" + $('#searchType').val();
			url = url + "&searchValue=" + $('#searchValue').val();
			location.href = url;
		});
	});
	
</script>