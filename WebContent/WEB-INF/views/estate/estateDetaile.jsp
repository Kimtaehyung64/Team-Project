<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<!-- <link href="resources/css/estate_one/estate_on.css" rel="stylesheet" /> -->
<!-- <link href="resources/css/estate_one/th_bootstrap.css" rel="stylesheet" /> -->
<link href="resources/css/estate_one/th_styles.css" rel="stylesheet" />
<link href="resources/css/estate_one/sideber.css" rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

.estateDetailHeader {
	border-bottom: 2px solid #F27405;
	margin-top: 30px;
}

.estatebuild {
	font-size: 15px;
	color: #585858;
}

.estaterentv {
	font-size: 30px;
}

.moneyunit {
	font-size: 15px;
	font-weight: bold;
	font-style: normal;
	color: #F25C05;
}

.estatebuild:hover {
	text-decoration: none;
	color: #585858;
}

.estaterentv:hover {
	text-decoration: none;
	color: #000000;
}

.moneyunit:hover {
	text-decoration: none;
	color: #F25C05;
}

.estateaddress {
	text-align: right;
	width: 730px;
}

.estaterltrnm {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatename {
	color: #585858;
	margin-top: 0px;
	margin-bottom: 0px;
	font-style: normal;
}

.estatetel {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatebutton1 {
	border-radius: 25px;
}

.estatebutton1:hover {
	text-decoration: none;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
}

.description {
	margin: 1em 0px;
}

#home {
	height: auto;
}

.estateimage {
	margin-top: 30px;
}

.chbutton {
	font-size: 15px;
	border: 1px solid #D8D8D8;
	border-radius: 5px;
	padding: 5px 10px 5px 10px;
}

.chbutton:hover {
	border: 1px solid #F27405;
}

.listButton {
	position: fixed;
	bottom: 20px;
	right: 20px;
	z-index: 99;
	border: 1px;
	border-style: solid;
	border-color: rgba(77, 77, 77, 0.1);
	outline: none;
	background-color: #F28705;
	color: #ffffff;
	font-size: 1em;
	font-weight: bold;
	font-family: 'Noto Sans KR', sans-serif;
	cursor: pointer;
	padding: 25px 29px;
	border-radius: 45px;
}

.listButton:hover {
	background-color: white;
	color: #F28705;
	border: 1px solid #F28705;
}
</style>
<section class="contact-section container topma" style="width: 1300px; max-width: 1300px">
	<div >
	<input type="hidden" id="fnum" value="${vo.fnum}">
	<input type="hidden" id="anum" value="${vo.anum}">
		<!-- detailHeader 시작 -->
		<table class="estateDetailHeader" style="width: 100%">
			<c:forEach items="${vo.rent}" var="r">
				<tr>
					<td style="padding-bottom: 30px;"><a class="estatebuild">
							${vo.fkind} </a><br> <a class="estaterentv"> ${vo.fsalekind }<em
							class="moneyunit"> ${vo.deposit } <c:if
									test="${vo.rent != '0' || vo.rent != null }"> / ${vo.rent }</c:if>
								(단위:만원)
						</em>
					</a></td>
					<td class="estateaddress">
						<p class="estaterltrnm">${vo.sign.dname}<br> <em
								class="estatename">${vo.sign.dtel }</em>
						</p>
					</td>
					<td class="estatetel"><a href="#"
						class="button3 estatebutton1"><i class="fas fa-comments"></i>&nbsp;대화하기</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- detailHeader 끝 -->
		<!-- detailMiddle 시작 -->
		<div id="myTabContent" class="tab-content bg-white container" style="max-width: 1300px">
			<div id="home">
				<input type="hidden" value="${vo.finvo.fsuparea}" id="supply">
				<input type="hidden" value="${vo.finvo.fexarea}" id="exclusive">
				<table class="type11">
					<tbody>
						<tr>
							<td><strong>해당층/건물층 : </strong> ${vo.finvo.tfloor } /
								${vo.finvo.bfloor }</td>
							<td><strong>공급/전용면적 : </strong> <label id="text">
									${vo.finvo.fsuparea } / ${vo.finvo.fexarea}㎡ </label> <input
								type="button" onclick="change('↔평')" class="chbutton" value="↔평">
								<input type="hidden" onclick="change('↔㎡')" class="chbutton"
								value="↔㎡"></td>
							<td><strong>관리비 : </strong> <c:choose>
									<c:when test="${vo.finvo.fadmin!= null}">${vo.finvo.fadmin  }</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
							<td><strong>관리비옵션 : </strong> <c:choose>
									<c:when test="${vo.finvo.fadop!= null}">${vo.finvo.fadop  }</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<td><strong>입주가능일 : </strong>	<c:choose>
											<c:when test="${vo.finvo.fmove!= null}">${vo.finvo.fmove}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
							<td><strong>주차 : </strong> <c:choose>
									<c:when test="${vo.finvo.fadmin!= null}">${vo.finvo.fadmin} 대</c:when>
									<c:otherwise>-</c:otherwise>
								</c:choose></td>
						
						<c:choose>
							<c:when test="${vo.fkind =='상가/사무실' }">

								
									<td><strong>난방종류 
									(난방/냉방) : </strong> <c:choose>
											<c:when test="${vo.finvo.heating!= null}">${vo.finvo.heating}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose> <c:choose>
											<c:when test="${vo.finvo.fisvo.cooling != null }"> / ${vo.finvo.fisvo.cooling }</c:when>
											<c:otherwise> / -</c:otherwise>
										</c:choose></td>

									<td><strong>용도지역
									 (주용도/용도지역) : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.mpurpo != null}">${vo.finvo.fisvo.mpurpo}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose><c:choose>
											<c:when test="${vo.finvo.fisvo.usearea != null}">${vo.finvo.fisvo.usearea}</c:when>
											<c:otherwise> / -</c:otherwise>
										</c:choose></td>
										</tr>
								<tr>
									<td><strong>독립공간 : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.independent!= null}">${vo.finvo.fisvo.independent }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>화장실 : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.toilet != null }">${vo.finvo.fisvo.toilet}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
								
									<td><strong>예상 수익률 : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.revenue != null }"> ${vo.finvo.fisvo.revenue}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>권리금 : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.fright != null }">
												${vo.finvo.fisvo.fright }
											</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
								</tr>
								<tr>										
									<td><strong>융자금 : </strong> <c:choose>
											<c:when test="${vo.finvo.fisvo.financing !=null }">${vo.finvo.fisvo.financing }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong> - </strong> -</td>
									<td><strong> - </strong> -</td>
									<td><strong> - </strong> -</td>
									</tr>
							</c:when>
							<c:otherwise>
								
									<td><strong>난방종류 : </strong> <c:choose>
											<c:when test="${vo.finvo.heating!= null}">${vo.finvo.heating}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>

									<td><strong>빌트인 : </strong> <c:choose>
											<c:when test="${vo.finvo.fievo.built != null}">${vo.finvo.fievo.built}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
										</tr>
										<tr>
									<td><strong>엘리베이터 : </strong> <c:choose>
											<c:when test="${vo.finvo.eleva!= null}">${vo.finvo.eleva }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><strong>반려동물 : </strong>
									<c:choose>
											<c:when test="${vo.finvo.fievo.animal!= null}">${vo.finvo.fievo.animal }</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
								
									<td><strong>베란다/발코니 : </strong>
									
										<c:choose>
											<c:when test="${vo.finvo.fievo.veranda!= null}">${vo.finvo.fievo.veranda}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
									<td><strong>전세자금대출 : </strong>
										
										<c:choose>
											<c:when test="${vo.finvo.fievo.fcharter!= null}">${vo.finvo.fievo.fcharter}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									
									</td>
								</tr>
								<tr>	
									<td colspan="4"><strong>옵션 : </strong> 	<c:choose>
											<c:when test="${vo.finvo.fievo.foption!= null}">${vo.finvo.fievo.foption}</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
									</td>
							
								</tr>
							</c:otherwise>
						</c:choose>


					</tbody>
				</table>
				<div class="container topma" style="width: 100%" >
					<table class="type12">
						<thead>
							<tr>
								<th scope="col"><pre
										style="width: 1050px; overflow: hidden;">${vo.subject}</pre></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><pre class="description">${vo.finvo.fcontent }</pre></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 이미지를 순서대로 보여주는 부분 시작 -->
			<div class="estateimage" style="display: flex; margin-left:80px;margin-bottom:50px; width: 100%">
				<c:forEach items="${vo.fimg}" var="e">
					<div style="cursor: pointer;">
						<img class="th_property_subimg" src="img/${e.fname}.${e.ftype}"
							onerror="this.src='img/noimg.jpg'"></img>
					</div>
				</c:forEach>
			</div>
			<!-- 이미지를 순서대로 보여주는 부분 끝 -->
			<%-- <c:choose>
				<c:when test="${vo.fkind !='상가/사무실' }">
						<div class="bg-white container" style="display: block; width: 100%">
								<table style="display: block; width: 100% ; border: 1px solid black;">
									<tr>
										<th>월세</th>
										<th>전세</th>
									</tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${vo.finvo.fievo.monthly !=null }">
													${vo.finvo.fievo.monthly }
												</c:when>
												<c:otherwise>-</c:otherwise>
											</c:choose>
										
										</td>
										<td>
											<c:choose>
												<c:when test="${vo.finvo.fievo.charter!=null }">
												${vo.finvo.fievo.charter }
												</c:when>
												<c:otherwise>-</c:otherwise>
											</c:choose>
										
										</td>
									
									</tr>
								</table>
						</div>		
				</c:when>
			</c:choose> --%>
		
		</div>
	</div>
	<div>
		<button type="button" class="listButton"
			onclick="location.href='estateMain'">
			<i class="fas fa-bars"></i>&nbsp;목록으로
		</button>
		
		
	</div>
	<c:choose>
		<c:when test="${vo.anum == user.anum}">
			<div>
		<button type="button" class="listButton"
			onclick="deleteDetail()">
			<i class="fas fa-bars"></i>&nbsp;삭제
		</button>
	</div>
	<div>
		<button type="button" class="listButton"
			onclick="updateDetail()">
			<i class="fas fa-bars"></i>&nbsp;수정
		</button>
	</div>
		</c:when>
	</c:choose>
	<!-- <div class="th_card bg-white property_border_st">
		<div class="th_card-body">
			<table>
				<tr>
					<td><input type="button" value="뒤로가기"></td>
				</tr>
			</table>
		</div>
	</div> -->
</section>
<!-- detailMiddle 끝 -->

<!-- <div class="tab-pane fade th_page_space container" id="profile">

				<div id="p_list">
					<p>
						<a class="th_a" href="#a">가격 정보 </a>
					</p>
					<p>
						<a class="th_a" href="#b">옵션 </a>
					</p>
					<p>
						<a class="th_a" href="#c">위치 및 주변시설</a>
					</p>
					<p>
						<a class="th_a" href="#d">다방면 스코어</a>
					</p>
					<p>
						<a class="th_a" href="#e">이 공인중개사 다른방 </a>
					</p>
				</div>

				<div id="a" class="th_b">
					<p class="container">가격 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="b" class="th_b">
					<p class="container">옵션 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="c" class="th_b">
					<p class="container">위치 및 주변시설 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="d" class="th_b">
					<p class="container">다방면 스코어 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="e" class="th_b">
					<p class="container">이 공인중개사 다른방 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>




			</div> -->
<!-- 
			<div class="tab-pane fade th_page_space" id="quote"></div>
			<div class="tab-pane fade th_page_space" id="dropdown2">
				<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy
					art party before they sold out master cleanse gluten-free squid
					scenester freegan cosby sweater. Fanny pack portland seitan DIY,
					art party locavore wolf cliche high life echo park Austin. Cred
					vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
					farm-to-table VHS viral locavore cosby sweater.</p>
			</div> -->


<!-- <div class="topma bg-white">
						<ul class="nav nav-tabs ">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">매물 정보 </a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">상세 설명</a></li>
					<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">그 외 만들고 싶은 탭 추가 하기</a></li>

			</ul>

		</div> -->

<script>
	function change(text) {
		var supply;
		var exclusive;
		$('.chbutton').each(
				function(i) {
					if ($(this).val() === text) {
						if (text === '↔평') {
							supply = $('#supply').val() / 3.305785;
							exclusive = $('#exclusive').val() / 3.305785;
							supply = Math.floor(supply);
							exclusive = Math.floor(exclusive);
						} else {
							supply = $('#supply').val();
							exclusive = $('#exclusive').val();
						}

					}
					if (text === $(this).val()) {
						$(this).attr("type", "hidden");
						$('#text').html(
								supply + '/' + exclusive + ' '
										+ text.substring(2, 1));
					} else {
						$(this).attr("type", "button");
					}
				})
	}
	var fanum= ${"#anum"}.val();
	var fnum = ${"#fnum"}.val();
	function deleteDetail(){
		var anum = "${user.anum}";
		
		if(anum == fanum){
			$.ajax({
				url:"fsaleDeleteCheck?anum="+anum+"&fnum="+fnum,
				type:"get",
				success: function(data){
					
					if(data ===1){
						if(text==='분석'){
							location.href = 'commercialMain';
						}else if(text==='실거래가'){
							location.href = 'realprice';
						}
						else if(text==='뉴스'){
							location.href = 'newsList';
						}
						
					}else{
						alert('구독이 필요한 서비스입니다. 구독 페이지로 이동합니다.');
						var anum = "${user.anum}";
						location.href = 'payment?anum='+anum;
					}
				}
				
				
			});
		}
		
	}
	
	function updateDetail(){
		var anum = "${user.anum}";
		
		if(anum == fanum){
			$.ajax({
				url:"fsaleUpdateCheck?anum="+anum+"&fnum="+fnum
				type:"get",
				success: function(data){
					alert(data)
					if(data ===1){
						if(text==='분석'){
							location.href = 'commercialMain';
						}else if(text==='실거래가'){
							location.href = 'realprice';
						}
						else if(text==='뉴스'){
							location.href = 'newsList';
						}
						
					}else{
						alert('구독이 필요한 서비스입니다. 구독 페이지로 이동합니다.');
						var anum = "${user.anum}";
						location.href = 'payment?anum='+anum;
					}
				}
				
				
			});
		}
	}
</script>
<%@ include file="../include/footer.jsp"%>
