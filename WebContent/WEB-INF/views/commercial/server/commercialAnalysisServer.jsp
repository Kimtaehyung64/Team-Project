<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.css">
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js"></script>
<div class="container">
	<div class="commercialSection">
		<div id="myTabContent" class="tab-content">
		<input type='hidden' id='guName' value='${settinginfo.guName}'>
		<h2>분석 설정 정보</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">기준지역</th>
						<th scope="col">기준상권</th>
						<th scope="col">분석업종</th>
						<th scope="col">분석시점</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td>${settinginfo.guName} ${settinginfo.dongName}</td>
							<td id="location">${settinginfo.largeName}</td>
							<td id="cate">${settinginfo.cate}</td>
							<td id="time">20년8월16일</td>
						</tr>
				</tbody>
			</table>
			<h2>상권 주요 정보</h2>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">업소수</th>
						<th scope="col">선택업종 총 매출</th>
						<th scope="col">인구(상주인구 / 직장인구 / 유동인구)</th>
						<th scope="col">20년 3분기 예상 매출</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td id="shopN">${searchinfo.shopN}</td>
							<td>${searchinfo.total_selling} 원</td>
							<td>${popinfo.alpop} 명 / ${popinfo.busipop} 명/ ${popinfo.fpop} 명</td>
							<td id="predictValue"></td>
						</tr>
				</tbody>
			</table>
			<h2>평가 종합</h2>
			<h5>평가 등급</h5>
			<div class="grade-report cd-12" style="text-align:center;margin-bottom:30px;">
                <img src="resources/images/commercial/grade.png">
                <br>
                <span class="gauge-report-needle" ><img id="needle" src="resources/images/commercial/gauge-needle.png"></span>
            </div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">상권평가지수 총점</th>
						<th scope="col">성장성</th>
						<th scope="col">안정성</th>
						<th scope="col">영업력</th>
						<th scope="col">구매력</th>
						<th scope="col">집객력</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td id="total_score">21</td>
							<td id="growthAbility">19</td>
							<td id="stability">20</td>
							<td id="saleAbility">20</td>
							<td id="consumeAbility">10</td>
							<td id="popAbility">10</td>
						</tr>
				</tbody>
			</table>
			<div class="helpwrap" style="display:block;background-color: #f5f6f1;padding: 20px 17px;margin: 0;">
        <div class="help">
            <em>도움말</em>
            <ul>
                <li>
                    <strong>상권평가등급</strong> : 상권 내 음식, 소매, 서비스업의 전반적인 업종경기와 상권의 인구 수, 교통시설, 집객시설 등을 종합하여 산출한 등급으로서, 점수가 1등급에 가까울수록 상권이 활성화되어 있음을 의미(1~5등급)
                    <p class="clearfix"></p>
                    <h6>상권평가등급표</h6>
                    <table class="table table-bordered">
                    <colgroup>
                        <col style="width:25%">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:15%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>기준</th>
                            <th><strong class="largenum"><span class="grade1">■</span>1등급</strong></th>
                            <th><strong class="largenum"><span class="grade2">■</span>2등급</strong></th>
                            <th><strong class="largenum"><span class="grade3">■</span>3등급</strong></th>
                            <th><strong class="largenum"><span class="grade4">■</span>4등급</strong></th>
                            <th><strong class="largenum"><span class="grade5">■</span>5등급</strong></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="bgpoint3">
                            <th>상권평가지수</th>
                            <td>70점 이상</td>
                            <td>57.5~70</td>
                            <td>45~57.5</td>
                            <td>32.5~45</td>
                            <td>32.5 미만</td>
                        </tr>
                    </tbody>
                    </table>
                    <p class="clearfix"></p>
                </li>
            </ul>
        </div>
    </div>
    <table class="table table-bordered">
        <colgroup>
            <col style="width:7%">
            <col style="width:7%">
            <col style="width:35%">
            <col style="width:12%">
            <col style="width:7%">
            <col>
        </colgroup>
        <tbody>
            <tr>
                <th colspan="2">구분</th>
                <th colspan="4">내용</th>
            </tr>
            <tr>
                <th rowspan="4"><strong class="largenum">성장성</strong><br><small class="nmal">(20점)</small></th>
                <th rowspan="4"><strong class="largenum blue" id="growthPower">11.8</strong>점</th>
                <td rowspan="4"><div id="chart_growth_holder" style="width:445px; height:291px;" class="img-responsive"></div></td>
                <th>매출증감률<br><small class="nmal">(10점)</small></th>
                <td><strong class="largenum" id="paymentUpDown">4.8</strong>점</td>
                <td class="text-left">
                    - 작년 동분기대비 전체매출규모 증감률 <small class="nmal">(5점)</small><br>
                    - 작년 동분기대비 가게당매출규모 증감률 <small class="nmal">(5점)</small>
                </td>
                </tr><tr>
                    <th>상권 매출비중<br><small class="nmal">(5점)</small></th>
                    <td><strong class="largenum" id="paymentRatio">2.0</strong>점</td>
                    <td class="text-left">작년 동월대비 전국 대비 선택지역 매출비중 증감률</td>
                </tr>
                <tr>
                    <th>예상성장률<br><small class="nmal">(5점)</small></th>
                    <td><strong class="largenum" id="expectGrowthRatio">5.0</strong>점</td>
                    <td class="text-left">분기별 매출증감 추이를 이용하여 향후 다음 분기의 매출을 예측한 지표<small>10~5% 5점,5~0% 3점,0%~ 1점 </small></td>
                </tr>
                <tr>
                    <td colspan="3" class="text-left">     
                    	성장성 지수 산출항목 중 <strong id="growthResult">예상성장률</strong>의 비중이 상대적으로 높습니다.
                    </td>
                </tr>
            
            <tr>
                <th rowspan="4"><strong class="largenum">안정성</strong><br><small class="nmal">(20점)</small></th>
                <th rowspan="4"><strong class="largenum blue" id="stabilityPower">7.5</strong>점</th>
                <td rowspan="4"><div id="chart_stability_holder" style="width:445px; height:291px;" class="img-responsive"></div></td>
                <th>변동성<br><small class="nmal">(10점)</small></th>
                <td><strong class="largenum" id="volatility">0.0</strong>점</td>
                <td class="text-left">
                    - 최근월 포함 3개월 월별 점포수변동률 평균&nbsp;<small class="nmal">(5점)</small><br>
                    - 최근월 포함 3개월 월별 매출변동률 평균&nbsp;<small class="nmal">(5점)</small>
                </td>
            </tr>
            <tr>
                <th>운영연수<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="averageOperationYear">2.5</strong>점</td>
                <td class="text-left">해당 구  점포 평균 운영연수</td>
            </tr>
            <tr>
                <th>휴/폐업률<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="closeRatio">5.0</strong>점</td>
                <td class="text-left" id="closeRatio">최근 3개월 휴/폐업 점포 비율</td>
            </tr>
            <tr>
                <td colspan="3" class="text-left">   
                   	안정성 지수 산출항목 중 <strong id="stabilityResult">휴/폐업률</strong>의 비중이 상대적으로 높습니다.
                </td>
            </tr>

            <tr>
                <th rowspan="4"><strong class="largenum">영업력</strong><br><small class="nmal">(20점)</small></th>
                <th rowspan="4"><strong class="largenum blue" id="salePower">11.9</strong>점</th>
                <td rowspan="4"><div id="chart_salesForce_holder" style="width:445px; height:291px;" class="img-responsive"></div></td>
                <th>공급대비 수요<br><small class="nmal">(10점)</small></th>
                <td><strong class="largenum" id="consumeBySupply">6.9</strong>점</td>
                <td class="text-left">- 수요(해당지역 매출/광역시도 매출)<br>- 공급(해당지역 업소수/광역시도 업소수)</td>
            </tr>
            <tr>
                <th>점포별 매출편차<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="storelet">5.0</strong>점</td>
                <td class="text-left">개별 점포별 매출편차</td>
            </tr>
            <tr>
                <th>기간별 매출편차<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="timelet">2.5</strong>점</td>
                <td class="text-left">
                    - 월별 매출편차 <small class="nmal">(2점)</small><br>
                    - 요일별 매출편차 <small class="nmal">(1.5점)</small><br>
                    - 시간대별 매출편차 <small class="nmal">(1.5점)</small></td>
            </tr>
            <tr>
                <td colspan="3" class="text-left">   
					영업력 지수 산출항목 중 <strong id="saleResult">공급대비 수요</strong>의 비중이 상대적으로 높습니다.
                </td>
            </tr>
            <tr>
                <th rowspan="4"><strong class="largenum">구매력</strong><br><small class="nmal">(20점)</small></th>
                <th rowspan="4"><strong class="largenum blue" id="consumerPower">8.6</strong>점</th>
                <td rowspan="4"><div id="chart_buying_holder" style="width:445px; height:291px;" class="img-responsive"></div></td>
                <th>상권 매출규모<br><small class="nmal">(7.5점)</small></th>
                <td><strong class="largenum" id="salesByarea">3.5</strong>점</td>
                <td class="text-left">선택지역 면적당 매출액</td>
            </tr>
            <tr>
                <th>건당 결제금액<br><small class="nmal">(7.5점)</small></th>
                <td><strong class="largenum" id="paymentPerCase">0.1</strong>점</td>
                <td class="text-left">선택지역의 평균 건당 결제금액</td>
            </tr>
            <tr>
                <th>소비 수준<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="consume">5.0</strong>점</td>
                <td class="text-left">주거인구, 직장인구 월평균소비규모</td>
            </tr>
            <tr>
                <td colspan="3" class="text-left">
					구매력 지수 산출항목 중 <strong id="consumeresult"></strong>의 비중이 상대적으로 높습니다.
                </td>
            </tr>
            <tr>
                <th rowspan="4"><strong class="largenum">집객력</strong><br><small class="nmal">(20점)</small></th>
                <th rowspan="4"><strong class="largenum blue" id="popPower">11.1</strong>점</th>
                <td rowspan="4"><div id="popChartHolder" style="width:445px; height:291px;" class="img-responsive"></div></td>
                <th>유동인구<br><small class="nmal">(10점)</small></th>
                <td><strong class="largenum" id="fpopscore">${popResult.fpop}</strong>점</td>
                <td class="text-left">선택지역 내 면적당 유동인구 수</td>
            </tr>
            <tr>
                <th>배후 주거인구<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="alpopscore">${popResult.alpop}</strong>점</td>
                <td class="text-left">선택지역 내 면적당 주거인구 수</td>
            </tr>
            <tr>
                <th>배후 직장인구<br><small class="nmal">(5점)</small></th>
                <td><strong class="largenum" id="busipopscore">${popResult.busipop}</strong>점</td>
                <td class="text-left">선택지역 내 면적당 직장인구 수</td>
            </tr>
            <tr>
                <td colspan="3" class="text-left">   
					집객력 지수 산출항목 중 <strong id="popresult"></strong>의 비중이 상대적으로 높습니다.
                </td>
            </tr>
            <tr>
                <th>합계</th>
                <th><strong class="largenum blue" id="result">50.9</strong>점</th>
                <td colspan="4"></td>
            </tr>
        </tbody>
    </table>
    <div class="card-body">
    	<form class="form-inline commercialContainer">
        <div class="col">분석<br><strong>결과</strong></div>
        <div id="resultText">
            <div id="totalChange"></div>
        </div><!-- /.help -->
        </form>
    </div>
		</div>
	</div>
</div>
<script>
//분석시간 넣기
let today = new Date(); 
$("#time").text(today.toLocaleDateString());
var predictGrowthScore = 0
$.ajax({
	url:"http://192.168.0.9:8000/predictCommercialSale?guName="+$("#guName").val()+"&commercial_name="+$("#location").text()+"&service_name="+$("#cate").text(),			
	success:function(d){
		d = d.replace(/&#x27;/gi, "\"").replace(/&#x27;/gi,"\"")
		d = JSON.parse(d)[0]
		let predictValue = Number(d['prdictValue']) / Number($("#shopN").text())
		let saleChange = d['saleChange']
		let commercialRatio = d['commercialRatio']
		predictGrowthScore = d['predictGrowthScore']
		let operationAverage = d['operationAverage']
		let closeRatio = d['closeRatio']
		let consumeIndex = d['consumeIndex']
		$("#predictValue").text(Math.floor(predictValue, -3) + "원")
		$("#paymentUpDown").text(saleChange.toFixed(2))
		$("#paymentRatio").text(commercialRatio.toFixed(2))
		$("#averageOperationYear").text(operationAverage.toFixed(2))
		$("#closeRatio").text(closeRatio.toFixed(2))
		$("#expectGrowthRatio").text(predictGrowthScore.toFixed(2))
		$("#consume").text(consumeIndex.toFixed(2))
	},error:function(e){
		console.log(e)
	},complete:function(){
		let fpop = $("#fpopscore").text()
		let alpop = $("#alpopscore").text()
		let busipop = $("#busipopscore").text()
		let popScore = Number(fpop) + Number(alpop) + Number(busipop)
		$("#popAbility").text(popScore.toFixed(1));
		$("#popPower").text(popScore.toFixed(1));
		let popscorelist = [$("#fpopscore").text(),$("#alpoopscore").text(),$("#busipopscore").text()]
		//최댓값
		let max = popscorelist.reduce( 
				function (previous, current) { 
			return previous > current ? previous:current;
		});
		if(max == fpop){
			$("#popresult").text("유동인구")
		}else if(max ==alpop){
			$("#popresult").text("상주인구")
		}else{
			$("#popresult").text("직장인구")
		}
		//구매력 결과 테이블 테이블 입력
		let salesByarea = $("#salesByarea").text()
		let paymentPerCase = $("#paymentPerCase").text()
		let consume = $("#consume").text()
		let consumeScoreList = [salesByarea, paymentPerCase, consume]
		let consumeScore = Number(salesByarea) + Number(paymentPerCase) + Number(consume)
		$("#consumeAbility").text(consumeScore.toFixed(1));
		$("#consumerPower").text(consumeScore.toFixed(1));
		//최댓값
		max = consumeScoreList.reduce( 
				function (previous, current) { 
			return previous > current ? previous:current;
		});
		if(max == salesByarea){
			$("#consumeresult").text("상점매출규모")
		}else if(max ==paymentPerCase){
			$("#consumeresult").text("건당 결제금액")
		}else{
			$("#consumeresult").text("소비 수준")
		}
		//영업력 결과 테이블 테이블 입력
		let consumeBySupply = $("#consumeBySupply").text()
		let storelet = $("#storelet").text()
		let timelet = $("#timelet").text()
		let saleScoreList = [consumeBySupply, storelet, consume]
		let saleScore = Number(consumeBySupply) + Number(storelet) + Number(timelet)
		$("#saleAbility").text(saleScore.toFixed(1));
		$("#saleResult").text(saleScore.toFixed(1));
		//최댓값
		max = saleScoreList.reduce( 
				function (previous, current) { 
			return previous > current ? previous:current;
		});
		if(max == consumeBySupply){
			$("#consumeresult").text("공급대비수요")
		}else if(max ==storelet){
			$("#consumeresult").text("점포별매출편차")
		}else{
			$("#consumeresult").text("기간별 매출편차")
		}
		//안정성 결과 테이블 테이블 입력
		let volatility = $("#volatility").text()
		let averageOperationYear = $("#averageOperationYear").text()
		let closeRatio = $("#closeRatio").text()
		let stabilityScoreList = [volatility, averageOperationYear, closeRatio]
		let stabilityScore = Number(volatility) + Number(averageOperationYear) + Number(closeRatio)
		$("#stability").text(stabilityScore.toFixed(1));
		$("#stabilityPower").text(stabilityScore.toFixed(1));
		//최댓값
		max = stabilityScoreList.reduce( 
				function (previous, current) { 
			return previous > current ? previous:current;
		});
		if(max == salesByarea){
			$("#stabilityResult").text("변동성")
		}else if(max ==paymentPerCase){
			$("#stabilityResult").text("운영연수")
		}else{
			$("#stabilityResult").text("휴/폐업률")
		}

		//성장성 결과 테이블 테이블 입력
		let paymentUpDown = $("#paymentUpDown").text()
		let paymentRatio = $("#paymentRatio").text()
		expectGrowthRatio = $("#expectGrowthRatio").text()
		let growthScoreList = [paymentUpDown, paymentRatio, expectGrowthRatio]
		let growthScore = Number(paymentUpDown) + Number(paymentRatio) + Number(expectGrowthRatio)
		$("#growthAbility").text(growthScore.toFixed(1));
		$("#growthPower").text(growthScore.toFixed(1));
		//최댓값
		max = growthScoreList.reduce( 
				function (previous, current) { 
			return previous > current ? previous:current;
		});
		if(max == paymentUpDown){
			$("#growthResult").text("매출증감률")
		}else if(max ==paymentRatio){
			$("#growthResult").text("상권 매출비중")
		}else{
			$("#growthResult").text("예상성장률")
		}

		let total_score  = growthScore + stabilityScore + saleScore + popScore + consumeScore
		$("#total_score").text(total_score.toFixed(1))
		$("#result").text(total_score.toFixed(1))

		let resultScoreList = [growthScore , stabilityScore , saleScore , popScore , consumeScore]

		//최대값
		max = resultScoreList.reduce( function (previous, current) { 
			return previous > current ? previous:current;
		});
		//최소값
		min = resultScoreList.reduce( function (previous, current) { 
			return previous > current ? current:previous;
		});

		let resultInfo = ''
		if(max == growthScore){
			resultInfo = ' 평가 지표중 성장성이 가장 높고'
		}else if(max == stabilityScore){
			resultInfo= ' 평가 지표중 안정성이 가장 높고'
		}else if(max == saleScore){
			resultInfo= ' 평가 지표중 영업력이 가장 높고'
		}else if(max == popScore){
			resultInfo= ' 평가 지표중 집객력이 가장 높고'
		}else if(max == consumeScore){
			resultInfo= ' 평가 지표중 구매력이 가장 높고'
		}
		if(min == growthScore){
			resultInfo += ' 성장성이 가장 낮습니다.'
		}else if(min == stabilityScore){
			resultInfo += ' 안정성이 가장 낮습니다.'
		}else if(min == saleScore){
			resultInfo += ' 영업력이 가장 낮습니다.'
		}else if(min == popScore){
			resultInfo += ' 집객력이 가장 낮습니다.'
		}else if(min == consumeScore){
			resultInfo += ' 구매력이 가장 낮습니다.'
		}
		//분석 결과 등급 넣기
		if(total_score >= 70){
			$("#needle").css("transform", "rotate(290deg)")
			$("#resultText").text("해당 지역의 해당 상권업종은 1등급입니다."+resultInfo)
		}else if(total_score >=  57.5){
			$("#needle").css("transform", "rotate(325deg)")
			$("#resultText").text("해당 지역의 해당 상권업종은 2등급입니다."+resultInfo)
		}else if(total_score >= 45){
			$("#resultText").text("해당 지역의 해당 상권업종은 3등급입니다."+resultInfo)
		}else if(total_score >= 32.5){
			$("#needle").css("transform", "rotate(35deg)")
			$("#resultText").text("해당 지역의 해당 상권업종은 4등급입니다."+resultInfo)
		}else{
			$("#needle").css("transform", "rotate(70deg)")
			$("#resultText").text("해당 지역의 해당 상권업종은 5등급입니다."+resultInfo)
		}

	}
})

//집객력 결과 테이블 테이블 입력
</script>
