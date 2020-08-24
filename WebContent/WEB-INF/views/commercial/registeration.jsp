<%@page import="mvc.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
<!--  <link href="resources/css/commercial/style.css?after" rel="stylesheet" /> -->
<%@ include file="../include/header_menu.jsp"%>
<section class="contact-section ">
	<section class="bg-white centered w-100% my-6">
		<div id="container"
			style="width: 100%; margin: 0 auto; text-align: center; margin-left: 200px"
			class="centered mw-100">
			<h3>상가/점포 상세정보</h3>
			<div class="mw-100" id="regist">
				<form action="" method="post" style="margin-left: 200px;">
					<div class="col-md-8 mb-4 mb-md-0 h-100">
						<!-- <div class="card-body text-center"> -->
						<h3 style="text-align: left">물건 정보</h3>
						<div class="card py-4 h-100"
							style="width: 100%; border-top: 0.25rem solid #64a19d; border-bottom: none;">
							<table
								style="text-align: left; margin: 0 auto; width: 100%; height: 375px;"
								class="regist">
								<tr>
									<th>
										<h3 class="text-uppercase m-0">소재지</h3>
									<td colspan="3"><input type="text" id='zipNo' name="zipNo"
										style="margin-bottom: 10px" disabled>
										<button id="postcodify_search_button" onclick="goPopup();">검색</button>
										<br /> <input type="text" id="roadAddrPart1"
										name="roadAddrPart1" disabled style="width: 300px"> <input
										type="text" id="addrDetail" name="addrDetail"></td>
								</tr>
								<tr>
									<td><h3 class="text-uppercase m-0">매물 종류</h3></td>
									<td><select id="law" style="width: 180px; height: 30px"><option>선택</option>
											<option value="매매">매매</option>
											<option value="전세">전세</option>
											<option value="월세">월세</option>
									</select></td>
								</tr>
								<tr>
									<td><h3 class="text-uppercase m-0">전체 층</h3></td>
									<td><input type="text" id="size" name="size"></td>
									<td><h3 class="text-uppercase m-0">해당 층</h3></td>
									<td><input type="text" id="size" name="size"></td>
								</tr>
								<tr>
									<th>
										<h3 class="text-uppercase m-0">면적</h3>
									<td><input type="text" id="size" name="size"> 평</td>
									<td><h3 class="text-uppercase m-0">실면적</h3></td>
									<td><input type="text" id="size" name="size"> 평</td>
								</tr>
							</table>
							<!-- <hr class="my-4" /> -->
							<!-- <div class="small text-black-50">현두 담당</div> -->
							<!-- </div> -->
						</div>
					</div>
					<div class="col-md-8 mb-3 mb-md-0 h-100">
						<h3 style="text-align: left">상권 정보</h3>
						<div class="card py-4 h-100"
							style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
							<div class="card-body text-center h-100">
								<table
									style="text-align: left; margin: 0 auto; width: 100%; height: 200px;"
									class="regist">
									<tr>
										<th>
											<h3 class="text-uppercase m-0">특징</h3>
										<td colspan="3"><input type="text" id='feature'
											name="feature" style="width: 370px; height: 40px;"></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-8 mb-3 mb-md-0 h-100">
						<h3 style="text-align: left">가격 정보</h3>
						<div class="card py-12 h-auto"
							style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
							<div class="card-body text-center">
								<table
									style="text-align: left; margin: 0 auto; width: 810px; height: 200px;"
									class="regist">
									<tr>
										<th>
											<h3 class="text-uppercase m-0">매매가</h3>
										<td><input type="text" id='address' name="address">
										</td>
										<td><h3 class="text-uppercase m-0">전세가</h3></td>
										<td><input type="text" id='address' name="address"></td>
									</tr>
									<tr>
										<th>
											<h3 class="text-uppercase m-0">보증금</h3>
										<td><input type="text" id='address' name="address"></td>
										<td><h3 class="text-uppercase m-0">월세</h3></td>
										<td><input type="text" id='address' name="address"></td>
									</tr>
									<tr>
										<th>
											<h3 class="text-uppercase m-0">권리금</h3>
										<td><input type="text" id='address' name="address"></td>
										<td><h3 class="text-uppercase m-0">융자</h3></td>
										<td><input type="text" id='address' name="address"></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-8 mb-3 mb-md-0 h-100">
						<h3 style="text-align: left">담당자 정보</h3>
						<div class="card py-4 h-auto"
							style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
							<div class="card-body text-center">
								<table
									style="text-align: left; margin: 0 auto; width: 800px; height: 100px;"
									class="regist">
									<tr>
										<th>
											<h3 class="text-uppercase m-0">이름</h3>
										</th>
										<td><input type="text" id='managerName'
											name="managerName"></td>
										<th><h3 class="text-uppercase m-0">휴대전화번호</h3></th>
										<td><select name="phoneIdx" id="phoneIdx"
											style="height: 30px">
												<option>선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> - <input type="tel" id='managerPhone' name="managerPhone"
											style="width: 100px">- <input type="tel"
											id='managerPhone' name="managerPhone" style="width: 100px">
										</td>
									</tr>
									<tr>
										<th>
											<h3 class="text-uppercase m-0">이메일</h3>
										<td><input type="email" id="email"></td>
										<th><h3 class="text-uppercase m-0">전화</h3></th>
										<td><select name="" id="" class="stx"
											style="height: 30px">
												<option>선택</option>
												<option value="02">02</option>
												<option value="031">031</option>
												<option value="032">032</option>
												<option value="033">033</option>
												<option value="041">041</option>
												<option value="042">042</option>
												<option value="043">043</option>
												<option value="051">051</option>
												<option value="052">052</option>
												<option value="053">053</option>
												<option value="054">054</option>
												<option value="055">055</option>
												<option value="061">061</option>
												<option value="062">062</option>
												<option value="063">063</option>
												<option value="064">064</option>
												<option value="070">070</option>
												<option value="050">050</option>
										</select> - <input type="tel" id='managerPhone2' name="managerPhone2"
											style="width: 100px">- <input type="tel"
											id='managerPhone2' name="managerPhone2" style="width: 100px"></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<textarea
						style="resize: none; width: 1100px; height: 520px; margin-right: 1200px;"
						readonly class="mt-3"> 세미프로젝트는 정보통신부에서시행하는 정보통신망 이용촉진 등에 관한 법률상의 개인정보 보호제도에 따라 회원들의 개인정보 관리에 만전을 기하고 있으며 회원들이 마인애드의 모든 서비스를 안심하고 이용할수 있도록 하기 위해 항상 최선을 다하고 있습니다. 정부의 관련 법률 및 지침의 변경, 또는 마인애드의 정책 변화에 따라 개인정보보호정책은 임의로 변경될 수 있으니 사용자 보호 정책에 관심을 가지고 수시로 확인해주시기 바랍니다.

			1.회원의 개인정보 수집목적 및 이용
당사는 이용자 확인, 이용대금 결제, 상품 배송 및 통계 분석을 통한 마케팅자료로써 귀하의 취향에 맞는 최적의 서비스를 제공하기 위한 목적으로 귀하의 개인정보를 수집 이용하고 있습니다. 당사 회원으로 등록하신 모든 고객의 개인정보는 위에서 밝힌 목적 이외에는 절대로 사용될 수 없으나, 회원 개인정보의 사용 목적과 용도가 변경될 경우에 반드시 당사 회원으로 등록하신 모든 고객님께 동의를 구할 것입니다.

수집하는 개인정보 항목에 따른 구체적인 수집목적 및 이용목적은 다음과 같습니다.

* 성명, 아이디, 비밀번호, 주민등록번호 : 회원제 서비스 이용에 따른 본인 확인 절차에 이용
* 이메일주소, 전화번호 : 고지사항 전달, 불만처리 등을 위한 원활한 의사소통 경로의 확보, 새로운 서비스 및 신상품이나 이벤트 정보 등의 안내
* 은행계좌정보, 신용카드정보 : 유료정보 이용 및 상품 구매에 대한 결제
* 주소, 전화번호 : 청구서, 경품 및 쇼핑물품 배송에 대한 정확한 배송지의 확보
* 기타 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료
2.개인정보 수집 항목 및 보유, 이용기간
당사 회원을 대상으로 각종 서비스를 제공하기 위해 제공 받는 필수 회원정보는 다음과 같습니다.

① 성명
② 주민등록번호(회원의 경우)
③ 주소
④ 전화번호(일반전화와 핸드폰)
⑤ 희망ID(회원의 경우)
⑥ 비밀번호(회원의 경우)
이외에 회원가입시 고객님이 원하실 경우에 추가 정보를 선택하여 제공하실 수 있도록 되어 있으며 일부 물품 및 서비스 상품에 대한 주문 및 접수시에 고객님이 원하시는 정확한 주문 내용을 파악하여 원활한 주문 및 결제와 배송을 위하여 추가 정보를 요구하고 있습니다.

회원이 탈퇴하시거나 코센의 이용약관에 의한 회원 자격 상실의 경우에 당사가 보유한 해당 고객의 개인 정보는 지체 없이 파기됩니다.

다만, 당사는 불량 회원의 부정한 이용의 재발을 방지하기 위해, 이용계약 해지일로부터 1년간 해당 회원의 주민등록번호를 보유할 수 있습니다. 그리고 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
3.아동의 개인정보보호
당사는 "정보통신망이용 촉진 및 정보보호등에 관한 법률 제31조 제1항"에 의하여 만14세 미만의 아동의 개인정보 수집시 법정대리인의 동의를 받아야 합니다. 따라서, 당사는 만14세미만의 아동에 대해서는 개인정보를 받지 않을 뿐만 아니라, 회원으로 가입이 되지 않습니다. 단, 14세 미만의 아동은 법정대리인의 동의 및 서면 인증후에, 회원으로 가입할 수 있습니다. 또한, 만 14세 미만 아동의 법정 대리인은 아동의 개인정보의 열람, 정정, 동의 철회를 요청할 수 있으며 이런 요청이 있을 경우 당사는 지체 없이 필요한 조치를 취합니다.

4.개인정보 제공 및 공유
당사 회원의 고객 개인정보는 원칙적으로 제3기관 및 제3자에게 제공 될 수 없으며 당사가 회원님께 편의를 제공하기 위하여 특정 회사에 개인정보를 제공하고자 할 경우에는 반드시 회원님께 해당되는 합당한 절차를 통하여 동의를 구하도록 되어 있습니다. 단, 다음 경우에 한하여 고객의 동의 없이 개인정보를 제공할 수 있습니다.

① 업무상 배송업체에 배송에 필요한 최소한의 이용자정보(성명, 주소, 전화번호)를 알려주는 경우
② 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
③ 정부 기관의 공식적 요청이 있을 경우.
5.개인정보 열람,정정 및 삭제처리
회원님이 원하실 경우 언제라도 당사에서 개인정보를 열람하실 수 있으며 보관된 필수 정보를 수정하실 수 있습니다. 또한 회원가입시 요구된 필수 정보 외의 추가 정보는 언제나 열람, 수정, 삭제할 수 있습니다. 회원님의 개인정보 변경 및 삭제와 회원탈퇴는 당사의 고객센터에서 로그인(Login) 후 이용하실 수 있습니다.

6.비회원고객의 개인정보관리
① 당사는 비회원 고객 또한 물품 및 서비스 상품의 구매를 하실 수 있습니다. 당사는 비회원 주문의 경우 배송 및 대금 결제, 상품 배송에 반드시 필요한 개인정보만을 고객님께 요청하고 있습니다.
② 당사에서 비회원으로 구입을 하신 경우 비회원 고객께서 입력하신 지불인 정보 및 수령인 정보는 대금 결제 및 상품 배송에 관련한 용도 외에는 다른 어떠한 용도로도 사용되지 않습니다.
7.내부 보안 대책
당사는 고객의 개인정보를 취급할 수 있는 인력을 최소한으로 한정하고 해당 인원에게 정기적, 부정기적 보안교육을 실시하고 있습니다. 또한 고객님의 개인정보를 열람할 수 있는 시스템에는 2차 암호 체제를 갖추고 외부 네트워크로부터 철저하게 격리시켜 외부 침입 및 내부 침입에 대응하고 있습니다.

8.쿠키사용
당사는 쿠키를 사용하지 않습니다.

이상의 당사의 개인정보 보호정책은 사이트 오픈과 동시에 시행합니다.
당사는 개인정보 보호 관리책임자를 아래와 같이 지정합니다.
			</textarea>
					<br> <span style="position: relative; right: 300px"><input
						type="checkbox" id="agree" style="left: 0"> 개인정보 수집 및
						이용동의에 관한 사항을 읽었으며, 이에 동의합니다. </span>
				</form>
				<input type="submit" class="btn" id="submission" value="매물등록"
					style="position: relative; right: 150px">
			</div>
		</div>
	</section>
	<%
UserVO vo = (UserVO) session.getAttribute("user");
if(vo.getPgubun().equals("구독"))  {
%>
<%@ include file="sidemenu3.jsp"%>
<%  }else{%>
<%@ include file="sidemenu2.jsp"%> 
<%
}
%>
</section>
<%@ include file="../include/footer.jsp"%>