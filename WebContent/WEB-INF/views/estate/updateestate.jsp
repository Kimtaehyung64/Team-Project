<%@page import="mvc.login.vo.UserVO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="resources/css/commercial/modal.css" rel="stylesheet" />
<%@ include file="../include/header_index.jsp"%>
<style>
#rightSide {
	position: absolute;
	top: 547px;
	left: 50%;
	margin: 0 0 0 510px;
}

#rightSide #right_zzim {
	position: fixed;
	top: 75px;
	left: 50%;
	margin-left: 600px;
	border: 2px solid #004358;
	width: 320px;
	height: auto;
	background-color: #F2F2F2;
}

#rightSide #right_zzim  div {
	text-align: center;
}

#rightSide div.recTit {
	line-height: 1.5em;
	padding: 5px;
	color: white;
	background-color: #004358;
}

#right_zzim #recentCnt {
	color: black;
}

#recentCnt {
	background: white;
}

#rightSide #right_zzim ul {
	min-height: 100%;
}

#rightSide #right_zzim {
	text-align: center;
	padding: 5px;
}

#rightSide #right_zzim  img {
	border: 1px solid #ccc
}

#right_zzim .detail {
	display: none;
	position: absolute;
	top: 3px;
	right: 20px;
	xheight: 40px;
	xpadding: 15px 11px 0;
	xbackground: #404a59;
	color: #fff;
	xtext-align: left;
	white-space: nowrap;
	.
	regist
	th,
	tr
	{
	font-size
	:
	15pt;
}

}
#right_zzim li:hover .detail {
	display: block
}

#right_zzim li .btn_delete {
	position: absolute;
	top: 3px;
	right: -1px;
	width: 11px;
	height: 11px;
	background: url(/img/sp.png) no-repeat -193px -111px;
	text-indent: -9000px;
}

#right_zzim  #currentPage {
	color: #505A69;
	font-weight: bold
}

#right_zzim  #totalPageCount {
	color: #CBC8D2;
	font-weight: bold
}

.noData {
	color: #ccc;
	text-align: center;
	margin-top: 223px;
}

}
#paging {
	display:;
	position: relative;
	line-height: 1em;
}

#paging .btn_prev {
	position: absolute;
	top: 526px;
	left: 4px;
	width: 13px;
	height: 11px;
	background: url(/images/ico_arrow.png) no-repeat;
	text-indent: -9000px;
	border: 1px solid #CCC;
	display: inline-block;
}

#paging .btn_next {
	position: absolute;
	top: 526px;
	right: 4px;
	width: 13px;
	height: 11px;
	background: url(/images/ico_arrow.png) -11px 0px;
	text-indent: -9000px;
	border: 1px solid #CCC;
	display: inline-block;
}

/* 테이블 CSS 시작*/
.enrollHeader{
	height: 50px;
    text-align: center;
    font-size: 20px;
    border: 1px solid #D8D8D8;
}
.enrollSideHeader{
	background-color: #f8f8f8;
	text-align: center;
	border: 1px solid #D8D8D8;
}
.enrollBody{
	height: 80px;
	border: 1px solid #D8D8D8;
}
.enrollrentBody{
	height: auto;
	border: 1px solid #D8D8D8;
}
body{
	font-family: 'Noto Sans KR',sans-serif;
}
#productvary{
    padding-left: 20px;
}
/* 테이블 CSS 끝*/
.build.false,
.rent.false,
.move-in.false,
.administrative.false,
.parking.false,
.pets.false,
.elevator.false,
.balcony.false,
.built.false,
.structure.false,
.option.false,
.chartered.false{
	padding: 10px 25px 10px 25px;
	height: 50px;
	background-color: #FFFFFF;
    border: 1px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
    cursor: pointer;
}
.build.false:hover,
.rent.false:hover,
.move-in.false:hover,
.administrative.false:hover,
.parking.false:hover,
.pets.false:hover,
.elevator.false:hover,
.balcony.false:hover,
.built.false:hover,
.structure.false:hover,
.option.false:hover,
.chartered.false:hover{
	border: 1px solid #F27405;
}
.move-in.true,
.administrative.true,
.parking.true,
.pets.true,
.elevator.true,
.balcony.true,
.built.true,
.structure.true,
.option.true,
.chartered.true{
	padding: 10px 25px 10px 25px;
	height: 50px;
	background-color: #FFFFFF;
    border: 2px solid #FD7400;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
    cursor:pointer;
}
.rent.true{
	padding: 10px 25px 10px 25px;
	height: 50px;
	background-color: #FFFFFF;
    border: 2px solid #FD7400;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
}
.build.true{
	padding: 10px 25px 10px 25px;
	height: 50px;
	background-color: #F27405;
    color: #FFFFFF;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
    border: 1px solid #F27405;
}
.move-in.true{
	padding: 10px 25px 10px 25px;
	height: 50px;
	border: 2px solid #FD7400;
	font-family: 'Noto Sans KR',sans-serif;
	line-height: 3px;
    font-size: 15px;
    border-radius: 3px;
	cursor: pointer;
}
.map_wrap{
	border: 1px solid #004358;
	width: 400px; height: 300px;
	margin-left: 10px;
	margin-top: 10px;
}
.jusoAPI{
	margin-top: 20px;
    height: 80px;
}
.jusoSearch{
	padding: 5px 15px 5px 15px;
	margin-left: 10px;
	background-color: #004358;
    border: 1px solid #004358;
    color: #FFFFFF;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
	width: 150px;
	cursor: pointer;
}
.address-search{
	margin-left: 10px;
	margin-bottom: 10px;
}
.dealvary{
	height: 25px;
    margin-top: 20px;
}
.rent-input{
	margin-top: 20px;
}
.rpay{
	margin-top: 10px;
	margin-left: 5px;
    margin-right: 5px;
}
.close-x{
	border: 1px solid #004358;
	background-color: #004358;
	color: #FFFFFF;
	padding: 4px 12px 4px 12px;
	border-radius: 0px;
	margin-left: 10px;
}
.close-x:hover{
	border: 1px solid #004358;
	background-color: #004358;
	color: #FFFFFF;
}
.dealdescription{
	font-size: 13px;
	color: #848484;
	margin-left: 5px;
	display: inline;
}
.add-page{
	margin-right: 5px;
}
.indayCheck{
	height: auto;
	margin-top: 20px;
    margin-bottom: 20px;
}
.text-left{
	height: auto;
	margin-top: 20px;
    margin-bottom: 20px;
}
button3:hover{
	border: 2px solid #FD7400;
	background-color: #FFFFFF !important;
}
button4:hover{
	border: 2px solid #004358;
	background-color: #FFFFFF !important;
}
.mfile{
	margin:10px;
}
.footerCenter > div{
	height: auto !important;
}
.contact-section{
	margin-bottom: 40px;
}
.fileUpload{
	padding: 15px 15px 15px 15px;
	background-color: #004358;
    border: 1px solid #004358;
    color: #FFFFFF;
    line-height: 3px;
    font-size: 15px;
    font-family: 'Noto Sans KR',sans-serif;
    border-radius: 3px;
	width: 150px;
	cursor: pointer;
	margin: 10px;
}
/* sidemenu2 */
.subscribeCheck{
	margin-top: 250px;
}
.subscribeCheck > p > em{
	text-decoration: none;
	font-style: normal;
	color: #FD7400;
}

/* 사이드바 CSS */
.productdescmodal.Cntcount{
	margin-top: 5px;
	background-color: #FFFFFF;
	width: 306px;
	height: auto;
}

.sideBarImage{
	width: 298px; 
	height: 200px;
}
#filter_apply:hover {
	cursor: pointer;
}
</style>
<%@ include file="../include/header_menu.jsp"%>
<section class="contact-section">
	<div class="container2">
		<div class="row">
			<div class="col-md-12 mt-4 add-page">
				<h1>방 내놓기</h1>
				<form id="estater" enctype="multipart/form-data">
					<div class="col-md-9 add-page" style="margin-left: 100px;">
						<!-- 매물종류 시작 -->
						<div class="col-md-12 mt-12 add-sub-page ">
							<table class="enrollTable">
								<tr>
									<td colspan="2" class="enrollHeader">매물 종류</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">종류 선택</td>
									<td class="enrollBody">
										<div id="productvary">
											<span class="square build false" onclick="changeSelect(0)">원룸</span>
											<span class="square build false" onclick="changeSelect(1)">투룸ㆍ쓰리룸</span>
											<span class="square build false" onclick="changeSelect(2)">상가/사무실</span>
											<span class="square build false" onclick="changeSelect(3)">오피스텔(도시형)</span>
											<span class="square build false" onclick="changeSelect(4)">아파트</span>
										</div>
									</td>
								</tr>
								<!-- <tr id="select-target">
	            					<td >
	            						건물유형
	            					</td>
	            					<td>
	            						<div class="seleted-div">
	            						<span class="square sub-build false" onclick="clicksub(0,'sub-build')">단독</span>
	            						<span class="square sub-build false" onclick="clicksub(1,'sub-build')">다가구</span>
	            						<span class="square sub-build false" onclick="clicksub(2,'sub-build')">빌라/연립/다세대</span>
	            						<span class="square sub-build false" onclick="clicksub(3,'sub-build')">상가주택</span>
	            						</div>
	            					</td>
	            				</tr> -->
							</table>
						</div>
						<!-- 매물종류 끝 -->
						<!-- 위치정보 시작 -->
						<div class="col-md-12 mt-12  add-sub-page">
							<table>
								<tr>
									<td colspan="3" class="enrollHeader">위치정보</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">주소</td>
									<td class="enrollBody">
										<div class="map_wrap">
											<div id="map" style="width: 400px; height: 300px;"></div>
										</div>
										<div class="jusoAPI">
											<input type="text" class="address-search" id="roadAddrPart1"
												onchange="mapSearchAddress()" name="mainaddr"
												placeholder="ex)강남구 역삼동"><span
												id="postcodify_search_button" onclick="goPopup();"
												class="jusoSearch">주소검색</span><br>
											<input type="text" class="address-search" id="addrDetail"
												name="subaddr" placeholder="ex)강남구 역삼동"> <input
												type="text" id='zipNo' name="zipNo" name="zipNo"
												style="margin-bottom: 10px; margin-left: 5px;" disabled>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<!-- 위치정보 끝 -->
						<!-- 거래정보 시작 -->
						<div class="col-md-12 mt-12 add-sub-page">
							<table>
								<tr>
									<td colspan="2" class="enrollHeader">거래정보</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">거래종류</td>
									<td class="enrollrentBody">
										<div class="seleted-div col-md-12 dealvary">
											<span class="square charter rent false" onclick="rent(1)">전세</span>
											<span class="square rent false" id='monthly' onclick="rent(2)">월세</span> 
											<span class="square rent false" id='trading' onclick="rent(3)">매매</span> 
											<span class="square deal rent false" onclick="deal()">단기가능</span>
										</div>
										<div class="col-md-12">
											<div class="rent-input col-md-12"></div>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<!-- 거래정보 끝 -->
						<!-- 건물 기본 정보 시작 -->
						<div class="col-md-12 mt-12  add-sub-page">
							<table>
								<tr>
									<td colspan="4" class="enrollHeader">기본정보</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">건물크기</td>
									<td class="enrollrentBody">
										<div class="col-md-12 " style="margin-top: 20px; margin-bottom:20px;">
											<label class="add-page">공급면적 <input type="text"
												id="supply" onkeydown="startSuggest(1)" class="add-page">평
												<input type="text" id="supply-area" class="add-page">㎡
											</label>
										</div>
										<div class="col-md-12 " style="margin-bottom: 30px;">
											<label class="add-page">전용면적 <input type="text"
												id="exclusive" onkeydown="startSuggest(2)" class="add-page">평
												<input type="text" id="exclusive-area" class="add-page">㎡
											</label>

										</div>
									</td>
									<td class="enrollSideHeader">건물층수</td>
									<td class="enrollrentBody">
										<div class="col-md-12 ">
											<label class="add-page">건물층수</label> 
											<select class="add-page floor" id="floor">
												<option value="0">건물층수선택</option>
												<c:forEach begin="1" end="20" step="1" var="i">
													<option value="${i}">${i }층</option>
												</c:forEach>
											</select>
										</div>
										<hr>
										<div class="col-md-12 ">
											<label class="add-page">해당층수</label> 
											<select class="add-page my-floor" id="myfloor">
												<option value="0">건물층수선택</option>
												<option value="-1">반지층</option>
												<option value="99">옥탑</option>
												<c:forEach begin="1" end="20" step="1" var="i">
													<option value="${i}">${i }층</option>
												</c:forEach>
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">난방종류선택</td>
									<td class="enrollrentBody" style="padding-top: 10px; padding-bottom: 10px;"colspan="3">
										<div class="col-md-12 ">
											<select class="float-left heating" id="heating">
												<option selected="selected">난방종류 선택</option>
												<option>중앙난방</option>
												<option>개별난방</option>
												<option>지역난방</option>
											</select>
											
											
										</div>
									</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">입주 가능일</td>
									<td colspan="3" class="enrollBody">
										<div class="indayCheck">
											<span class="square move-in false"
												onclick="clicksub(0,'move-in')">즉시입주</span> <span
												class="square move-in false"
												onclick="clicksub(1,'move-in')">날짜협의 </span>
											<!-- 	<span class="square move-in  false" onclick="clicksub(2,'move-in')">날짜선택</span> -->
										</div>
									</td>
								</tr>
							</table>
						</div>
						<!-- 건물 기본 정보 끝 -->
						<!-- 건물 추가 정보 끝 -->
						<div class="col-md-12 mt-12  add-sub-page" id="addinfo">
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
											<span class="square parking false" onclick="clickpark(0,'parking')">가능</span>
											<span class="square parking false" onclick="clickpark(1,'parking')">불가능</span>
											<input type="text" id="parking" class="input-val"
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
									<td colspan="2" class="enrollSideHeader">빌트인</td>
									<td colspan="2" class="enrollrentBody">
										<div class="text-left">
											<span class="square built false"
												onclick="clicksubto(0,'built')">있음</span> <span
												class="square built false" onclick="clicksubto(1,'built')">없음</span>
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
						</div>
						<div class="col-md-12 mt-12 add-sub-page">
							<table>
								<tr>
									<td colspan="2" class="enrollHeader">상세설명</td>
								</tr>
								<tr>
									<td class="enrollSideHeader">제목</td>
									<td class="enrollrentBody" style="text-align: left;">
									<input type="text" style="width:1221px; border: 1px solid #D8D8D8;" id="title"
										placeholder="예)신논현역 도보 5분거리,혼자살기 좋은방입니다."></td>
								</tr>
								<tr>
									<td class="enrollSideHeader">상세 설명</td>
									<td class="enrollrentBody">
									<textarea style="border: 1px solid #D8D8D8;" rows="20" cols="150" id="description"
											placeholder="
	            						상세설명 작성 주의사항 
	            						
	            							- 방 정보와 관련없는 홍보성 정보는 입력하실수 없습니다
	            								(홈페이지주소,블로그,SNS,메신저ID,전화번호,이메일등)
	            							- 중계수수료를 언급한 내용은 입력할 수 없습니다.
	            								(중계수수료무료, 공짜, 반값 등)
	            							- 100자 이내로입력해주세요. 
	            							
	            							* 주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 
	            								있을 수 있습니다.
	            							*  매물등록 규정에 위반되는 금칙어는 등록이 불가능합니다.
	            						"></textarea>
									</td>
								</tr>

							</table>
						</div>
						<div class="col-md-12 mt-12 add-sub-page">
							<table>
								<tr>
									<td colspan="2" class="enrollHeader">사진등록</td>
								</tr>
								
								<tr>
									<td class="enrollSideHeader">파일 업로드</td>
									<td id="imageinputlist" class="enrollrentBody">
									<input type="file" name="mfile" value="" class="mfile">
									<input type="button" onclick="inputFilePlus()" class="fileUpload" value="이미지 추가">
									</td>
								</tr>
							</table>
						</div>
						<div class="col-md-12 mt-12 last add-sub-page" style="padding-top: 0px; margin-bottom: 15px;">
							<div class="col-md-12">
								<div class="col-md-2" style="width: 100px;"></div>
								<div class="col-md-10" style="text-align: center; max-width: 100%;">
									<input type="checkbox" id="check"> 매물 관리 규정을 확인하였으며
									입력한 정보는 실제 매물과 다름이 없습니다.
								</div>
							</div>
							<div class="col-md-12" id="result" style="text-align: center; padding-top: 15px;">
								<input type='hidden' value='${user.anum}' name='anum'> 
								<input type="hidden" value="" name="lat" id="lat"> 
								<input type="hidden" value="" name="lng" id="lng"> 
								<input type="hidden" value="" name="gu" id="gu"> 
								<input type="hidden" value="" name="admindong" id="admindong">
								<a class="button3" id="filter_apply" onclick="submit()">매물등록</a> 
								<a class="button4" id="filter_close" href="semi.Project?page=estate&code=1">취소</a>
							</div>
						</div>
					</div>
				</form>
				<div class="col-md-3">
					<%
						UserVO vo = (UserVO) session.getAttribute("user");
					if (vo.getPgubun().equals("구독")) {
					%>
					<%@ include file="../commercial/sidemenu3.jsp"%>
					<%
						} else {
					%>
					<%@ include file="../commercial/sidemenu2.jsp"%>
					<%
}
%>
				</div>

			</div>
		</div>
		<script>
			function goPopup() {
				// 주소검색을 수행할 팝업 페이지를 호출합니다.
				// 호출된 페이지(jusopopup.jsp)에서 실제
				// 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
				var pop = window.open("juso", "pop",
						"width=570,height=420, scrollbars=yes, resizable=yes");
				// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제
				// 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게
				// 됩니다.
				// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes,
				// resizable=yes");
			}
			function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
					roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
					bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm,
					liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm,
					lnbrSlno, emdNo) {
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				// document.form.roadFullAddr.value = roadFullAddr;
				$("#admindong").val(jibunAddr.split(" ")[1])
				console.log(roadAddrPart1)
				$('#roadAddrPart1').val(roadAddrPart1);
				$("#addrDetail").val(roadAddrPart2 + addrDetail);
				$("#gu").val(roadAddrPart1.split(" ")[1]);
				$("#zipNo").val(zipNo);
				mapSearchAddress();
			}

			var classEach = [ "build", "sub-build", "rent", "move-in"
					];
			var estateList=["administrative", "parking", "pets", "elevator", "balcony",
				"built", "option", "chartered", "structure" ]
			var storeList=[
				"administrative","parking","elevator"
				
			]
			var newForm = $("#estater");

			function submit() {

				var startTime = new Date().getTime();

				if ($('#check').prop('checked')) {
					addestate();

					newForm.attr('method', 'post');
					newForm.attr("action", "insertestate");
					if (confirm("등록하시겠습니까?")) {
						newForm.submit();
					} else {
						location = 'addestate';
					}
				} else {
					alert("CheckBox를 체크해주세요.");
					$('#check').focus();
				}
				var endTime = new Date().getTime();
		
			}

			function addestate() {
				var input = '';
				for (var e = 0; e < classEach.length; e++) {
					var name = '.' + classEach[e];
					var num = $(name + '.true').length;
					var inum = 1;
					$(name).each(function(i) {
						if ($(this).hasClass("true")) {
							var text = $(this).text();
							addData(classEach[e], text);
						}
					})
				}	
				if(build==='상가'){
					for (var e = 0; e < storeList.length; e++) {
						var name = '.' + storeList[e];
						var num = $(name + '.true').length;
						var inum = 1;
						$(name).each(function(i) {
							if ($(this).hasClass("true")) {
								var text = $(this).text();
								addStore(storeList[e], text);
							}
						})
					}		
					input += "<input type='hidden' value='"+$('#toilet').val()+"' name='toilet'>";
					input += "<input type='hidden' value='"+$('#independent').val()+"' name='independent'>";
					input += "<input type='hidden' value='"+$('#cooling').val()+"' name='cooling'>";			
					input += "<input type='hidden' value='"+$('#usearea').val()+"' name='usearea'>";
					input += "<input type='hidden' value='"+$('#mpurpo').val()+"' name='mpurpo'>";
				}else{
					for (var e = 0; e < estateList.length; e++) {
						var name = '.' + estateList[e];
						var num = $(name + '.true').length;
						var inum = 1;
						$(name).each(function(i) {
							if ($(this).hasClass("true")) {
								var text = $(this).text();
								addEstate(estateList[e], text);
							}
						})
					}
				}
				input += "<input type='hidden' value='"
						+ $('#exclusive-area').val() + "' name='exclusive'>";
				input += "<input type='hidden' value='"
						+ $('#supply-area').val() + "' name='supply'>";
				var floor = $('#myfloor').val() + "/" + $('#floor').val();
				input += "<input type='hidden' value='"+floor+"' name='floor'>";
				input += "<input type='hidden' value='" + $('#heating').val()
						+ "' name='heating'>";
				input += "<input type='hidden' value='" + $('#title').val()
						+ "' name='title'>";
				input += "<input type='hidden' value='"
						+ $('#roadAddrPart1').val() + "' name='mainaddr'>";
				input += "<input type='hidden' value='"
						+ $('#addrDetail').val() + "' name='subaddr'>";
				input += "<input type='hidden' value='" + $('#zipNo').val()
						+ "' name='zipNo'>";
				input += "<textarea hidden='hidden'rows='20' cols='150' maxlength='100'  name='description'>"
						+ $('#description').val() + "</textarea>";
				newForm.append(input);
			}
			var build="";

		
			
			function addData(className, text) {

				var values = '';
				var input = '';
				if (className === "build") {
					if (text === '원룸') {
						values = 'C01';
					} else if (text === '투룸ㆍ쓰리룸') {
						values = 'C03';
					} else if (text === '상가/사무실') {
						values = 'D02';
						build="상가";
					} else if (text === '오피스텔(도시형)') {
						values = 'A02';
					} else if (text === '아파트') {
						values = 'A01';
					}

					input += "<input type='hidden' value='"+values+"' name='build'>";
					
				}  else if (className === "rent") {

					var dans = '불가능';

					if (text === '단기가능') {
						dans = '가능';
					}

					var num = text.toString().indexOf(',');
					if (num > -1) {
						text = text.toString().substring(0, num);

					}
					 input+="<input type='hidden' value='"+dans+"' name='dan'>"; 
					if (text === '월세') {
						var rpay = '';
						$('.deposit')
								.each(
										function(i) {

											var thisv = $('.monthly');

											values = $(this).val() + '/'
													+ thisv[i].value;
											

											input += "<input type='hidden' value='B2' name='rentv'>";

											input += "<input type='hidden' value='"+values+"' name='rpay'>";
									
										});

					}
					if (text === '전세') {
						values = $('#charter').val();
						input += "<input type='hidden' value='B1' name='rentv'>";
						//	input+="<input type='hidden' value='"+dans+"' name='dan'>"; 
						input += "<input type='hidden' value='"+values+"' name='rpay'>";
						
					}
					if (text === '매매') {
						values = $('#tradingv').val();
						alert(text);
						input += "<input type='hidden' value='A1' name='rentv'>";
						//	input+="<input type='hidden' value='"+dans+"' name='dan'>";
						input += "<input type='hidden' value='"+values+"' name='rpay'>";
						
					}

				} else if (className === "move-in") {
					values = text;

					input += "<input type='hidden' value='"+values+"' name='move'>";
					console.log(input);
				}
				
				
				
				newForm.append(input);
				

				
			}
			
			function addStore(className, text){
				var values = '';
				var input = '';
				if (className === "administrative") {

					values = $('#adminpay').val();
					;

					input += "<input type='hidden' value='"+values+"' name='pay'>";

					values = text;

					input += "<input type='hidden' value='"+values+"' name='administrat'>";
				}else if (className === "parking") {
					var bool = '불가능';
					if (text === '가능') {
						bool = '가능';
					}

					input += "<input type='hidden' value='"+bool+"' name='parkings'>";
					input += "<input type='hidden' value='"
							+ $('#parking').val() + "' name='parking'>";
				}   else if (className === "elevator") {
					var bool = '0';

					if (text === '있음') {
						bool = '1';
					}

					input += "<input type='hidden' value='"+bool+"' name='elevator'>";
				}
				newForm.append(input);
			}
			function addEstate(className, text){
				var values = '';
				var input = '';
				if (className === "administrative") {

					values = $('#adminpay').val();
					;

					input += "<input type='hidden' value='"+values+"' name='pay'>";

					values = text;

					input += "<input type='hidden' value='"+values+"' name='administrat'>";
				} else if (className === "parking") {
					var bool = '0';
					if (text === '가능') {
						bool = '1';
					}

				
					input += "<input type='hidden' value='"
							+ $('#parking').val() + "' name='fparking'>";
				} else if (className === "pets") {
					var bool = '불가능';
					if (text === '가능') {
						bool = '가능';
					}

					name = 'pets';

					input += "<input type='hidden' value='"+bool+"' name='pets'>";
				} else if (className === "elevator") {
					var bool = '0';

					if (text === '있음') {
						bool = '1';
					}

					input += "<input type='hidden' value='"+bool+"' name='elevator'>";
				} else if (className === "balcony") {
					var bool = '없음';

					if (text === '있음') {
						bool = '있음';
					
					}

					input += "<input type='hidden' value='"+bool+"' name='balcony'>";

				} else if (className === "built") {
					var bool = '없음';

					if (text === '있음') {
						bool = '있음';
					}

					input += "<input type='hidden' value='"+bool+"' name='built'>";

				} else if (className === "option") {

					input += "<input type='hidden' value='"+text+"' name='option'>";

				} else if (className === "chartered") {
					var bool = '불가능';
					if (text === '가능') {
						bool = '가능';
					}

					input += "<input type='hidden' value='"+bool+"' name='chartered'>";

				} else if (className === "structure") {

					input += "<input type='hidden' value='"+text+"' name='structure'>";
				}
				newForm.append(input);
			}
			/* 단기가능 버튼 함수 시작 */
			function deal() {
				if ($('.deal').hasClass('false')) {
					$('.deal').css('color', 'white').css('background-color','#FD7400');
					$(this).removeClass('false').addClass('true');

				} else if ($('.deal').hasClass('true')) {
					$('.deal').css('color', 'black').css('background-color','white');
					$(this).removeClass('true').addClass('false');

				}

			}
			/* 단기가능 버튼 함수 끝 */
			var remeber = '';
			function commentlist(text, num) {
				if (num == 1) {
					remeber = text;
				}

				$.ajax({
					url : 'commentlist',
					type : 'post',
					data : {
						remeber : remeber,
						text : text
					},
					success : function(data) {

						$('#recentCnt3').html(data);
					}

				});

			}

			function clicksub(num, className) {
				var serchv = '';
				$(('.' + className)).each(
						function(i) {

							if (i === num && $(this).hasClass('false')) {

								$(this).css('color', 'white').css(
										'background-color', '#FD7400');

								$(this).removeClass("false").addClass("true");

								serchv = $(this).text();
							} else if (i === num && $(this).hasClass('true')) {
								$(this).css('color', 'black').css(
										'background-color', 'white');

								$(this).removeClass("true").addClass("false");
							}
						})

			}

			function clicksubto(num, className) {
				$(('.' + className)).each(
						function(i) {

							if (i === num && $(this).hasClass('false')) {
								$(this).css('color', 'white').css(
										'background-color', '#FD7400');
								$(this).removeClass("false").addClass("true");

							} else if (i === num && $(this).hasClass('true')) {

							} else {
								$(this).css('color', 'black').css('background-color', 'white');
								$(this).removeClass("true").addClass("false");

							}
						})
			}

			function clickpark(num,text) {
				$(('.'+text)).each(
						function(i) {
							if (i === num) {
								$(this).css('color', 'white').css(
										'background-color', '#FD7400');
								$(this).removeClass("false").addClass("true");
								if (num === 0) {
									$('#'+text).attr("disabled", false);
								} else {

									$('#'+text).attr("disabled", true);
								}
							} else {
								$(this).css('color', 'black').css(
										'background-color', 'white');
								$(this).removeClass("true").addClass("false");
							}

						})

			}
			
			//------------------------------------------------------------------------------- 매물정보 시작
			function changeSelect(num) {
				var html = '';
				
				if (num === 3) {
					name = ""
					html="estate"
				} else if (num === 4) {
					html="estate"
				} else if (num === 2) {
					html = "addinfo";
					
				} else {
					html="estate"
				}
				
				$.ajax({
					url :"infoHtml?kind="+html,
					type:'get',
					success: function(d){
						$("#addinfo").html(d);
					}
				});
				/* $('#select-target').html(html); */
			
				var searchValue = '';
				$('.build').each(
						function(i) {
							if (i === num && $(this).hasClass('false')) {
								/* $(this).css('color', 'white').css('background-color', '#F27405'); */
								$(this).removeClass("false").addClass("true");
								searchValue = $(this).text();
							} else if (i === num && $(this).hasClass('true')) {

							} else {
								/* $(this).css('color', 'black').css('background-color', 'white'); */
								$(this).removeClass("true").addClass("false");
							}
						});
				$('.rent-input').html('');
				lnum = 0;
				tnum = 0;
				nnum = 0;
				mnum = 0;
				$('.charter').css("background-color", "white");
				commentlist(searchValue, 1);
			}
			//------------------------------------------------------------------------------- 매물정보 끝
			//------------------------------------------------------------------------------- 거래정보 시작
			var lnum = 1;
			var nnum = 0;
			var tnum = 0;
			var mnum = 0;
			function rent(num) {
				var html = '';
				var close = '';
				var text = '';
				$('.rent').each(function(i) {
					if (i === (num - 1)) {
						$(this).removeClass("false").addClass("true");
					}
				})
				if (num === 1) {
					if (nnum === 0) {

						html = "<label class='lnum-"+lnum+"'>"
								+ "<span>전세</span>"
								+ "<input type='text' class='rpay' id='charter' required  placeholder='전세' >"
								+ "<span>만원</span>" + "<p class='dealdescription'>(예 전세 2000만원)</p></label>";
						nnum++;
						text = '전세';
					} else {
						return;

					}

				} else if (num === 3) {
					if (tnum === 0) {

						html = "<label class='lnum-"+lnum+"'>"
								+ "<span>매매</span>"
								+ "<input type='text' class='rpay'id='tradingv'  required placeholder='매매가' >"
								+ "<span>만원</span>" + "</label>";
						tnum++;
						text = '매매';
					} else {
						return;

					}
				} else if (num === 2) {

					html = "<label class='lnum-"+lnum+"'>"
							+ "<span>월세</span>"
							+ "<input type='text' class='rpay deposit' required placeholder='보증금' > / <input type='text'  class='rpay monthly' required placeholder='월세' >"
							+ "<span>만원</span>" + "<p class='dealdescription'>(예 월세 1000만원/50만원)</p></label>";
					mnum++;
					text = '월세';
				}
				html += "<label class='close-x lnum-" + lnum + " label-" + lnum
						+ "' onclick='closen(" + lnum + ")' > x </label><br>";
				$('.rent-input').append(html);
				lnum++;

				commentlist(text, 2);

			}
			//------------------------------------------------------------------------------- 거래정보 끝
			function closen(num) {
				var name = ".lnum-" + num;
				if (nnum > 0) {
					nnum--;
					$('.charter').css("background-color", "white");

				}
				if (nnum === 0) {
					$('.charter').removeClass("true").addClass("false");
				}
				if (tnum > 0) {
					tnum--;

				}
				if (tnum === 0) {
					$('#trading').removeClass("true").addClass("false");
				}
				if (mnum > 0) {
					mnum--;

				} else if (mnum === 0) {
					$('#monthly').removeClass("true").addClass("false");
				}
				$('.label-' + num + ' + br').remove();
				$(name).remove(name);

			}

			var lastKey = ''; //최종키
			var check = false; //검색체크상태
			var loopKey = false; // 루프상태
			var vD = null;

			function startSuggest(num) {
				if (num === 1) {
					check = false;
				} else if (num === 2) {
					check = false;
				}
				vD = document.getElementById("view");
				if (check === false) { // 최초 검색일 경우 0.5대기후 sendKeyword()호출
					setTimeout("sendKeyword(" + num + ");", 500);
					loopKey = true;
				}
				check = true;
			}

			function sendKeyword(num) {
				var supply = $('#supply').val();
				var exclusive = $('#exclusive').val();
				if(supply ==='' && exclusive ==='' ){
					$('#supply-area').val("");
					$("#exclusive-area").val("");
					return;
				}else if(supply ===''){
					alert("공급면적이 비어있습니다. 공급면적을 먼저 입력해주세요.");
					$('#exclusive').val("");
					$("#exclusive-area").val("");
					$('#supply-area').val("");
					return;
				}
				else if (exclusive > supply || exclusive === supply) {
					alert("전용면적은 공급면적보다 크거나 같을 수 없습니다.");
					$('#exclusive').val("");
					$("#exclusive-area").val("");
				}

				if (loopKey === false) {
					return
				}
				var key;
				if (num === 1) {
					key = $('#supply').val();
				} else if (num === 2) {
					key = $('#exclusive').val();
				}

				if (key === '' || key === ' ') { //값이 없거나 공백인경우
					lastKey = '';

				} else if (key !== lastKey) { // 검색값이 다를경우 서버로 전송한다.
					lastKey = key;

					key = parseInt(key) * 3.305785;
					if (num === 1) {
						$('#supply-area').val(key);
					} else if (num === 2) {
						$('#exclusive-area').val(key);
					}

				}
				setTimeout("sendKeyword(" + num + ");", 500);
			}

			function select(i) { // 리스트 중에서 선택한 단어를 폼필드에 출력및 나머지 초기화
				f.word.value = jsonObj[i];
				vD.style.display = 'none';
				check = false;
				loopKey = false;
			}

			function inputFilePlus() {
				$("#imageinputlist").append(
						'<br><input type="file" name="mfile" value="" class="mfile">')
			}
			var filenum = 1;
			/* function fileUpload() {

				if (filenum < 4) {
					var formData = new FormData($('#file')[0]);

					$
							.ajax({
								url : 'imgupload',
								type : 'POST',
								data : formData,
								async : false,
								success : function(data) {
									newForm
											.append("<input type='hidden' value='"+data+"' name='imgName'>");
									$("#imgList")
											.append(
													"<img src='img/"+data+"' style='width:150px; height:150px;'>");
									filenum++;
								},
								cache : false,
								contentType : false,
								processData : false
							});
				} else {
					alert("파일은 3개까지만 등록 가능합니다.");
				}

			} */
			function close_pop(flag) {
				$('#myModal').hide();
			};

			function open_pop(num) {
				$(".productdescmodal").click(function() {
					var atclno = num;

					var url = "productModal?pdnum=" + atclno;
					$.ajax({
						url : url,
						success : function(d) {
							$("#myModal").html(d);
						}
					});
					$('#myModal').show();
				});
			};

			$(function() {
				$("#floor")
						.change(
								function() {
									var floor = $(this).val();
									console.log(floor);
									html = "<option value='0'>건물층수선택</option>";
									for (i = 1; i <= floor; i++) {
										html += "<option value="+i+">" + i
												+ "층</option>";
									}
									html += "<option value=\"-1\">반지층</option><option value=\"99\">옥탑</option>";

									$("#myfloor").html(html);
								})
				var ps = new kakao.maps.services.Places();
				$("#roadAddrPart1").change(function() {
					searchPlaces();
				})
			});
		</script>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d3da01cea8b26f7180225f6a45645c2c&libraries=services,clusterer,drawing"></script>
		<script>
			// 마커를 담을 배열입니다
			var markers = [];

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
				level : 4
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();

			// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});
			var geocoder = new kakao.maps.services.Geocoder();
			// 키워드로 장소를 검색합니다
			//searchPlaces();
			function mapSearchAddress() {

				var keyword = $("#roadAddrPart1").val();
				geocoder.addressSearch(keyword, function(result, status) {

					// 정상적으로 검색이 완료됐으면 
					if (status === kakao.maps.services.Status.OK) {

						var coords = new kakao.maps.LatLng(result[0].y,
								result[0].x);

						document.getElementById("lat").value = coords.getLat()
						document.getElementById("lng").value = coords.getLng()
				
						console.log(coords.getLat() + "/" + coords.getLng())
						// 결과값으로 받은 위치를 마커로 표시합니다
						var marker = new kakao.maps.Marker({
							map : map,
							position : coords
						});

						// 인포윈도우로 장소에 대한 설명을 표시합니다
						/* var infowindow = new kakao.maps.InfoWindow({
						    ontent: '<div style="width:150px;text-align:center;padding:6px 0;"></div>'
						});
						infowindow.open(map, marker); */

						// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						map.setCenter(coords);
					}
				});
			}
			// 키워드 검색을 요청하는 함수입니다

			function searchPlaces() {

				//var keyword = document.getElementById('roadAddrPart1').value;
				var keyword = $("#roadAddrPart1").val();
				if (!keyword.replace(/^\s+|\s+$/g, '')) {
					alert('키워드를 입력해주세요!');
					return false;
				}

				// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
				ps.keywordSearch(keyword, placesSearchCB);
			}
			function placesSearchCB2(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new kakao.maps.LatLngBounds();
					for (var i = 0; i < data.length; i++) {
						displayMarker(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
					}
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}
			}
			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new kakao.maps.LatLngBounds();
					for (var i = 0; i < data.length; i++) {
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
						console.log(new kakao.maps.LatLng(data[i].y, data[i].x)
								.getLat()
								+ new kakao.maps.LatLng(data[i].y, data[i].x)
										.getLng())
					}
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
					// 정상적으로 검색이 완료됐으면
					// 검색 목록과 마커를 표출합니다
					displayPlaces(data);

					// 페이지 번호를 표출합니다
					displayPagination(pagination);
					var swLatLng = bounds.getSouthWest(); //남서쪽
					var neLatLng = bounds.getNorthEast(); // 북동쪽
				} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

					alert('검색 결과가 존재하지 않습니다.');
					return;

				} else if (status === kakao.maps.services.Status.ERROR) {

					alert('검색 결과 중 오류가 발생했습니다.');
					return;

				}

			}

			// 검색 결과 목록과 마커를 표출하는 함수입니다
			function displayPlaces(places) {

				var listEl = document.getElementById('placesList'), menuEl = document
						.getElementById('menu_wrap'), fragment = document
						.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

				// 검색 결과 목록에 추가된 항목들을 제거합니다
				removeAllChildNods(listEl);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				for (var i = 0; i < places.length; i++) {

					// 마커를 생성하고 지도에 표시합니다
					var placePosition = new kakao.maps.LatLng(places[i].y,
							places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
							i, places[i]); // 검색 결과 항목 Element를 생성합니다

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(placePosition);

					// 마커와 검색결과 항목에 mouseover 했을때
					// 해당 장소에 인포윈도우에 장소명을 표시합니다
					// mouseout 했을 때는 인포윈도우를 닫습니다
					(function(marker, title) {
						kakao.maps.event.addListener(marker, 'mouseover',
								function() {
									displayInfowindow(marker, title);
								});

						kakao.maps.event.addListener(marker, 'mouseout',
								function() {
									infowindow.close();
								});

						itemEl.onmouseover = function() {
							displayInfowindow(marker, title);
						};

						itemEl.onmouseout = function() {
							infowindow.close();
						};
					})(marker, places[i].place_name);

					fragment.appendChild(itemEl);
				}

				// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
				listEl.appendChild(fragment);
				menuEl.scrollTop = 0;

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}

			// 검색결과 항목을 Element로 반환하는 함수입니다
			function getListItem(index, places) {

				var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
						+ (index + 1)
						+ '"></span>'
						+ '<div class="info">'
						+ '   <h5>' + places.place_name + '</h5>';

				if (places.road_address_name) {
					itemStr += '    <span>' + places.road_address_name
							+ '</span>' + '   <span class="jibun gray">'
							+ places.address_name + '</span>';
				} else {
					itemStr += '    <span>' + places.address_name + '</span>';
				}

				itemStr += '  <span class="tel">' + places.phone + '</span>'
						+ '</div>';

				el.innerHTML = itemStr;
				el.className = 'item';

				return el;
			}

			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, idx, title) {
				var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
				imgOptions = {
					spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset : new kakao.maps.Point(13, 37)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new kakao.maps.MarkerImage(imageSrc,
						imageSize, imgOptions), marker = new kakao.maps.Marker(
						{
							position : position, // 마커의 위치
							image : markerImage
						});

				marker.setMap(map); // 지도 위에 마커를 표출합니다
				markers.push(marker); // 배열에 생성된 마커를 추가합니다

				return marker;
			}

			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
				markers = [];
			}

			// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
			function displayPagination(pagination) {
				var paginationEl = document.getElementById('pagination'), fragment = document
						.createDocumentFragment(), i;

				// 기존에 추가된 페이지번호를 삭제합니다
				while (paginationEl.hasChildNodes()) {
					paginationEl.removeChild(paginationEl.lastChild);
				}

				for (i = 1; i <= pagination.last; i++) {
					var el = document.createElement('a');
					el.href = "#";
					el.innerHTML = i;

					if (i === pagination.current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								pagination.gotoPage(i);
							}
						})(i);
					}

					fragment.appendChild(el);
				}
				paginationEl.appendChild(fragment);
			}

			// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
			// 인포윈도우에 장소명을 표시합니다
			function displayInfowindow(marker, title) {
				var content = '<div style="padding:5px;z-index:1;">' + title
						+ '</div>';

				infowindow.setContent(content);
				infowindow.open(map, marker);
			}

			// 검색결과 목록의 자식 Element를 제거하는 함수입니다
			function removeAllChildNods(el) {
				if (el !== null) {
					while (el.hasChildNodes()) {
						el.removeChild(el.lastChild);
					}
				}
			}
		</script>
	</div>
</section>
<%@include file="../commercial/modal.jsp"%>
<%@ include file="../include/footer.jsp"%>


