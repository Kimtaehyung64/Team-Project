<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.auctionTable tr{
	text-align: center;
}
.iplistLabel{
	text-align: center;
	font-size: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
}
</style>
<p class="iplistLabel">해당 건물에 대한 입찰 내역입니다.</p>
<c:choose>
	<c:when test="${ipll=='[]'}">
		<span style="margin-left: 50%;">입찰 내역이 없습니다.</span>
	</c:when>
	<c:otherwise>
		<table class="auctionTable">
			<tr>
				<th>입찰자</th>
				<th>입찰금</th>
				<th>입찰일자</th>
			</tr>
			<c:forEach var="ipll" items="${ipll}" varStatus="idx">
				<tr>
					<td id="colchk1" scope="row" style="width: 130px;">${ipll.bid}</td>
					<td id="coltd1_2" style="width: 130px;">${ipll.ipprice}</td>
					<td style="text-align: center;">${ipll.ipdate}</td>
				</tr>
			</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
