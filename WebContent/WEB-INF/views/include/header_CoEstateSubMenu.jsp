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
<article class="subMenuBar">
		<a href="realprice">실거래가</a>
		<div class="subMenuLine"></div>
		<a href="nearEstate">주변 부동산</a>
		<div class="subMenuLine"></div>
		<a href="product">매물 검색</a>
		<div class="subMenuLine"></div>
		<a href="estateMain">매물 현황</a>
		<div class="subMenuLine"></div>
		<a href="newsList">뉴스</a>
</article>
<script>
function loginCheck(){
	alert('로그인이 필요한 서비스입니다. 로그인 페이지로 이동합니다.');
	location.href = 'login';
}
</script>
</html>