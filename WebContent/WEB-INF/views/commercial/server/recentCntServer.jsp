<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
	<button onclick="open_pop()" class="productdescmodal Cntcount" value="${result.pdnum}">
		<table>
			<tr>
				<td rowspan="2" class="enrollSideHeader">${result.plocation}</td>
				<th colspan="2" rowspan="2">
				<img src="resources/images/commercial/gangdong1.jpg" style="width: 200px; height: 200px;">
				</th>
			</tr>
			<tr>
			</tr>
			<tr>
				<td colspan="3" class="enrollrentBody">${result.atclfetrdesc}</td>
			</tr>
		</table>
	</button>