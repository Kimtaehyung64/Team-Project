%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="resources/css/customer_board/mj1.css">
<%@ include file="../include/header_menu.jsp"%>

<style>

</style>

<section class="contact-section bg-white" id="footerMenu">

<script >
$(function() selChange() {
	var sel = document.getElementById('cntPerPage').value;
	location.href="list1?nowPage=${paging.nowPage}&cntPerPage="+sel;
});
</script>
<form action="customerboardWriter1" method="get">
<input type="hidden" name="anum" value="${user.anum }">
	<div class="board_list_wrap">
		<div class="board_list">
			<div class="board_list_head"> 
				<div class="num">번호</div>   
				<div class="tit">제목</div>
				<div class="writer">글쓴이</div>
				<div class="date">작성일</div>
				<div class="view">답변상태</div>
			</div>
			
			<div class="board_list_body">
			<c:forEach items="${list1}" var="list">
				<div class="item">
					<div class="num">${list.c_num}</div>
					<div class="tit"><a  href="Detail1?c_num=${list.c_num}">${list.c_subject}</a></div>
					<div class="writer">${list.c_writer}</div>
					<div class="date">${list.c_regdate}</div>
					<div class="view chkview" >${list.c_anschk}</div>
<%-- 					<div class="view chkview" >${list.c_ans}</div> --%>
				</div>
			</c:forEach>			
		
		</div>
		<div id="outter" style="margin-top: 1rem;">
	<div style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->
	</div>
		<div class = "paging">
						<div>
							<div colspan="4" id="pageTd">
								<!-- page 처리 -->
						 	<%@include file="pageProcess.jsp"%>  
							</div>
						</div>
						<div>
							<div colspan="6">

							</div>
						</div>
						</div>
		<input type="submit" value="글쓰기">
		
	</div>
</form>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$(".chkview").each(function(){
			if($(this).text() === '1' ){
				$(this).text("답변완료");	
			}else {
				$(this).text("답변대기");
			}	
		})
	});
	
</script>

<%@ include file="../include/footer.jsp"%>

