<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css" />
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<style>
.modal {
	overflow-x: hidden;
	overflow-y: auto;
	opacity: 1;
	text-align: center;
	padding: 0 !important;
	position: fixed;
	z-index: 1050;
	outline: 0;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	max-width: 1000px;
}

#myModal2 {
	width: 800px;
	height: 700px;
}

#modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
	width: 600px;
	margin: 30px auto;
	position: relative;
}

.modal a.close-modal {
	top: 20px;
	right: 20px;
}

.auctionTable {
	font-family: 'Noto Sans KR', sans-serif;
	border-collapse: collapse;
	width: 100%;
	border: 2px solid #F2B90C;
}

.auctionTable th {
	border: 1px solid #ddd;
	padding-left: 8px;
	padding-right: 8px;
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #FFFFFF;
	color: #000000;
}

.auctionTable td {
	padding: 8px;
	background-color: #FFFFFF;
	border-left: 1px solid #D8D8D8;
	border-right: 1px solid #D8D8D8;
	text-align: left;
}

.auctionTable tr:nth-child(even) {
	border-top: 1px solid #E6E6E6;
	border-bottom: 1px solid #E6E6E6;
}

.button3 {
	height: 40px;
	background-color: #FFFFFF;
	border: 2px solid #D8D8D8;
	color: #000000;
	line-height: 3px;
	font-size: 15px;
	padding: 5px 15px 5px 15px;
}

.button3:hover {
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}

.mypagesection{
	height: 1500px;
}
#ltchart{
	border: 2px solid #FFC107;
	margin-bottom: 10px;
	background-color: #FFFFFF;
}
.statisticsLabel{
	text-align: center;
	font-size: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: bold;
}
</style>

<script type="text/javascript">
function day1(val,a){
	//alert(val);
	var countDownDate = new Date(val).getTime();
	var now = new Date().getTime();
	var distance = countDownDate - now;
	var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
			/ (1000 * 60 * 60));
	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	if (distance < 0) {
		/* console.log("y:"+a); */
		document.getElementById("exday"+a).innerHTML = '만료';
		$('#exday'+a).css('color', '#FF0000');
	}else{
		/* console.log("n:"+a); */
		document.getElementById("exday"+a).innerHTML = val;
		$('#exday'+a).css('color', '#0040FF');
	}
}

function ipbtn(num){
	$.ajax({
		url : "auction_iplist?ipnum="+num+"&aid="+$('#aid').val(),
		type : "get" ,
		success : function(result) {
				$('#target1').html(result);
		}
	});
	event.preventDefault();
    $('#myModal2').modal({
      fadeDuration: 250
    });

  };
  function iptong(num){
	  $.ajax({
			url : "auctionjson?num="+num ,
			type : "get" ,
			success : function(result) {
				ltchartmain(result);
			}
		});
  }
  
  function ltchartmain(result){
	var chart = c3.generate({
	   bindto: "#ltchart",
	   size: {
		   width: 1100,
		   height: 400
	   },
	   padding: {
		 top: 15  
	   },
	   color: {
		 pattern: ['#F24607']
	   },
	   data: {
	     columns: [
	    	 result
	     ]
	   }
	 });
	} 

</script>
	<div>
	<p class="statisticsLabel">입찰 통계 버튼을 눌러 그래프를 확인하실 수 있습니다.</p>
		<c:choose>
			<c:when test="${iplist=='[]'}">
				<div id="ltchart" style="height: 400px;">
					
				</div>
			</c:when>
			<c:otherwise>
				<div id="ltchart" style="height: 400px;">
					
				</div>
			</c:otherwise>
		</c:choose>
	</div>
		<c:choose>
			<c:when test="${iplist=='[]'}">
				<span style="margin-left: 50%;">입찰 내역이 없습니다.</span>
			</c:when>
			<c:otherwise>
				<table class="auctionTable">
					<tr>
						<th></th>
						<th>제목/건물용도/주소/경매만료일자</th>
						<th style="text-align: center;">입찰상태</th>
						<th style="text-align: center;">입찰내역</th>
						<th style="text-align: center;">입찰통계</th>
					</tr>
					<c:forEach var="iplist" items="${iplist}" varStatus="idx">
						<tr>
							<td id="colchk1" scope="row" style="width: 130px;"><img
								src="img/${iplist.wimage}"
								style="width: 120px; height: 120px; float: left;"
								onerror="this.src='img/noimg.jpg'"></td>

							<td id="coltd1_2" style="width: 630px;"><label
								id="t1addr1_1"> <span id="mainsubject">${iplist.subject}</span><br />
									<b>[${iplist.yongdo}]</b><br />${iplist.addr}</label><br /> <label
								id="t1addr1_3" style="font-size: 11pt; height: 6px;"><b>경매만료일자</b>&nbsp;
									<span style="color: #000000;" id="exday${idx.count}"></span> <script>day1("${iplist.todate}",${idx.count})</script></label>
							</td>

							<c:if test="${iplist.status == '진행'}">
								<td style="text-align: center;"><span id="AuctionStatus"
									style="color: #0040FF; font-weight: bold;">${iplist.status}</span>
								</td>
							</c:if>
							<c:if test="${iplist.status == '낙찰'}">
								<td style="text-align: center;"><span id="AuctionStatus"
									style="color: #FD7400; font-weight: bold;">${iplist.status}</span>
								</td>
							</c:if>
							<c:if test="${iplist.status == '종료'}">
								<td style="text-align: center;"><span id="AuctionStatus"
									style="color: #FF0000; font-weight: bold;">${iplist.status}</span>
								</td>
							</c:if>
							<td style="text-align: center;">
								<button class="p_modal1 button3"
									onclick="ipbtn(${iplist.ipnum})">
									<i class="fas fa-search"></i>&nbsp;보기
								</button>
							</td>
							<td style="text-align: center;">
							<button type="button" class="button3" onclick="iptong(${iplist.ipnum})"><i class="fas fa-search"></i>&nbsp;보기</button>
							</td>
						</tr>
					</c:forEach>
					<input type="hidden" id="aid" name="aid" value="${param.aid}">
				</table>
			</c:otherwise>
		</c:choose>
		<div id="myModal2" class="modal fade" role="dialog">
			<div id="modal-dialog">
				<!-- Modal content-->
				<div>
					<div>
						<button type="button" class="close" data-dismiss="modal"></button>
					</div>
					<div id="target1"></div>
				</div>
			</div>
		</div>