<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_main.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_CoEstateSubMenu.jsp"%>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.css">

<style>
#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}

#searchValue {
	width: 900px;
	margin-right: 5px;
}

#searchType {
	width: 100px;
	margin: 5px;
}

#searchform1 {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;
}

#btnSearch {
	margin-right: 5px;
	border: 1px solid #D8D8D8;
	height: 38px;
}

#pagenum1 {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#total {
	color: blue;
}

#latest:hover {
	color: #F27405;
	cursor: pointer;
}

h2 {
	text-align: center;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
}

.footerCenter>div {
	height: auto !important;
}
#link {color: #E45635;display:block;font: 12px "Helvetica Neue", Helvetica, Arial, sans-serif;text-align:center; text-decoration: none;}
#link:hover {color: #CCCCCC}

#link, #link:hover {-webkit-transition: color 0.5s ease-out;-moz-transition: color 0.5s ease-out;-ms-transition: color 0.5s ease-out;-o-transition: color 0.5s ease-out;transition: color 0.5s ease-out;}

/** BEGIN CSS **/
        @keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-moz-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-webkit-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-o-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-moz-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-webkit-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @-o-keyframes rotate-loading {
            0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
            100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
        }

        @keyframes loading-text-opacity {
            0%  {opacity: 0}
            20% {opacity: 0}
            50% {opacity: 1}
            100%{opacity: 0}
        }

        @-moz-keyframes loading-text-opacity {
            0%  {opacity: 0}
            20% {opacity: 0}
            50% {opacity: 1}
            100%{opacity: 0}
        }

        @-webkit-keyframes loading-text-opacity {
            0%  {opacity: 0}
            20% {opacity: 0}
            50% {opacity: 1}
            100%{opacity: 0}
        }

        @-o-keyframes loading-text-opacity {
            0%  {opacity: 0}
            20% {opacity: 0}
            50% {opacity: 1}
            100%{opacity: 0}
        }
        .loading-container,
        .loading {
            height: 100px;
            position: relative;
            width: 100px;
            border-radius: 100%;
        }


        .loading-container { margin: 40px auto }

        .loading {
            border: 2px solid transparent;
            border-color: transparent #fff transparent #FFF;
            -moz-animation: rotate-loading 1.5s linear 0s infinite normal;
            -moz-transform-origin: 50% 50%;
            -o-animation: rotate-loading 1.5s linear 0s infinite normal;
            -o-transform-origin: 50% 50%;
            -webkit-animation: rotate-loading 1.5s linear 0s infinite normal;
            -webkit-transform-origin: 50% 50%;
            animation: rotate-loading 1.5s linear 0s infinite normal;
            transform-origin: 50% 50%;
        }

        .loading-container:hover .loading {
            border-color: transparent #E45635 transparent #E45635;
        }
        .loading-container:hover .loading,
        .loading-container .loading {
            -webkit-transition: all 0.5s ease-in-out;
            -moz-transition: all 0.5s ease-in-out;
            -ms-transition: all 0.5s ease-in-out;
            -o-transition: all 0.5s ease-in-out;
            transition: all 0.5s ease-in-out;
        }

        #loading-text {
            -moz-animation: loading-text-opacity 2s linear 0s infinite normal;
            -o-animation: loading-text-opacity 2s linear 0s infinite normal;
            -webkit-animation: loading-text-opacity 2s linear 0s infinite normal;
            animation: loading-text-opacity 2s linear 0s infinite normal;
            color: #ffffff;
            font-family: "Helvetica Neue, "Helvetica", ""arial";
            font-size: 10px;
            font-weight: bold;
            margin-top: 45px;
            opacity: 0;
            position: absolute;
            text-align: center;
            text-transform: uppercase;
            top: 0;
            width: 100px;
        }
</style>
<div class="container" id="container" style="height:100%">
	<input type="hidden" id="guName" value="${result.guName}">
	<input type="hidden" id="dongName" value="${result.dongName}">
	<input type="hidden" id="largeName" value="${result.largeName}">
	<input type="hidden" id="cate" value="${result.cate}">
	<div class="loading-container">
    <div class="loading"></div>
    <div id="loading-text">loading</div>
</div>
</div>
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js"></script>
<script>
	var guName = $("#guName").val()
	var dongName = $("#dongName").val()
	var largeName = $("#largeName").val()
	var cate = $("#cate").val()
	
	$.ajax({
		url:"getAnalysisResult?guName="+guName+"&dongName="+dongName+"&largeName="+largeName+"&cate="+cate,
		success:function(d){
			//alert(Number($("#busipopscore").text()))
			$("#container").html(d); 
			var chartPop = c3.generate({
				bindto: '#popChartHolder',
				data : {
					type : 'donut',
					columns : [
							["유동인구", parseFloat($("#fpopscore").text())],
							["배후 주거인구", parseFloat($("#alpopscore").text())],
							["배후 직장인구",parseFloat($("#busipopscore").text())]
						]
					},	
			});
			var chartConsume = c3.generate({
				bindto: '#chart_buying_holder',
				data : {
					type : 'donut',
					columns : [
							["상권 매출규모", parseFloat($("#salesByarea").text())],
							["건당 결제금액", parseFloat($("#paymentPerCase").text())],
							["소비 수준", parseFloat($("#consume").text())]
						]
					},	
			});
			var chartGrowth = c3.generate({
				bindto: '#chart_growth_holder',
				data : {
					type : 'donut',
					columns : [
							["매출증감률", parseFloat($("#paymentUpDown").text())],
							["상권 매출비중", parseFloat($("#paymentRatio").text())],
							["예상 성장률", parseFloat($("#expectGrowthRatio").text())]
						]
					},	
			});
			var chartStability = c3.generate({
				bindto: '#chart_stability_holder',
				data : {
					type : 'donut',
					columns : [
							["변동성", parseFloat($("#volatility").text())],
							["운영연수", parseFloat($("#averageOperationYear").text())],
							["휴/폐업률", parseFloat($("#closeRatio").text())]
						]
					},	
			});
			var chartSales = c3.generate({
				bindto: '#chart_salesForce_holder',
				data : {
					type : 'donut',
					columns : [
							["공급대비 수요", parseFloat($("#consumeBySupply").text())],
							["점포별 매출편차", parseFloat($("#storeVar").text())],
							["기간 별 매출편차", parseFloat($("#timeVar").text())]
						]
					},	
			});
		}
	})
</script>
<%@ include file="../include/footer.jsp"%>