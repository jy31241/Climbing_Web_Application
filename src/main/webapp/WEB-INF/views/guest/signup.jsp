<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap core CSS -->
<link href="${R}res/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${R}res/bootstrap/docs/examples/dashboard/dashboard.css"
	rel="stylesheet">
<link
	href="${R}res/bootstrap/docs/examples/sticky-footer-navbar/sticky-footer-navbar.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="bootstrap/docs/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->
<script src='http://code.jquery.com/jquery-1.10.2.js'></script>
<link rel="stylesheet" type="text/css"
	href="${R}res/bootstrap/dist/css/bootstrap-datepicker.css" />
<script type="text/javascript"
	src="${R}res/bootstrap/js/bootstrap-datepicker.js"></script>


<style>
@media ( min-width : 500px) {
	.container {
		width: 440px;
		border-right: 1px #b1adad dashed;
		border-left: 1px #b1adad dashed;
	}
}

@media ( min-width : 992px) {
	.container {
		width: 540px;
		border-right: 1px #b1adad dashed;
		border-left: 1px #b1adad dashed;
	}
}

@media ( min-width : 1100px) {
	.container {
		width: 740px;
		border-right: 1px #b1adad dashed;
		border-left: 1px #b1adad dashed;
	}
}

@media ( min-width : 1400px) {
	.container {
		width: 920px;
		border-right: 1px #b1adad dashed;
		border-left: 1px #b1adad dashed;
	}
}

@media ( min-width : 1700px) {
	.container {
		width: 1150px;
		border-right: 1px #b1adad dashed;
		border-left: 1px #b1adad dashed;
	}
}

.bodycol {
	background-color: #fdfdfd;
}
.signup {
	height: 200px;
	width: 600px;
	padding-left:300px;
}
</style>



</head>
<body class="bodycol">
	<header>
		<nav class="navbar navbar-inverse navbar-fixed-top">

			<div class="container-fluid">
				<div class="navbar-header">
					<!--  모바일 버전 사이즈 일 때
                              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                              <span class="sr-only">토글바</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button> 
                        -->
					<a class="navbar-brand" href="${R}">모두의 등산</a>
				</div>

				<div id="navbar" class="navbar-collapse collapse">

					<ul class="nav navbar-nav navbar-right">
						<li><a href="${R}guest/login">로그인</a></li>

					</ul>

					<form class="navbar-form navbar-left">
						<input type="text" class="form-control" style="width: 400px"
							placeholder="글 검색하기.."> <a class="btn btn-default"
							href="#" role="button" type="submit">검색</a>
					</form>

				</div>
			</div>
		</nav>
	</header>

	<div class="col-sm-2 col-md-2 sidebar">
		<ul class="nav nav-sidebar">
			<h4>머리</h4>
			<li><a href="${R}board/bestreview">베스트 후기글</a></li>
			<li><a href="${R}board/mozip">전체 모집글</a></li>
			<li><a href="${R}board/review">전체 후기글</a></li>
			<li><a href="${R}board/free">자유게시판</a></li>
			<li><a href="#">추천 명산</a></li>
		</ul>
		<ul class="nav nav-sidebar">
			<h4>명산</h4>
			<li><a href="${R}mountain/mountainreview?id=1">북한산</a></li>
			<li><a href="${R}mountain/mountainreview?id=2">설악산</a></li>
			<li><a href="${R}mountain/mountainreview?id=3">지리산</a></li>
			<li><a href="${R}mountain/mountainreview?id=4">속리산</a></li>
			<li><a href="${R}mountain/mountainreview?id=5">오대산</a></li>
			<li><a href="${R}mountain/mountainreview?id=6">계룡산</a></li>
			<li><a href="${R}mountain/mountainreview?id=7">한라산</a></li>
			<li><a href="${R}mountain/mountainreview?id=8">덕유산</a></li>
			<li><a href="${R}mountain/mountainreview?id=9">내장산</a></li>
			<li><a href="${R}mountain/mountainreview?id=10">가야산</a></li>
		</ul>
		<ul class="nav nav-sidebar">
			<h4>지역</h4>
			<li><a href="${R}board/region?id=1">서울</a></li>
			<li><a href="${R}board/region?id=2">경기/인천</a></li>
			<li><a href="${R}board/region?id=3">충청도</a></li>
			<li><a href="${R}board/region?id=4">강원도</a></li>
			<li><a href="${R}board/region?id=5">경상도</a></li>
			<li><a href="${R}board/region?id=6">전라도</a></li>
			<li><a href="${R}board/region?id=7">제주도</a></li>
		</ul>
	</div>
	
	<div class="signup container">
		<h1>회원 가입</h1>
		<form:form method="post" action="signup" id="my-form" modelAttribute="user" >
			<div align="center">
				<input type="text" name="loginId" placeholder="사용하고자 하는 아이디 " style="width:350px; padding:3px; margin-bottom:3px" />
			</div>
			<div align="center">
				<input type="password" name="passwd1" placeholder="비밀번호 입력" id="passwd1" style="width:350px; padding:3px;margin-bottom:3px" />
			</div>
			<div align="center">
				<input type="password" name="passwd2" placeholder="비밀번호 재입력" id="passwd2" style="width:350px; padding:3px;margin-bottom:3px" />
			</div>
			<div align="center">
				<input type="email" name="email" placeholder="인증가능한 이메일 " style="width:350px; padding:3px; margin-bottom:3px" />
			</div>
			<div align="center">
				<input type="text" name="nickname" placeholder="사용하고자 하는  닉네임 " style="width:350px; padding:3px; margin-bottom:3px" />
			</div>
			<div align="center">
				<button type="submit" class="btn btn-primary" style="width: 350px; padding:3px" >
				<span class="glyphicon glyphicon-ok"></span>회원가입</button>
			</div>
		</form:form>
		<span>이미 회원 이신가요?</span>
		<span><a href="${R}guest/login">로그인</a></span>
		
	</div>


	<footer class="footer">
		<div class="container">
			<p class="text-muted">
				Copyright ⓒ 2018 모두의 등산 All Rights Reserved. | <a href="#"> 이용약관
				</a>| <a href="#"> 고객센터 </a>|전화번호:010-2222-3333|
			</p>


		</div>
	</footer>


</body>
</html>