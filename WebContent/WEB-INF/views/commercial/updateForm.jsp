<%@page import="mvc.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
<!--  <link href="resources/css/commercial/style.css?after" rel="stylesheet" /> -->
<%@ include file="../include/header_menu.jsp"%>
<section class="contact-section ">
	<section class="bg-white centered w-100% my-6">
		<h3></h3>
		<div id="container"
			style="width: 100%; margin: 0 auto; text-align: center; margin-left: 200px"
			class="centered mw-100">
			<form action="updateCommercial">
			<div class="mw-100" id="regist">
				<div class="col-md-8 mb-4 mb-md-0 h-100">
					<!-- <div class="card-body text-center"> -->
					<h3>물건 정보</h3>
					<div class="card py-4 h-100"
						style="width: 100%; border-top: 0.25rem solid #64a19d; border-bottom: none;">
						<table
							style="text-align: left; margin: 0 auto; width: 100%; height: 375px;"
							class="regist">
							<tr>
								<td><h3 class="text-uppercase m-0">매물 종류</h3>
									<input type="hidden" id="data" value=${result.tradtpcd}></td>
								<td><select name="tradtpcd" id=tradtpcd style="weight:200px;height:50px">
										<option value="매매">매매</option>
										<option value="전세">전세</option>
										<option value="월세">월세</option>
								</select></td>
	            					<th><h3 class="text-uppercase m-0">입주 가능일</h3></th>
	            					<td colspan="3">
	            						<div class="seleted-div">
	            						<span class="square move-in  false" onclick="clicksub(0,'move-in')">즉시입주</span> 
	            						<span class="square move-in  false" onclick="clicksub(1,'move-in')">날짜협의 </span>
	            						</div>
	            					</td>
	            				</tr>
							<tr>
								<th>
									<h3 class="text-uppercase m-0">매매가</h3>
								<td><input type="text" id='sale' name="sale">
								</td>
								<td><h3 class="text-uppercase m-0">전세가</h3></td>
								<td><input type="text" id='junsae' name="'junsae'" value=""></td>
							</tr>
							<tr>
								<th>
									<h3 class="text-uppercase m-0">보증금</h3>
								<td><input type="text" id='deposit' name="deposit" value=""></td>
								<td><h3 class="text-uppercase m-0">월세</h3></td>
								<td><input type="text" id='monthly' name="monthly" value=""></td>
							</tr>
							
						</table>
					</div>
				</div>
				<div class="col-md-8 mb-3 mb-md-0 h-100">
					<h3 >상세 설명</h3>
					<div class="card py-4 h-100"
						style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
						<div class="card-body text-center h-100">
							<table
								style="text-align: left; margin: 0 auto; width: 100%; height: 100%;"
								class="regist">
								<tr>
									<th>
									<td colspan="3"><textarea   rows="20" cols="150" id="description" maxlength="100" placeholder="
	            						${result.pdescription}
	            						"></textarea></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 mb-3 mb-md-0 h-100">
				<h3>옵션 수정</h3>
				<div class="card py-4 h-auto"
					style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<div class="card-body text-center">
					<table
								style="text-align: left; margin: 0 auto; width: 100%; height: 200px;"
								class="regist">
								<tr>
	            					<td colspan="4">
	            						<div class="seleted-div">
			            					<span class="square option false" onclick="clicksub(0,'option')">에어컨</span>
			            					<span class="square option false" onclick="clicksub(1,'option')">세탁기</span>
			            					<span class="square option false" onclick="clicksub(2,'option')">침대</span>
			            					<span class="square option false" onclick="clicksub(3,'option')">책상</span>
			            					<span class="square option false" onclick="clicksub(4,'option')">옷장</span>
			            					<span class="square option false" onclick="clicksub(5,'option')">TV</span>
			            					<span class="square option false" onclick="clicksub(6,'option')">신발장</span>
			            					<span class="square option false" onclick="clicksub(7,'option')">냉장고</span>
			            					<span class="square option false" onclick="clicksub(8,'option')">가스레인지</span>
			            					<span class="square option false" onclick="clicksub(9,'option')">인덕션</span>
			            					<span class="square option false" onclick="clicksub(10,'option')">전자레인지</span>
			            					<span class="square option false" onclick="clicksub(11,'option')">전자도어락</span>
			            					<span class="square option false" onclick="clicksub(12,'option')">비데</span>
	            						</div>
	            					</td>
	            				</tr>
								<tr>
									<th> </th>
									<th colspan="2"><input type="submit" class="btn bg-blue" value="수정하기" style="width:100%;height:100%"></th>
									<th> </th>
								</tr>
							</table>
					</div>
				</div>
			</div>
			</form>
		</div>
	</section>
</section>
<script>
	$(function() {
		$("#tradtpcd").val($("#data").val())
		if($("#data").val() === "매매"){
			$("#monthly").attr("disabled", "true")
			$("#deposit").attr("disabled", "true")
			$("#junsae").attr("disabled", "true")
			$("#sale").removeAttr("disabled")
			$("#monthly").val(" ")
			$("#deposit").val(" ")
			$("#junsae").val(" ")
			$("#sale").val(" ")
			$("#sale").val(${result.prc})
		}else if($("#data").val() === "전세"){
			$("#monthly").attr("disabled", "true")
			$("#deposit").attr("disabled", "true")
			$("#junsae").removeAttr("disabled")
			$("#sale").attr("disabled", "true")
			$("#monthly").val(" ")
			$("#deposit").val(" ")
			$("#junsae").val(" ")
			$("#sale").val(" ")
			$("#junsae").val(${result.prc})
		}else if($("#data").val()==="월세"){
			$("#monthly").removeAttr("disabled")
			$("#deposit").removeAttr("disabled")
			$("#junsae").attr("disabled", "true")
			$("#sale").attr("disabled", "true")
			$("#monthly").val(" ")
			$("#deposit").val(" ")
			$("#junsae").val(" ")
			$("#sale").val(" ")
			$("#deposit").val(${result.prc})
			$("#monthly").val(${result.prc})
		}
		$("#tradtpcd").change(function(){
			if($(this).val() === "매매"){
				$("#monthly").attr("disabled", "true")
				$("#deposit").attr("disabled", "true")
				$("#junsae").attr("disabled", "true")
				$("#sale").removeAttr("disabled")
				$("#monthly").val(" ")
				$("#deposit").val(" ")
				$("#junsae").val(" ")
				$("#sale").val(" ")
				$("#sale").val(${result.prc})
			}else if($(this).val() === "전세"){
				$("#monthly").attr("disabled", "true")
				$("#deposit").attr("disabled", "true")
				$("#junsae").removeAttr("disabled")
				$("#sale").attr("disabled", "true")
				$("#monthly").val(" ")
				$("#deposit").val(" ")
				$("#junsae").val(" ")
				$("#sale").val(" ")
				$("#junsae").val(${result.prc})
			}else if($(this).val()==="월세"){
				$("#monthly").removeAttr("disabled")
				$("#deposit").removeAttr("disabled")
				$("#junsae").attr("disabled", "true")
				$("#sale").attr("disabled", "true")
				$("#monthly").val(" ")
				$("#deposit").val(" ")
				$("#junsae").val(" ")
				$("#sale").val(" ")
				$("#deposit").val(${result.prc})
				$("#monthly").val(${result.prc})
			}
		})
		
	})
</script>
<%@ include file="../include/footer.jsp"%>