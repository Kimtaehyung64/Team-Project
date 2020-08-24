<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet"/>
<%@ include file="../include/header_main.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_CoEstateSubMenu.jsp"%>
<%@include file="sidemenu.jsp"%>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<h2>지역별 뉴스기사</h2>
		<ul class="nav nav-tabs"></ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../commercial/news_all.jsp" %>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>