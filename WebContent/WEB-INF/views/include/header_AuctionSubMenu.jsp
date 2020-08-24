<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<style>
/* 여기서부터 subMenuBar에 대한 CSS */
.subMenuBar{
	height: 60px;
    box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 1px -2px;
    text-align: center;
    line-height: 59px;
    background: #FFFFFF;
    font-family: 'Noto Sans KR',sans-serif;
    box-sizing: border-box;
    margin: 0px;
    padding: 0px;
    border-bottom: 1px double #D8D8D8;
    z-index: 1030;
}
.subMenuBar > a{
	height: 14px;
    font-size: 15px;
    color: #000000;
    font-family: 'Noto Sans KR',sans-serif;
    vertical-align: middle;
    padding-bottom: 10px;
    text-decoration: none;
    margin-left: 25px;
    margin-right: 25px;
}
.subMenuLine{
	display: inline-block;
    width: 1px;
    height: 14px;
    vertical-align: middle;
    background-color: #D8D8D8;
    font-family: 'Noto Sans KR',sans-serif;
    box-sizing: border-box;
    margin: 0px;
    padding: 0px;
}
</style>
<c:catch>
	<c:choose>
    	<c:when test="${empty user}">
			<article class="subMenuBar">
				<a href="auctionMain">물건검색</a>
				<div class="subMenuLine"></div>
				<a href="#" onclick="loginCheck()">판매관리</a>
				<div class="subMenuLine"></div>
				<a href="#" onclick="loginCheck()">경매 매물 등록</a>
			</article>
		</c:when>
		<c:otherwise>
			<article class="subMenuBar">
				<a href="auctionMain">물건검색</a>
				<div class="subMenuLine"></div>
				<a href="auction_sales?aid=${user.aid}">판매관리</a>
				<div class="subMenuLine"></div>
				<a href="auctionAdd">경매 매물 등록</a>
			</article>
		</c:otherwise>
	</c:choose>
</c:catch>

<script>
function loginCheck(){
	alert('로그인이 필요한 서비스입니다. 로그인 페이지로 이동합니다.');
	location.href = 'login';
}
</script>
</html>