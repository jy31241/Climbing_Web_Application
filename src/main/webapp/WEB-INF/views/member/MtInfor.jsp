<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</style>
<!--글 작성 폼 크기에따라 사이즈 조절 -->



</head>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
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
					<a class="navbar-brand" href="#">셰르파</a>
				</div>

				<div id="navbar" class="navbar-collapse collapse">

					<ul class="nav navbar-nav navbar-right">
						<li><a href="member/list">회원목록</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">로그인</a></li>
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
			<li><a href="#">베스트 후기글</a></li>
			<li><a href="#">전체 모집글</a></li>
			<li><a href="#">전체 후기글</a></li>
			<li><a href="#">자유게시판</a></li>
			<li><a href="#">추천 명산</a></li>
		</ul>
		<ul class="nav nav-sidebar">
			<h4>머리</h4>
			<li><a href="">명산</a></li>
			<li><a href="">명산</a></li>
			<li><a href="">명산</a></li>
			<li><a href="">명산</a></li>
			<li><a href="">기타산</a></li>
		</ul>
	</div>

	<div class="container">
		<h1>산정보</h1>
		<script>
			$.ajax({
				url : 'PublicData.do',
				type : 'get',
				dataType : 'json',
				success : function(msg) {
					console.log(msg.response.body.items.item);
					var myItem = msg.response.body.items.item;

					for (var i = 0; myItem.length; i++) {
						var output = '';
						console.log(myItem.length);
						output += '<h4>' + myItem[i].mntNm + '</h4>';
						output += '<h4>' + myItem[i].subNm + '</h4>';
						document.body.innerHTML += output;
					}
				}
			});
		</script>
	</div>



	<footer class="footer">
		<div class="container">
			<p class="text-muted">
				Copyright ⓒ 2018 모두의 등산 All Rights Reserved. | <a href="#"> 이용약관
				</a>| <a href="#"> 고객샌터 </a>| <a href="#"> 전화번호:010-2222-3333 </a>|
			</p>


		</div>
	</footer>


</body>
</html>
