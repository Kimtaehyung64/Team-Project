<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>

	<div class="col-md-12" style="height: 1150px; display: block;">
		<div>
						<ul id="listtarget">
							<c:forEach items="${fsale }" var="e" varStatus="i">
								<li class="list-inline" style="text-overflow: ellipsis;">
									<div class="col-md-6 col-sm-6 float-left" >
										<a href="estateDetail?num=${e.fnum}&kind=${e.fkind}">
											<div class="col-md-12 col-sm-12">
												<img  src="img/${e.fimg[0].fname }${e.fimg[0].ftype}"   onerror="this.src='img/noimg.jpg'"  style="width: 100%; height: 110px;">
												
											</div>
											<div class="col-md-12 col-sm-12" style="height: 120px; text-overflow: ellipsis;">
											<p style="margin-bottom: 0px;"> ${ e.fkind}</p>
														<span >
														${e.fsalekind}
	
														 :${e.deposit } <c:if test="${e.rent != null && e.rent != '0' }">/ ${e.rent }</c:if></span><br>
													
					 							<p style="overflow: hidden;">${e.finvo.fcontent}</p>
											</div>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
						</div>
						
			</div>
			<div  style="margin-top: 10px;">
						<%@ include file="estatepage.jsp" %>
						</div>