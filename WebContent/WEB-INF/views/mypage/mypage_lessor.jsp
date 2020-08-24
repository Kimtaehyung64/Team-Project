<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="resources/css/myPage/th_bootstrap.css?after" rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<%@ include file="../include/header_MyPageSubMenu.jsp"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
.modal {
	background-color: rgba(0, 0, 0, 0.7);
	overflow-x: hidden;
    overflow-y: auto;
	opacity: 1;
	text-align: center;
    padding: 0!important;
    z-index: 1050;
    outline: 0;
    position:fixed; 
    top:50%; 
    left:50%; 
    transform: translate(-50%,-50%);
}
    
.modal-content {
    background-color: #fefefe;
    padding: 20px;
    border: 1px solid #888;
    display: inline-block;
    margin-top: 10%;
    width: 450px;                          
}

.th_li {
	width: 200px;
}

.table-hover2 tbody tr:hover {
	background-color: rgba(0, 0, 0, 0.075);
}

#myModal2{
	width: 700px;
	height: 260px;
}

#modal-dialog{
    display: inline-block;
    text-align: left;
    vertical-align: middle;
    width: 600px;
    margin: 30px auto;
    position: relative;
}
.modal a.close-modal {
    top: 0px;
    right: 0px;
}
.mypagesection{
	font-family: 'Noto Sans KR',sans-serif;
}
.nav-link{
	padding-top: 15px;
    padding-left: 20px;
    padding-right: 20px;
}
.card-header{
	background-color: #FFFFFF;
	text-align: left;
	font-weight: 500;
	font-size: 20px;
}

.btn.btn-success{
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #D8D8D8;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
    padding: 5px 15px 5px 15px;
    font-weight: bold;
    border-radius: 1px;
    float: left;
    margin-bottom: 20px;
}

.btn.btn-success:hover{
	border: 2px solid #FD7400;
	background-color: #FFFFFF;
	color: #000000;
	font-weight: bold;
	border-radius: 1px;
}
.btn.btn-success:focus{
	box-shadow: 0 0 0 0.2rem #FD7400;
}
.card-text{
	text-align: left;
}
body{
	background-color: #FBF8EF;
}
.card-text > em{
	color: #FD7400;
	font-style: normal;
}
#mypage_posts{
	padding-top: 0px;
}
#customers{
	background-color: #FFFFFF;
	border-left: 2px solid #F2B90C;
	border-right: 2px solid #F2B90C;
	border-bottom: 2px solid #F2B90C;
}
#CommunityTab{
	border: 2px solid #F2B90C;
}
#MypageTab{
	border-bottom: 2px solid #F2B90C;
}
#managementTable{
	border: 2px solid #F2B90C;
}
.pwdCheck{
	width: 100%;
	height: 40px;
	background-color: #FFFFFF;
    border: 2px solid #000000;
    color: #000000;
    line-height: 3px;
    font-size: 15px;
}

.buttonSet{
	margin-top: 10px;
}
.subtopma {
	margin-bottom: 10px;
}
.modalInfo {
	color: #9B9B9B;
	font-weight: inherit;
    font-family: -webkit-body;
    letter-spacing: normal;
    font-size: 15px;
}
.modalInfo > em{
	font-style: normal;
	color: #F25C05;
}
.MiGuDok{
	font-size: 22px;
	color: #000000;
}
.MiGuDok > em{
	font-style: normal;
	color: red;
}
</style>
<section class="contact-section container topma mypagesection"> 
	<div id="my_pop" class="modal">
		<div class="modal-content">
		</div>
	</div>
	<div id="myTabContent" class="tab-content" >
		<div class="tab-pane  th_page_space  fade show active row "
			style="text-align: center; margin-top: 30px;" id="myinformation">
			<%@ include file="../mypage/myinformation.jsp"%>
		</div>
		
		<div class="tab-pane fade th_page_space" style="text-align: center;" id="myposts">
			<ul class="nav nav-tabs">
				<li class="th_li_sub" id="CommunityTab"><a class="th_nav-link active th_atwi" id="myposts_1"
					data-toggle="tab" href="#mypage_posts">커뮤니티</a></li>
				<li class="th_li_sub" id="MypageTab"><a class="th_nav-link th_atwi " id="mycustomer_1"
					data-toggle="tab" href="#mypage_posts">고객센터 문의</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane  th_page_space  fade show active " style="text-align: center;" id="mypage_posts"></div>
			</div>
		</div>
		
		<div class="tab-pane fade th_page_space" style="text-align: center;" id="myproduct">
			<%@ include file="../mypage/include/infor_management.jsp"%>
		</div>
		
		<div class="tab-pane fade th_page_space" id="myauction">
<%--         <%@ include file="../auction/auctionmypage.jsp"%> --%>
		</div>
	</div>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#memberdetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "inforDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
		});
		
		$('#logindetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "loginDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
						,anum : "${vo.anum }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
		});
		
		$('#paymentdetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "Pay_Detail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
					,anum : "${vo.anum }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
			
		});
		
		$('#myposts_1').click(function() {
			$.ajax({
				url : "infor_posts" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		$('#mycustomer_1').click(function() {
			$.ajax({
				url : "infor_customer" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		$('#member_secession_btn').click(function() {
			
			$.ajax({
				url : "member_secession" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
			$('#my_pop').show();
		});
		
		$('#my_pop_btn').click(function(){
			
			function close_pop(flag) {
				$('#my_pop').hide();
			}
			
		});
		
		// 페이지 이동을 위한 자바스크립트

		$('#selectmyposts').click(function() {
			$.ajax({
				url : "infor_posts" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		$('#selectmyproduct').click(function() {
			$.ajax({
				url : "infor_product" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#myproduct').html(result);
				}
			});
		});
		
		$('#selectmyauction').click(function() {
			$.ajax({
				url : "auction_myinfo" ,
				type : "post" ,
				data : {aid : "${vo.aid}"},
				success : function(result) {
  					$('#myauction').html(result);
				}
			});
		});
		
		// 탭 이동에 따른 css변경
		$('#myposts_1').click(function() {
			$('#CommunityTab').css({
				border: '2px solid #F2B90C'
			})
			$('#MypageTab').css({
				'border-top': '0px',
				'border-left': '0px',
				'border-right': '0px',
				'border-bottom': '2px solid #F2B90C'
			})
		});

		$('#mycustomer_1').click(function() {
			$('#MypageTab').css({
				border: '2px solid #F2B90C'
			})
			$('#CommunityTab').css({
				'border-top': '0px',
				'border-left': '0px',
				'border-right': '0px',
				'border-bottom': '2px solid #F2B90C'
			})
		});
		
		/* active 클래스가 생겨 페이지 이동에 제한이 걸리는 부분을 해결 */
		$('#selectmyinfo').click(function() {
			$(this).attr("class", "");
		});
		$('#selectmyproduct').click(function() {
			$(this).attr("class", "");
		});
		$('#selectmyposts').click(function() {
			$(this).attr("class", "");
		});
		$('#selectmyauction').click(function() {
			$(this).attr("class", "");
		});
	});
</script>

<%@ include file="../include/footer.jsp"%>



