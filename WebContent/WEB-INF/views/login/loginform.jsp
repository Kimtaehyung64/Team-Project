<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
<meta name="description" content="">
<meta name="author" content="">
<link href="resources/css/customer_board/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="resources/css/customer_board/sb-admin-2.min.css"
	rel="stylesheet">
<style>
.container {
	font-family: 'Noto Sans KR', sans-serif;
}

.findPwd {
	display: inline-block;
}

.text-center>ul {
	padding-top: 15px;
	border-top: 1px solid #BDBDBD;
}

.text-center>ul>li {
	display: inline-grid;
	margin-left: 5px;
	margin-right: 5px;
}

.text-center>ul>li>label {
	font-size: 13px;
}

.text-center>ul>li>a {
	width: 150px;
	height: 55px;
	color: #000000;
	font-size: 14px;
	font-weight: 500;
	line-height: 55px;
	text-align: center;
	background-color: #FFFFFF;
	border: 1px solid rgb(204, 204, 204);
	border-radius: 1px;
}

.text-center>ul>li>a:hover {
	border: 1px solid #F25C05;
}

.text-center>ul>li>a>em {
	font-style: normal;
	color: #F25C05;
}

.xContainer {
	width: 333px;
	text-align: right;
	height: 0px;
}

.xContainer>button {
	border: 1px solid #D8D8D8;
	color: #000000;
	background-color: #FFFFFF;
	border-radius: 20px;
	padding: 6px 9px 6px 9px;
	text-decoration: none;
}

.xContainer>button:hover {
	border: 1px solid #F25C05;
	color: #000000;
	background-color: #FFFFFF;
	border-radius: 20px;
}

.bg-gradient-primary {
	background-image: url("resources/images/index/backgroundImageDark.jpg");
}
}
</style>
<body class="bg-gradient-primary">
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<span class="xContainer">
								<button onclick="location.href='index'">
									<i class="fas fa-times"></i>
								</button>
							</span>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인</h1>
									</div>
									<form action="loginPost" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												id="exampleInputEmail" aria-describedby="emailHelp"
												name="aid" placeholder="아이디">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												id="exampleInputPassword" name="apwd" placeholder="비밀번호">
										</div>
										<input type="button"
											class="btn btn-primary btn-user btn-block" onclick="idchk()"
											value="로그인">
									</form>
									<div class="text-center">
										<p class="small findPwd" style="color: #000000">비밀번호를
											잊으셨나요?</p>
										&nbsp;<a class="small findPwd" href="findID">비밀번호 찾기</a>
									</div>

									<div class="text-center">
										<a class="small" id="login_chk"
											style="color: red; font-size: 12px;"></a>
									</div>
								</div>
								<div class="text-center">
									<ul>
										<li><label>공인중개사세요?</label> <a href="broker"><em>꿀방</em>
												공인중개사</a></li>
										<li><label>임대인이세요?</label> <a href="lessor"><em>꿀방</em>
												임대인</a></li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
				<form id="user">
					<input type='hidden' value='${user.aid}' name='aid'> <input
						type='hidden' value='${user.apwd}' name='apwd'>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/js/login/jquery.min.js"></script>
	<script src="resources/js/login/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/js/login/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/login/sb-admin-2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

	<!-- fas-fa를 사용하기 위해서 -->
	<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
	<script>
	var newForm=$("#user");
	function idchk(){
		console.log($('#exampleInputEmail').val())
			$.ajax({
			url : "loginPost" ,
			type : "post" ,
			data : {aid : $('#exampleInputEmail').val() ,
				 	apwd : $('#exampleInputPassword').val(),
					tab : 'ajax'	 	
			},
			success : function(result) {
				try{
					tokenins();	
				}catch(err){
					//alert(err)
				}
				location = "loginPost?aid="+$('#exampleInputEmail').val()+"&apwd="+$('#exampleInputPassword').val()+"&tab=location"
			} ,
			error : function(result){
				$('#login_chk').text("가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
			}
		});
	}
	
	function submit(){
		newForm.attr('method','post');
		newForm.attr("action", "/semiProjectSpring/loginPost");
		newForm.submit();
	}
	
	function tokenins(){
	
	messaging.getToken().then(token =>{
		$.ajax({
			url : "logintokenins?aid="+$('#exampleInputEmail').val()+"&token="+token,
			type : "get" ,
			success : function(result) {
					console.log("pass");
			}
		});
	});
	
	}
	
	</script>
</body>
