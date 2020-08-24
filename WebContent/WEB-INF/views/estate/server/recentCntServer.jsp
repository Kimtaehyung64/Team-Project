<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:forEach items="${list }" var="vo">
	<button onclick="open_pop(${vo.pdnum})" class="productdescmodal Cntcount" value="${vo.pdnum}" style="padding:1px;">
		<table>
			<tr>
				<th style="text-align: center;">
					참고하실 수 있는 <em style="font-style: normal; color: #F24607;">${vo.plocation}</em>의 매물입니다.
				</th>
			</tr>
			<tr>
				<td>
					<img class="sideBarImage" src="img/${vo.img }">
				</td>
			</tr>
			<tr style="text-align: center;">
				<c:if test="${fn:length(vo.atclfetrdesc) >= 20}">
					<td>${fn:substring(vo.atclfetrdesc,0,20)}...</td>
				</c:if>
				<c:if test="${fn:length(vo.atclfetrdesc) < 20}">
					<td>${vo.atclfetrdesc}</td>	
				</c:if>
			</tr>
		</table>
	</button>
</c:forEach>