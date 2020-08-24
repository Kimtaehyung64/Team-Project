<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<style>
h2{
text-align: center;
}
em{
	font-style: normal;
	color: #F28705;
}
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<h2><em>꿀방</em> 커뮤니티 : 관심있는 분야에 관해서 이야기를 나눠요!</h2>
		<ul class="nav nav-tabs"></ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../community/include/community_all.jsp" %>
		</div>
	</div>
</section>
<script>
	$(function() {
		$('#writeBtn1').click(function() {
			location = 'wriCom';
		});
		$('#writeBtn2').click(function() {
			location = 'wriCom';
		});
		$('#writeBtn3').click(function() {
			location = 'wriEst';
		});
		$('#writeBtn4').click(function() {
			location = 'wriAuc';
		});
	});
</script>
<%@ include file="../include/footer.jsp"%>