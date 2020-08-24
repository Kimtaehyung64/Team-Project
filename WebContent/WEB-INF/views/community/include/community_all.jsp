<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
	margin-top: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}

#searchValue {
	width: 900px;
	margin-right: 5px;
}

#searchType {
	width: 100px;
	margin: 5px;
}

#searchform1 {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;
}

#btnSearch {
	margin-right: 5px;
    background-color: #FFFFFF;
    border: 1px solid #D8D8D8;
    color: #000000;
    width: 90px;
    height: 38px;
    border-radius: 0.25rem;
}
#btnSearch:hover {
	border: 1px solid #F24607;
	background-color: #FFFFFF;
	color: #000000;
}

#pagenum1 {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#total {
	color: blue;
}
#all{
	font-family: 'Noto Sans KR',sans-serif;
}
th{
	font-weight: normal; 
}

.btn{
	padding: 0.75rem 0.75rem;
	letter-spacing: 0.05rem;
	font-size: 90%;
}

.btn:hover{
	text-decoration: underline;
	color: #000000;
}

.btn.btn-inactive{
	color: #A4A4A4;
}

.btn.btn-active{
	color: #000000;
}
.communityLabel{
	margin: 0px;
	border-bottom: 1px solid #D8D8D8;
    padding-bottom: 15px;
}
</style>
<div class="tab-pane fade show active" id="all">
	<br>
	<div>
		<p class="communityLabel">
			총 <a id="total">${total}</a>건의 글이 검색되어 있습니다.
		</p>
		<div id="checkorder1">
			<div class="form-check-inline">
				<input type="button" id="wnumBtn" name="wnumBtn"
					class="btn btn-active btn-sm" value="최신순▼">
			</div>
			<a> | </a>
			<div class="form-check-inline">
				<input type="button" id="whitBtn" name="whitBtn"
					class="btn btn-inactive btn-sm" value="조회순■">
			</div>
			<a> | </a>
			<div class="form-check-inline">
				<input type="button" id="wrecBtn" name="wrecBtn"
					class="btn btn-inactive btn-sm" value="추천순■">
				&nbsp;&nbsp;&nbsp; <input type="hidden" id="sortindex"
					name="sortindex" value="${paging.sortindex}">
				<c:if test="${user.aid != null}">
					<button type="button" class="btn-sm button2" id="writeBtn1"><i class="fas fa-pen"></i>&nbsp;글쓰기</button>
				</c:if>
			</div>
		</div>
	</div>
	<input type="hidden" value="${alist.wdel}">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">지역</th>
				<th scope="col">제목</th>
				<th scope="col">등록일</th>
				<th scope="col">조회</th>
				<th scope="col">추천</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="alist" items="${listall}">
				<tr>
					<c:if test="${fn:length(alist.wtitle) >= 30}">
						<th scope="row">${alist.wloc1}&nbsp;${alist.wloc2}&nbsp;[${alist.wgubun}]</th>
						<td><a href="writing_detail?wnum=${alist.wnum}">${fn:substring(alist.wtitle,0,30)}...</a></td>
						<td>${alist.wchgdate}</td>
						<td>${alist.whit}</td>
						<td>${alist.wrec}</td>
					</c:if>
					<c:if test="${fn:length(alist.wtitle) < 30}">
						<th scope="row">${alist.wloc1}&nbsp;${alist.wloc2}&nbsp;[${alist.wgubun}]</th>
						<td><a href="writing_detail?wnum=${alist.wnum}" title="${alist.wtitle}">${alist.wtitle}</a></td>
						<td>${alist.wchgdate}</td>
						<td>${alist.whit}</td>
						<td>${alist.wrec}</td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="form-check-inline" id="searchform1">
		<select class="custom-select" id="searchType" name="searchType">
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="comugu">구</option>
			<option value="comudong">동</option>
		</select> <input type="text" class="form-control" id="searchValue"
			name="searchValue">
		<button type="submit" id="btnSearch"
			value="Search">검색</button>
	</div>
	<!-- 페이지 프로세스 include 처리 -->
	<%@include file="pageprocess_all.jsp"%>
</div>
<script>
	$(function() {
		// 매개변수가 변함에 따라 버튼을 바꾸는 함수
		if ($('#sortindex').val() === '2') {
			$("#wnumBtn").val('최신순▲');
			$("#wnumBtn").attr('class', 'btn btn-active btn-sm');
		} else if ($('#sortindex').val() === '1') {
			$("#wnumBtn").val('최신순▼');
			
		} else if ($('#sortindex').val() === '4') {
			$("#whitBtn").val('조회순▲');
			$("#whitBtn").attr('class', 'btn btn-active btn-sm');
			
			$("#wnumBtn").val('최신순■');
			$("#wnumBtn").attr('class', 'btn btn-inactive btn-sm');
		} else if ($('#sortindex').val() === '3') {
			$("#whitBtn").val('조회순▼');
			$("#whitBtn").attr('class', 'btn btn-active btn-sm');
			
			$("#wnumBtn").val('최신순■');
			$("#wnumBtn").attr('class', 'btn btn-inactive btn-sm');
		} else if ($('#sortindex').val() === '6') {
			$("#wrecBtn").val('추천순▲');
			$("#wrecBtn").attr('class', 'btn btn-active btn-sm');
			
			$("#wnumBtn").val('최신순■');
			$("#wnumBtn").attr('class', 'btn btn-inactive btn-sm');
		} else {
			$("#wrecBtn").val('추천순▼');
			$("#wrecBtn").attr('class', 'btn btn-active btn-sm');
			
			$("#wnumBtn").val('최신순■');
			$("#wnumBtn").attr('class', 'btn btn-inactive btn-sm');
		}

		// 매개변수가 변함에 따라 주소를 바꾸는 함수
		$("#wnumBtn").click(function() {
			var sortindex = $("#sortindex").val();
			if (sortindex == '2') {
				location.href = "comuMain?sortindex=1";
			} else {
				location.href = "comuMain?sortindex=2";
			}
		});

		$("#whitBtn").click(function() {
			var sortindex = $("#sortindex").val();
			if (sortindex == '4') {
				location.href = "comuMain?sortindex=3";
			} else {
				location.href = "comuMain?sortindex=4";
			}

		});

		$("#wrecBtn").click(function() {
			var sortindex = $("#sortindex").val();
			if (sortindex == '6') {
				location.href = "comuMain?sortindex=5";
			} else {
				location.href = "comuMain?sortindex=6";
			}
		});

		$(document).on('click', '#btnSearch', function(e) {
			var url = "comuMain";
			url = url + "?searchType=" + $('#searchType').val();
			url = url + "&searchValue=" + $('#searchValue').val();
			location.href = url;
		});
	});

</script>
