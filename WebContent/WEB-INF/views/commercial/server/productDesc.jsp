<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<link href="resources/css/styles.css" rel="stylesheet" />
<c:forEach items="${result}" var="e" varStatus="idx" begin="1" end="3">
	<div class="col-md-4 mb-5 productmain">
		<div class="card h-100">
			<div class="card-body">
				<!-- <h2 class="card-title">[매매] 일반상가</h2> -->
				<h2 class="card-title">${e.atclfetrdesc}...</h2>
				<div class="commercialimg">
					<img src="resources/images/commercial/commercial${idx.index}.jpg" class="mainImage">
				</div>
			</div>
			<div class="card-footer">
				<button onclick="open_pop()" class="btn btn-primary btn-sm productdescmodal" value="${e.pdnum}">More Info</button>
			</div>
		</div>
	</div>
</c:forEach> 