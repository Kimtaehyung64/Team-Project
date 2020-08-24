<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<a data-toggle="tab" href="#myinformation" id="selectmyinfo">정보 수정</a>
		<div class="subMenuLine"></div>
		<a data-toggle="tab" href="#myposts" id="selectmyposts">나의 게시글 관리</a>
		<div class="subMenuLine"></div>
		<a data-toggle="tab" href="#myproduct" id="selectmyproduct">나의 매물관리</a>
		<div class="subMenuLine"></div>
		<a data-toggle="tab" href="#myauction" id="selectmyauction">나의 경매관리</a>
</article>
</html>