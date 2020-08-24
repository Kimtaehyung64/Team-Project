<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:forEach var="list" items="${list}">
	<tr>
		<th id="colchk1" scope="row" style="width: 130px;">
			<img src="img/${list.wimage}" style="width: 120px; height: 120px; float: left;" onerror="this.src='img/noimg.jpg'">
		</th>
		<td id="coltd1_2" style="width: 630px;">
			<label id="t1addr1_1">
				<a href="auctionDetail?anum=${list.anum}" style="color: black;">
					<span id="mainsubject">${list.subject}</span>
					<br/><b>[${list.yongdo}]</b><br/>${list.addr}
				</a>
			</label><br/>
			<label id="t1addr1_2" style="font-size: 11pt; height: 6px;">토지면적 ${list.tweight}㎡/건물면적 ${list.bweight}㎡</label><br/> 
			<label id="t1addr1_3" style="font-size: 11pt; height: 6px;"><b>경매만료기일</b>&nbsp;&nbsp;
			<span style="color: blue; font-weight: bold;">${list.enddate}</span></label>
		</td>
		<td style="padding-left: 0px; padding-right: 0px;">
			<span class="badge badge-primary" style="font-size: 8pt;">시작가</span><br/>
			<span class="badge badge-info" style="font-size: 8pt;">현재가</span>
		</td>
		<td style="padding-left: 3px;">
			<b>${list.ideprice}</b><br/>
			<span style="color: blue;"><b>${list.hprice}</b></span>
			<br/>
			<b>${list.youc}</b>
		</td>
		<td style="text-align: center;">
			${list.status}<br/>${list.indate}<br/>${list.hit}
		</td>
	</tr>
</c:forEach>