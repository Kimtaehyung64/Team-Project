<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/community/writing_question.css"
	rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<style>
#area {
	text-align: center;
}

#tag {
	display: block;
	margin: auto;
	width: 700px;
}

#writingarea {
	border: 1px solid;
	width: 700px;
	height: 700px;
	margin: auto;
}

#tag2 {
	width: 700px;
	font-size: 20px;
	color: seagreen;
}

#head {
	width: 698px;
	height: 105px;
	border-bottom: 1px solid;
}

#title {
	text-align: left;
	margin-top: 20px;
	margin-left: 20px;
	width: 500px;
}

#toggle {
	text-align: left;
	margin-left: 20px;
	font-size: 15px;
	width: 500px;
	color: #787878;
}

#rec_update {
	width: 100px;
	color: blue;
	font-size: 15px;
	padding: 4.5px 0.5px;
}

#rec {
	padding-top: 30px;
	width: 170px;
	font-size: 13px;
}

#updatedetail, #golist, #delete {
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #64A19D;
	color: #FFFFFF;
}

#buttons {
	width: 698px;
	margin: 0 auto;
	float: right;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#updatedetail').hover(function() {
			$('#updatedetail').css('background-color', '#548B87');
		}, function() {
			$('#updatedetail').css('background-color', '#64A19D');
		});
		$('#golist').hover(function() {
			$('#golist').css('background-color', '#548B87');
		}, function() {
			$('#golist').css('background-color', '#64A19D');
		});
		$('#delete').hover(function() {
			$('#delete').css('background-color', '#548B87');
		}, function() {
			$('#delete').css('background-color', '#64A19D');
		});
		$('#golist').click(function() {
			location = 'comuMain';
		});
		$('#delete').click(function() {

		});
		$('#rec_update').hover(function() {
			$('#rec_update').css('border', '1px solid blue');
		},function(){
			$('#rec_update').css('border', '1px solid white');
		});
	});
</script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
	<input type="hidden" id="list" name="list" value="${list}">
		<div id="area">
			<div id="location">
				<h2>우리동네 ${list.wgubun}이야기</h2>
				<div id="tag">
					<p id="tag2">${list.wloc1}&nbsp;${list.wloc2}&nbsp;${list.wgubun}</p>
				</div>
			</div>
			<div id="writingarea">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">${list.wtitle}</h3></td>
							<td id="rec">추천하기</td>
						</tr>
						<tr>
							<td><div id="toggle">
									<span>${list.aid}</span> 
									<span>${list.wchgdate}</span> 
									<span>조회 ${list.whit}</span>
								</div></td>	
							<td id="total">
								<form action="updateWrec" method="get">	
								<div>
									<button type="button" class="btn btn-default" id="rec_update">
										<i class="fas fa-thumbs-up"></i>&nbsp; <span id="wrec">${list.wrec}</span>
									</button>
								</div>
								</form>
							</td>
						</tr>
					</table>
				</div>
				<div id=body>
				${list.wcontents}
				</div>
			</div>
			<div id="buttons">
				<button type="button" class="btn btn-default btn-sm" id="updatedetail"
				onclick="location.href='updatedetailform?wnum=${list.wnum}'">수정하기
				</button>
				<button type="button" class="btn btn-default btn-sm" id="golist">목록으로
				</button>
				<button type="button" class="btn btn-default btn-sm" id="delete">삭제하기
				</button>
			</div>
		</div>
	</div>
</section>