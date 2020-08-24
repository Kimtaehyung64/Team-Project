<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<input type="hidden" id="list" name="list" value="${list}">
		<div id="area">
			<div id="location">
				<h4>우리동네 ${list.wgubun}이야기</h4>
				<div id="tag">
					<p id="tag2">
						<i class="fas fa-vihara"></i>&nbsp;${list.wloc1} <i
							class="fas fa-home"></i>&nbsp;${list.wloc2} <i
							class="fas fa-comments-dollar"></i>&nbsp;${list.wgubun}
					</p>
				</div>
			</div>
			<div id="writingarea">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">${list.wtitle}</h3></td>
							<c:if test="${ user.aid == null }">
								<td id="rec" rowspan="2">추천하기
									<button type="button" class="btn btn-default"
										onclick="loginCheck()" id="new_Login">
										<i class="fas fa-thumbs-up"></i>&nbsp; <span id="wrec">${list.wrec}</span>
									</button>
								</td>
							</c:if>
							<c:if test="${ user.aid != null }">
								<td id="rec" rowspan="2">추천하기
									<form action="updateWrec" method="post">
										<button type="button" class="btn btn-default"
											onclick="upWrec()" id="rec_update">
											<i class="fas fa-thumbs-up"></i>&nbsp; <span id="wrec">${list.wrec}</span>
										</button>
									</form>
								</td>
							</c:if>
						</tr>
						<tr>
							<td><div id="toggle">
									<span><i class="fas fa-portrait"></i>&nbsp;${list.paid}****</span>&nbsp;||
									<span><i class="fas fa-calendar-day"></i>&nbsp;${list.wchgdate}</span>&nbsp;||
									<span><i class="fas fa-mouse"></i>&nbsp;${list.whit}</span>
								</div></td>
						</tr>
					</table>
				</div>
				<div id="textbody">${list.wcontents}</div>
				<div id="connectarea">
					<a id="connect" onclick="connect()">댓글 ${replytotal}개</a>
				</div>
				<div class="replyarea">
					<div id="replyarea">
						<ul>
							<c:forEach var="reply" items="${replyList}">
								<li>
									<dl>
										<dt>${reply.pr_writer}****</dt>
										<dd class="date">${reply.rindate}</dd>
										<c:if test="${user.aid==reply.r_writer}">
											<button type="button" class="replyupdate"
												onclick="showUpdate(${reply.renum})">
												<i class="fas fa-pen"></i>&nbsp;수정
											</button>
											<form action="replydel" class="replydelete">
												<input type="hidden" name="wnum" value="${reply.wnum}">
												<input type="hidden" name="renum" value="${reply.renum}">
												<button type="button" class="replydelete"
													onclick="replydelete(${reply.renum})">
													<i class="fas fa-trash-alt"></i>&nbsp;삭제
												</button>
											</form>
										</c:if>
										<form action="replyup" method="post">
											<div id="commentUpdate${reply.renum}" class="commentUpdate">
												<input type="hidden" name="wnum" value="${reply.wnum}">
												<input type="hidden" name="renum" value="${reply.renum}">
												<a class="updateClose" onclick="showClose(${reply.renum})">닫기</a>
												<textarea class="cupdatearea" rows="20" cols="80"
													name="r_text">${reply.r_text}</textarea>
												<button type="submit" class="btn btn-default updateSubmit"
													onclick="location.href='writing_detail?wnum=${reply.wnum}'">등록</button>
											</div>
										</form>
										<dd id="comment${reply.renum}" class="comment">${reply.r_text}</dd>
									</dl>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div id="pagingarea">
						<%@include file="include/pageprocess_reply.jsp"%>
					</div>
					<div id="writebox_area">
						<table>
							<tbody>
								<tr>
									<c:if test="${ user.aid == null }">
										<td><textarea id="replyin" rows="20" cols="80"
												name="r_text"></textarea></td>
										<td><button type="button" class="btn btn-default"
												id="replylogin" onclick="replyLogin()">
												<i class="fas fa-pencil-alt"></i>&nbsp;입력
											</button></td>
									</c:if>
									<form action="replyin" method="post">
										<c:if test="${ user.aid != null }">
											<input type="hidden" name="wnum" value="${list.wnum}">
											<input type="hidden" name="r_writer" value="${user.aid}">
											<td><textarea id="replyin" rows="20" cols="80"
													name="r_text"></textarea></td>
											<td><button type="submit" class="btn btn-default"
													id="reinsert" name="reinsert" onclick="replyCheck()">
													<i class="fas fa-pencil-alt"></i>&nbsp;입력
											</button></td>
										</c:if>
									</form>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div id="buttons">
				<button type="button" class="btn btn-default btn-sm" id="golist">
					<i class="fas fa-bars"></i>&nbsp;목록
				</button>
				<c:if test="${user.aid == list.aid}">
					<button type="button" class="btn btn-default btn-sm"
						id="updatedetail"
						onclick="location.href='updatedetailform?wnum=${list.wnum}'">
						<i class="fas fa-feather-alt"></i>&nbsp;수정
					</button>
					<form name="delete" action="dedetail">
						<button type="button" class="btn btn-default btn-sm"
							id="deletedetail" onclick="deleteClick()">
							<i class="fas fa-times"></i>&nbsp;삭제
						</button>
					</form>
				</c:if>
			</div>
		</div>
	</div>
</section>
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
			location = 'comuMain';
		});
		$('#rec_update').hover(function() {
			$('#rec_update').css('border', '1px solid blue');
		},function(){
			$('#rec_update').css('border', '1px solid white');
		});
			
	});
	
	function deleteClick(){
		var result = confirm('정말 삭제하시겠습니까?');
		if(result) {
			alert('글이 삭제되었습니다.');
			$.ajax({
				url:"dedetail?wnum="+${list.wnum},
				success:location="comuMain"				
			})
		}
	}
	
	function loginCheck(){
		alert('추천은 로그인 후 가능합니다.');
		var result = confirm('로그인 하시겠습니까?');
		if(result) {
			$.ajax({
				success:location="login"
			});
		}
	}
	
	// 쿠키 생성 함수
	function setCookie(cName, cValue, cDay){
		var expire = new Date();
		expire.setDate(expire.getDate() + cDay);
		cookies = cName + '=' + escape(cValue) + '; path=/ '; // 한글 깨짐을 막기위해 escape(cValue)를 함.
		if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
		document.cookie = cookies;
	}
	
	// 쿠키 가져오기 함수
	function getCookie(cName) {
		cName = cName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cName);
		var cValue = '';
		if(start != -1){
			start += cName.length;
			var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
			cValue = cookieData.substring(start, end);
		}
		return unescape(cValue);
	}
	
	function upWrec(){
		// 로그인한 사람의 id와 글의 고유번호를 Mapping하여 만료시간을 하루(1)로 잡아 저장하는 작업
		var cName = "${user.aid}"
		var cValue = ${list.wnum};
		var cDay = 1;
		var checkEvent = getCookie(cName);
		
		if(checkEvent == cValue) {
		// 쿠키값에 cName에 해당하는 글 번호가 저장되었을 경우,
			alert('이미 추천하신 글입니다!');
		} else {
		//쿠키값이 없을 경우,
			alert('추천이 완료되었습니다!');
			setCookie(cName, cValue, cDay);
			location = "updateWrec?&wnum="+${list.wnum};
		}
	}
	
	function connect(){
		if($('.replyarea').css('display') == 'none'){
            $('.replyarea').show();
        }else{
            $('.replyarea').hide();
        }
	}
	
	function showUpdate(renum){
		if($('#commentUpdate'+renum).css('display') == 'none'){
			$('#comment'+renum).hide();
			$('#commentUpdate'+renum).show();
		}else{
			$('#comment'+renum).show();
			$('#commentUpdate'+renum).hide();
		}
	}
	
	function showClose(renum){
		$('#comment'+renum).show();
		$('#commentUpdate'+renum).hide();
	}
	
	function replydelete(renum){
		var result = confirm('정말 삭제하시겠습니까?');
		if(result) {
			alert('댓글이 삭제되었습니다.');
			$.ajax({
				url:"replydel?wnum=${list.wnum}&renum="+renum,
				success:location="writing_detail?wnum=${list.wnum}"
			})
		}
	}
	
	function replyLogin(){
		alert('댓글 작성은 로그인 후 가능합니다.');
		var result = confirm('로그인 하시겠습니까?');
		if(result) {
			$.ajax({
				success:location="login"
			});
		}
	}
	
	var submitAction = function(e) {
		e.preventDefault();
	    e.stopPropagation();
	};
	
	function replyCheck(){
		var reply = $('#replyin').val().trim();
		if(reply === ''){
			alert('내용을 입력해주세요.');
			$('form').bind('submit', submitAction);
		}else{
			$('form').unbind();
		}
	}
</script>