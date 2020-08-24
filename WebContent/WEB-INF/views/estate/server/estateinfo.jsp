<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
    
<table>
								<tr>
									<td colspan="4" class="enrollHeader">추가정보</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">관리비</td>
									<td colspan="3" class="enrollrentBody">
										<div class="col-md-12" style="margin-top: 10px;">
											<input type="text" class="input-val adminpay" id="adminpay"
												value="0" class="address-search">&nbsp;만원
										</div>
										<hr>
										<div class="col-md-12 text-left">
											<label>관리비항목 (다중선택가능) :</label> <span
												class="square administrative false"
												onclick="clicksub(0,'administrative')">인터넷</span> <span
												class="square administrative false"
												onclick="clicksub(1,'administrative')">유선TV</span> <span
												class="square administrative false"
												onclick="clicksub(2,'administrative')">청소비</span> <span
												class="square administrative false"
												onclick="clicksub(3,'administrative')">수도세</span> <span
												class="square administrative false"
												onclick="clicksub(4,'administrative')">도시가스</span> <span
												class="square administrative false"
												onclick="clicksub(5,'administrative')">전기세</span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">주차여부</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square parking false" onclick="clickpark(0)">가능</span>
											<span class="square parking false" onclick="clickpark(1)">불가능</span>
											<input type="text" id="pamount" class="input-val"
												disabled="disabled" placeholder="0" value="0" style="margin-left:5px;">&nbsp;원
										</div>
									</td>
									<td class="enrollSideHeader">반려동물</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square pets false"
												onclick="clicksubto(0,'pets')">가능</span> <span
												class="square pets false" onclick="clicksubto(1,'pets')">불가능</span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">엘리베이터</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square elevator false"
												onclick="clicksubto(0,'elevator')">있음</span> <span
												class="square elevator false"
												onclick="clicksubto(1,'elevator')">없음</span>
										</div>
									</td>
									<td class="enrollSideHeader">베란다/발코니</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square balcony false"
												onclick="clicksubto(0,'balcony')">있음</span> <span
												class="square balcony false"
												onclick="clicksubto(1,'balcony')">없음</span>
										</div>
									</td>
								</tr>

								<tr>
									<td class="enrollSideHeader">빌트인</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square built false"
												onclick="clicksubto(0,'built')">있음</span> <span
												class="square built false" onclick="clicksubto(1,'built')">없음</span>
										</div>
									</td>
									<td class="enrollSideHeader">구조</td>
									<td class="enrollrentBody">
										<div class="text-left">
											<span class="square structure false"
												onclick="clicksub(0,'structure')">복층</span> <span
												class="square structure false"
												onclick="clicksub(1,'structure')">1.5룸/주방분리형</span>
										</div>
									</td>
								</tr>
								<tr>
									<td rowspan="2" class="enrollSideHeader">옵션 항목</td>
									<td colspan="3" class="enrollrentBody">
										<div class="text-left">
											<span class="square option false"
												onclick="clicksub(0,'option')">에어컨</span> <span
												class="square option false" onclick="clicksub(1,'option')">세탁기</span>
											<span class="square option false"
												onclick="clicksub(2,'option')">침대</span> <span
												class="square option false" onclick="clicksub(3,'option')">책상</span>
											<span class="square option false"
												onclick="clicksub(4,'option')">옷장</span> <span
												class="square option false" onclick="clicksub(5,'option')">TV</span>

										</div>
									</td>

								</tr>
								<tr>

									<td colspan="3" class="enrollrentBody">
										<div class="text-left">
											<span class="square option false"
												onclick="clicksub(6,'option')">신발장</span> <span
												class="square option false" onclick="clicksub(7,'option')">냉장고</span>
											<span class="square option false"
												onclick="clicksub(8,'option')">가스레인지</span> <span
												class="square option false" onclick="clicksub(9,'option')">인덕션</span>
											<span class="square option false"
												onclick="clicksub(10,'option')">전자레인지</span> <span
												class="square option false" onclick="clicksub(11,'option')">전자도어락</span>
											<span class="square option false"
												onclick="clicksub(12,'option')">비데</span>
										</div>
									</td>

								</tr>
								<tr>
									<td class="enrollSideHeader">전세 자금대출</td>
									<td colspan="3" class="enrollrentBody">
										<div class="text-left">
											<span class="square chartered false"
												onclick="clicksubto(0,'chartered')">가능</span> <span
												class="square chartered false"
												onclick="clicksubto(1,'chartered')">불가능</span>
										</div>
									</td>
								</tr>
							</table>