<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_main.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_CoEstateSubMenu.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
.taglist{
	font-size: 11px;
}

/* 검색창 CSS 시작 */
#searchform1 {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;
	width: 1113px;
}

#searchType {
	width: 100px;
	margin: 5px 0px 5px 5px;
	display: inline-block;
	padding-top: 7px;
}

#searchValue {
	width: 900px;
	display: inline-block;
	padding-bottom: 12px;
}
#search {
	margin-right: 5px;
    background-color: #FFFFFF;
    border: 1px solid #D8D8D8;
    color: #000000;
    width: 90px;
    height: 38px;
    border-radius: 0.25rem;
   	display: inline-block;
   	padding-top: 1px;
}
#search:hover {
	border: 1px solid #F24607;
	background-color: #FFFFFF;
	color: #000000;
}
.container{
	margin: 0 auto !important;
	padding: 0px;
	font-family: 'Noto Sans KR',sans-serif;
}
#datalist tr:nth-child(6){
	width: 100px;
}
.productTitle{
	text-align: center;
	width: 100%;
	margin-bottom:30px;
}
/* 검색창 CSS 끝 */
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<div class="form-inline form-group" id="location1">
			<h1 class="productTitle">매물 정보</h1>
		</div>
		<table class="table table-hover" id="dataList">
			<thead>
				<tr>
					<th>번호</th>
					<th style="width: 170px;">종류/전ㆍ월세/가격</th>
					<th style="width: 470px;">내용</th>
					<!-- <th>태그리스트</th> -->
					<th>부동산이름</th>
					<th>지역구</th>
				</tr>
			</thead>
			<tbody id="productBody">
				<c:forEach var="listv" items="${list}">
					<tr>
						<th class="productNumber">${listv.pdnum}</th>
						<td>${listv.rlettpcd} | ${listv.tradtpcd} | ${listv.prc}</td>
						<c:if test="${fn:length(listv.atclfetrdesc) >= 30}">
						<td><a href="estateDetail?num=${listv.pdnum}">${fn:substring(listv.atclfetrdesc,0,30)}...</a></td>
						</c:if>
						<c:if test="${fn:length(listv.atclfetrdesc) < 30}">
						<td><a href="estateDetail?num=${listv.pdnum}">${listv.atclfetrdesc}</a></td>
						</c:if>
						<%-- <td class="taglist">${listv.taglist}</td> --%>
						<td>${listv.rltrnm}</td>
						<td>${listv.plocation }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="5" id="pageTd"><%@ include file="server/productPaging.jsp"%></th>
				<tr>
			</tfoot>
		</table>
		<div class="form-check-inline" id="searchform1">
			<form method="post" action="product">
				<select id="searchType" name="searchType" class="custom-select">
					<option value="1">내용</option>
					<option value="2">행정동명</option>
				</select>
				<input type="text" class="form-control" id="searchValue" name="searchValue">
				<input type="submit" class="btn-primary btn-sm" id="search" value="검색">
			</form>
		</div>				
	</div>
</section>
<%@ include file="../include/footer.jsp"%>