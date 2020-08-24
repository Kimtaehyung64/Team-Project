<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../include/header_index.jsp"%>
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
	border: 5px solid #D8D8D8;
	width: 700px;
	height: auto;
	margin: auto;
}

#tag2 {
	width: 700px;
	font-size: 20px;
	font-weight: bold;
	color: seagreen;
}

#head {
	width: 695px;
	height: 105px;
	border-bottom: 5px solid #D8D8D8;
}

#title {
	text-align: left;
	margin-top: 20px;
	margin-left: 20px;
	width: 500px;
	font-size: 17px;
	font-weight: bold;
}

#toggle {
	text-align: left;
	margin-left: 20px;
	font-size: 15px;
	width: 500px;
	color: #787878;
}

#rec_update, #new_Login {
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

#updatedetail {
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #FF8000;
	color: #FFFFFF;
	float: right;
	margin-left: 5px;
}

#golist {
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #0174DF;
	color: #FFFFFF;
	float: left;
}

#deletedetail {
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #FE2E2E;
	color: #FFFFFF;
	float: right;
}

#buttons {
	width: 698px;
	margin: 0 auto;
}

#textbody {
	padding: 15px 15px 15px 15px;
	text-align: left;
}

#connect {
	color: black;
}

#connectarea {
	text-align: left;
	padding: 10px;
	border: 1px solid gray;
	border-radius: 5px;
	border-style: groove;
	border-color: #BDBDBD;
	margin-left: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}

.replyarea {
	background-color: #F2F3F4;
}

#replyarea ul {
	list-style: none;
	margin: 0px 15px 15px 15px;
	padding-left: 10px;
	padding-top: 10px;
}

#replyarea ul li {
	border-bottom: 1px solid #ededed;
}

#replyarea dl {
	text-align: left;
}

#replyarea ul li dt {
	display: inline;
	margin-right: 12px;
	font-size: 12px;
	text-align: left;
}

#replyarea ul li dl .date {
	display: inline;
	font-size: 11px;
}

#replyarea ul li dl .comment {
	margin-top: 7px;
	font-size: 12px;
}

#replyin {
	width: 560px;
	height: 50px;
	margin: 0px 15px 15px 15px;
}

#reinsert, #replylogin {
	padding: 0.5rem 0.5rem;
	float: right;
	width: 80px;
	height: 52px;
	margin: 0px 0px 22px 0px;
	border: 1px solid gray;
	background-color: #FFFFFF;
}

.replyupdate, .replydelete {
	font-size: 11px;
	text-align: right;
	display: inline;
	border: none;
	padding-left: 2px;
	padding-right: 2px;
}

.commentUpdate {
	display: none;
}

.cupdatearea {
	width: 650px;
	height: 50px;
}

.updateClose {
	text-align: right;
	font-size: 11px;
	color: black;
	display: block;
}

.updateSubmit {
	width: 650px;
	height: 50px;
	border: 1px solid #BDC3C7;
	font-size: 15px;
	padding: 0;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#updatedetail').hover(function() {
			$('#updatedetail').css('background-color', '#DF7401');
		}, function() {
			$('#updatedetail').css('background-color', '#FF8000');
		});
		$('#golist').hover(function() {
			$('#golist').css('background-color', '#045FB4');
		}, function() {
			$('#golist').css('background-color', '#0174DF');
		});
		$('#deletedetail').hover(function() {
			$('#deletedetail').css('background-color', '#FF0000');
		}, function() {
			$('#deletedetail').css('background-color', '#FE2E2E');
		});
		$('#golist').click(function() {
			location = 'listall';
		});		
	});
	function deleteClick(){
			var result = confirm('정말 삭제하시겠습니까?');
			if(result) {
				alert('글이 삭제되었습니다.');
				$.ajax({
					url:"cusBoardDelete?c_num="+${detail.c_num},
					success:location="listall",				
				});
			}
	}
	function connect(){
		if($('.replyarea').css('display') == 'none'){
            $('.replyarea').show();
        }else{
            $('.replyarea').hide();
        }
	}
	
</script>

<section class="projects-section bg-light" id="projects">
	<div class="container">
		<input type="hidden" name="anum" value="${user.anum}">
		<div id="area">
			<div id="location">
				<h4>고객 센터</h4>
				<div id="tag">
					<p id="tag2">
						<i class="fas fa-user-circle"></i>&nbsp;${detail.c_type}
					</p>
				</div>
			</div>
			<div id="writingarea">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">${detail.c_subject}</h3></td>
						</tr>
						<tr>
							<td>
								<div id="toggle">
									<span><i class="fas fa-portrait"></i>&nbsp;${detail.aid}****</span>&nbsp;||
									<span><i class="fas fa-calendar-day"></i>&nbsp;${detail.c_regdate}</span>&nbsp;
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div id="textbody">${detail.c_content}</div>
				<div id="connectarea">
					<a id="connect" onclick="connect()">답변</a>
					<ul style="text-align: left;">
						${reply.c_ans}
					</ul>
				</div>
			</div>
		</div>
		<div id="buttons">
			<button type="button" class="btn btn-default btn-sm" id="golist">
				<i class="fas fa-bars"></i>&nbsp;목록
			</button>
			<c:if test="${fn:length(reply.c_ans) == 0}">
				<button type="button" class="btn btn-default btn-sm" id="updatedetail" onclick="location.href='updatedetail?c_num=${detail.c_num}'">
					<i class="fas fa-feather-alt"></i>&nbsp;수정
				</button>
				<form name="delete" action="cusBoardDelete">
					<button type="button" class="btn btn-default btn-sm" id="deletedetail" onclick="deleteClick()">
						<i class="fas fa-times"></i>&nbsp;삭제
					</button>
				</form>
			</c:if>
		</div>
	</div>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>