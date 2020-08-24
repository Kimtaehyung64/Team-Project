<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
    
<table>
								<tr>
									<td colspan="4" class="enrollHeader">추가정보</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">상가관리비</td>
									<td colspan="3" class="enrollrentBody">
										<div class="col-md-12" style="margin-top: 10px;">
											<input type="text" class="input-val adminpay" id="adminpay"
												value="0" class="address-search">&nbsp;만원
										</div>
										<hr>
										<div class="col-md-12 text-left">
											<label>관리비항목 (다중선택가능) :</label> <span
												class="square administrative false"
												onclick="clicksub(0,'administrative')">인터넷</span>  <span
												class="square administrative false"
												onclick="clicksub(1,'administrative')">청소비</span> <span
												class="square administrative false"
												onclick="clicksub(2,'administrative')">수도세</span> <span
												class="square administrative false"
												onclick="clicksub(3,'administrative')">도시가스</span> <span
												class="square administrative false"
												onclick="clicksub(4,'administrative')">전기세</span>
												<span
												class="square administrative false"
												onclick="clicksub(5,'administrative')">임대료에 포함됨</span>
												<span
												class="square administrative false"
												onclick="clicksub(6,'administrative')">기타</span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">주차여부</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square parking false" onclick="clickpark(0,'parking')">가능</span>
											<span class="square parking false" onclick="clickpark(1,'parking')">불가능</span>
											<input type="text" id="parking" class="input-val"
												disabled="disabled" placeholder="0" value="0" style="margin-left:5px;">&nbsp;대
										</div>
									</td>
									<td class="enrollSideHeader">엘리베이터</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square elevator false"
												onclick="clicksubto(0,'elevator')">있음</span> <span
												class="square elevator false"
												onclick="clicksubto(1,'elevator')">없음</span>
										</div>
									</td>
								</tr>
								

								<tr>
									<td  class="enrollSideHeader">독립공간</td>
									<td  class="enrollrentBody" style=" padding-bottom: 15px;padding-left: 10px;">
										<div class="text-left">
											<select class="float-left independent" id="independent">
												<option selected="selected"> 없음</option>
												<option>1개</option>
												<option>2개</option>
												<option>3개</option>
												<option>4개이상</option>
											</select>

										</div>
									</td>

								
									<td class="enrollSideHeader">냉방시설</td>
									<td colspan="3" class="enrollrentBody" style=" padding-bottom: 15px;padding-left: 10px;">
										<div class="text-left" >
											<select class="float-left cooling" id="cooling">
												<option selected="selected">냉방종류 선택</option>
												<option>중앙냉방</option>
												<option>개별냉방</option>
												<option>천정형에어컨</option>
												<option>벽걸이에어컨</option>
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<td  class="enrollSideHeader">용도지역</td>
									<td  class="enrollrentBody" style=" padding-bottom: 15px;padding-left: 10px;">
										<div class="text-left">
											<input type="text" id="usearea" class="input-val"
												 style="margin-left:5px;">

										</div>
									</td>

								
									<td class="enrollSideHeader">주용도</td>
									<td colspan="3" class="enrollrentBody" style=" padding-bottom: 15px;padding-left: 10px;">
										<div class="text-left" >
											<input type="text" id="mpurpo" class="input-val"
												 style="margin-left:5px;">
										</div>
									</td>
								</tr>
								
								<tr>
									
									<td colspan="1" class="enrollSideHeader">화장실</td>
									<td colspan="3" class="enrollrentBody" style=" padding-bottom: 15px;padding-left: 10px;">
										<div class="text-left">
											<select class="float-left toilet" id="toilet">
												<option selected="selected">정보없음</option>
												<option>내부/남녀구분</option>
												<option>외부/남녀구분</option>
											
											</select>
										</div>
									</td>
								</tr>
							</table>