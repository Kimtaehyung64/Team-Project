<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Load c3.css -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="modal-content2">
	<div class="row" id="productdesc">
	<p class="locationinfo">지역 정보</p>
		<input type="hidden" id="keyValue">
		<table class="modalServer table">
			<tr>
				<th>지역구 - 운영<br><em style="font-size:15px;">(단위:평균 개월)</em></th>
				<th>지역구 - 폐업<br><em style="font-size:15px;">(단위:평균 개월)</em></th>
				<th>서울 - 운영<br><em style="font-size:15px;">(단위:평균 개월)</em></th>
				<th>서울 - 폐업<br><em style="font-size:15px;">(단위:평균 개월)</em></th>
			</tr>
			<tr>
				<td>${closebusi.meanoper}</td>
				<td>${closebusi.closeoper}</td>
				<td>${closebusi.totalopermean}</td>
				<td>${closebusi.totalclosemean}</td>
			</tr>
			<tr>
				<th>사업체 수</th>
				<th>총 종사자 수</th>
				<th>평균 종사자</th>
				<th>사업체 창업률</th>
			</tr>
			<tr>
				<td>${openbusi.businum}</td>
				<td>${openbusi.emplynum}</td>
				<td>${openbusi.meanemply}</td>
				<td>${openbusi.busiopenratio}%</td>
			</tr>
			<tr>
			</tr>
		</table>
	</div>
	<div>
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-6" id="product1" style="margin: 0 auto;">
				<p class="locationinfo">유동인구</p>
				<div id="timePopChart" style="margin-bottom:9px;"></div>
				<a class="populationButton" id="timePopButton" onClick="split_gender();">
					<span>성별 차트 보기</span>
				</a>
			</div>
			<div class="col-6" id="product2" style="margin: 0 auto;">
			<p class="locationinfo" style="padding-left: 62px;">운영/폐업<em>(단위:평균 개월)</em></p>
				<div id="quaterOpenChart" style="margin-bottom: 9px;"></div>
				<table class="col-12">
					<tr>
						<td><a class="infobutton2" id="add_button1"
								onClick="deleteMeanOper();" style="border: 2px solid #0174DF;">
								<span>지역구 - 운영</span>
							</a></td>
						<td><a class="infobutton2" id="add_button2" style="border: 2px solid #FD7400;"
								onClick="addmeanClose();">
								<span>지역구 - 폐업</span>
							</a></td>
						<td><a class="infobutton2" id="add_button3" style="border: 2px solid #04B45F;"
								onClick="addseoulMeanOper();">
								<span>서울 - 운영</span>
							</a></td>
						<td><a class="infobutton2" id="add_button4" style="border: 2px solid #DF0101;"
								onClick="addseoulMeanClose();">
								<span>서울 - 폐업</span>
							</a></td>
					</tr>
				</table>
			</div>
 			<div class="col-3" id="product3" style="margin: 0 auto;">
				<div id="quaterOpenChart2"></div>
			</div>
			<div class="col-3" id="product4" style="margin: 0 auto;">
				<div id="quaterOpenChart3"></div>
			</div>
		</div>
	</div>
</div>

