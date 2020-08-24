<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<link href="https://fonts.googleapis.com/css?family=Noto Sans KR" rel="stylesheet"/>
<link href="resources/css/styles.css" rel="stylesheet"/>
<style>
.card-body{
	margin: 0 auto;
	width: 955px;
	padding: 0px;
}
.commercialContainer{
	border: 4px solid #F2A81D;
    width: 960px;
    border-radius: 10px;
    background-color: #FFFFFF;
    padding: 10px;
}
.commercialSection{
	border: 0px;
	background-color: #F2A81D;
}
.commercialBorder{
	border-left: 4px solid #F2A81D;
	border-right: 4px solid #F2A81D;
	border-bottom: 4px solid #F2A81D;
}
.container{
	font-family: 'Noto Sans KR',sans-serif;
	padding-top: 10px;
}
em{
	font-style: normal;
	color: #F25C05;
}
.infobutton{
	width: 55%;
	font-size: 15px;
	height: 40px;
    background-color: #FFFFFF;
    border: 2px solid #004358;
    border-radius: 0px;
    color: #000000;
    line-height: 3px;
    padding: 5px 15px 5px 15px;
}
td.infotd{
	padding-bottom: 0px;
}
#information{
	border: 4px double #004358;
	padding-top: 0.75rem;
}
</style>
<h3 style="text-align: center;">${result[0].guName}</h3>
<input type="hidden" value="${result[0].guName}">
<table class="table" style="text-align: center;">
	<tr>
		<th>상권업종대분류명</th>
		<th>수</th>
	</tr>
	<tr>
		<c:forEach items="${result}" var="e">
			<tr>
				<td>${e.largeName}</td>
				<td>${e.num}</td>
			</tr>
		</c:forEach>
	<tr>
		<td colspan="2" class="infotd"><button onclick="open_pop2()" class="btn infobutton"><i class="fas fa-chevron-down"></i>&nbsp;상세 정보 보기</button></td>
	</tr>
</table>