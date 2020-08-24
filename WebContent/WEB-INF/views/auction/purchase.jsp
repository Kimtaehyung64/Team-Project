<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/community/signupchoose.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<style>
	#projects{
		margin-bottom: 100px;
    	margin-top: 100px;
	}
	.table{
		border: 2px solid #F25C05;
	}
	.button3{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
}
.button3:hover{
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
}
.button4{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
}
.button4:hover{
	border: 2px solid #004358;
	background-color: #FFFFFF;
	color: #000000;
}
.table td{
	height: 140px;
	border-top: 0px;
}
em{
	font-style: normal;
	color: #F25C05;
}
</style>
	<section class="projects-section bg-light" id="projects">
		<div class="container">
	
			<table class="table">
				<tr class="success">
					<th colspan="2"><a><em>경매 입찰</em>이</a><br>완료되었습니다.</th>
				</tr>
				<tr>
					<td><button type="button" class="btn button3" onclick="location = 'auctionMain'">더 많은 물건 둘러보기</button></td>
					<td><button type="button" class="btn button4" onclick="location = 'auctionMain'">뒤로가기</button></td>
				</tr>
			</table>
		</div>
	</section>
<%@ include file="../include/footer.jsp"%>
	 
