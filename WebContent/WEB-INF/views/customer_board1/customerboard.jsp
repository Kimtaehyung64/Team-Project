<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/styles.css" rel="stylesheet">
<style>
h2{
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 10px;
}
#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
	
}

#searchValue {
	width: 750px;
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
	border-radius: 3px;
	border: 1px solid #D8D8D8;
	padding: 5px 23px 5px 23px;
}

#pagenum1{
	display: table;
	margin-left: auto;
	margin-right: auto;
}
#total{
	color: blue;
}

/* 200814 */
.table-hover > thead > th:first-child{
	width: 70px;
}
.table-hover > thead > th:nth-child(3){
	width: 450px;
}
.table-hover > thead > th:nth-child(4){
	width: 210px;
}
.table-hover{
	width: 950px;
}
.container{
	width: 975px;
}
#projects{
	padding: 80px 0;
}

</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<h2>고객센터 게시판 입니다.</h2>
		<ul class="nav nav-tabs"></ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../customer_board1/include/customer.jsp" %>
		</div>
	</div>
</section>
<script>
	$(function() {
		$('#writeBtn1').click(function() {
			location = 'customerboardWriter';
		});
	});
	
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