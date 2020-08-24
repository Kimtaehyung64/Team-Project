<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_main.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_CoEstateSubMenu.jsp"%>
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
	width: 150px;
}
.searchtop{
	border: 1px solid gray;
    border-radius: 5px 5px 5px 5px;
    border-style: groove;
    width: 100%;
    height: 60px;
    padding: 10px;
    margin-bottom: 15px;
}
.searchselect{
	width: 100px;
	height: 37px;
	display: inline;
}
.button1{
	padding: 0.75rem 0.75rem;
    letter-spacing: 0.05rem;
    float: right;
    width: 80px;
    border-radius: 5px;
}
.emphasize{
	text-decoration: none;
	font-style: normal;
	color: #F27405;
	font-weight: 600;
	font-size: 11px;
}
.searchTitle{
	text-align: center;
	width: 100%;
	margin-bottom:30px;
}
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<div class="form-inline form-group" id="location1">
			<h1 class="searchTitle">실거래가 정보</h1>
		</div>
		<div class="searchtop">
			<select id="gulist" class="form-control searchselect">
			</select> 
			<select id="donglist" class="form-control searchselect">
				<option>동 선택</option>
			</select>
			<button class="button1"onclick="searchList()">검색</button>
		</div>
		<table class="table table-hover" id="dataList" style="width: 1114px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>지역구</th>
					<th>지역동</th>
					<th>가격<em class="emphasize">(단위:만원)</em></th>
					<th>전용면적<em class="emphasize">(단위:평)</em></th>
					<th>층</th>
					<th>건축년도</th>
				</tr>
			</thead>
			<tbody id="productBody">
				<c:forEach var="listv" items="${list}">
					<tr>
						<th>${listv.transaction_id}</th>
						<td>${listv.sigungu}</td>
						<td>${listv.dong}</td>
						<td>${listv.transaction_real_price}</td>
						<td>${listv.exclusive_use_area}</td>
						<td>${listv.floor}</td>
						<td>${listv.year_of_completion}</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" id="pageTd">
						<%@ include file="server/realpricePaging.jsp"%>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
	<script>
		$(function() {
			$.ajax({
				url : "gu?cate=combobox1",
				success : function(d) {
					$("#gulist").html(d);
				}
			})
		})

		function searchList() {
			var param = $("#gulist").val();
			var param2 = $("#donglist").val();
			if (param2 === null || param2 === "") {
				location = "realprice?searchType=1&searchValue=" + param;
				$.ajax({
					url : "dong?cate=combobox2&guName=" + param,
					success : function(d) {
						$("#donglist").html(d)
					}
				})
			} else {
				location = "realprice?searchType=2&searchValue=" + param2;
			}
		}
		$("#gulist").change(function() {
			var param = $(this).val();
			$.ajax({
				url : "dongList?cate=combobox2&guName=" + param,
				success : function(d) {
					$("#donglist").html(d)
				}
			})
		})
	</script>
</section>
<%@ include file="../include/footer.jsp"%>