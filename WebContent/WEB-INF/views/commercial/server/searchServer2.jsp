<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<thead>
				<tr>
					<th colspan="8">매물정보</th>
				</tr>
				<tr>
					<th>번호</th>
					<th>매물종류</th>
					<th>거래종류</th>
					<th>가격(만원)</th>
					<th>매물정보</th> 
					<th>tagList</th>
					<th>부동산이름</th>
					<th>행정동명</th>
				</tr>
			</thead>
			<tbody id="productBody">
				<c:forEach var="listv" items="${list}">
					<tr>
						<th>${listv.pdnum}</th>
						<td>${listv.rlettpcd}</td>
						<td>${listv.tradtpcd}</td>
						<td>${listv.prc}</td>
						<td>${listv.atclfetrdesc}</td>
						<td>${listv.taglist}</td>
						<td>${listv.rltrnm}</td>
						<td>${listv.plocation }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" id="pageTd"><%@ include file="pageProcess.jsp"%>
					</td>
				</tr>
				<tr>
					<th colspan="8">
						<form method="post" action="productSearch">
							<input type="hidden" name="nowPage" value="${param.nowPage}">
							<input type="hidden" name="page" value="${param.page}"> <select id="searchType"
								name="searchType">
								<option value="1">내용</option>
							</select>&nbsp; <input type="text" id="searchValue" name="searchValue"> <input type="submit"
								class="btn-primary btn-sm" id="search" value="검색">
						</form>
					<th>
				<tr>
			</tfoot>
 