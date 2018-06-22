<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="${R}res/common.css">

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
	
<script src="${R}res/common.js"></script>

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
						<li><a href="${R}user/mypage">마이페이지</a></li>
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
			<li><a href="${R}board/bestreview">베스트 후기글</a></li>
			<li><a href="${R}board/mozip">전체 모집글</a></li>
			<li><a href="${R}board/review">전체 후기글</a></li>
			<li><a href="#">자유게시판</a></li>
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
			<li><a href="#">서울</a></li>
			<li><a href="#">경기/인천</a></li>
			<li><a href="#">충청도</a></li>
			<li><a href="#">강원도</a></li>
			<li><a href="#">경상도</a></li>
			<li><a href="#">전라도</a></li>
			<li><a href="#">제주도</a></li>
		</ul>
	</div>

	<div class="container">
		<a href="${R}board/review"
			onclick="clickcr(this, 'btp.album', '', '', event);"
			class="filter-50 m-tcol-c"><img
			src="https://cafe.pstatic.net/cafe4/ico-list-album.gif" width="15"
			height="15" alt="앨범형">후기게시판</a> &nbsp; <a href="${R}board/mozip"
			onclick="clickcr(this, 'btp.board', '', '', event);" class="m-tcol-c"><img
			src="https://cafe.pstatic.net/cafe4/ico-list-board.gif" width="15"
			height="15" alt="게시판형">모집게시판</a>

		<h1>산 모집게시판</h1>
		<table class="table table-bordered mt5">
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>작성자</th>
					<th>모집인원</th>
					<th>작성일</th>
					<th>추천수</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach var="board" items="${ boards }">
					<tr data-url="mozipcontent?id=${ board.id }">
						<c:if test="${ board.boardType_id ==1 }">
							<!-- 보드타입이 1인것만 출력(모집게시판이 보드타입1) -->
							<td>${ board.id }</td>
							<td>${ board.title }</td>
							<td>${ board.user_id }</td>
							<td>${ board.nowperson } / ${ board.person } </td>
							<td>${ board.createdDate }</td>
							<td>${ board.recommend }</td>
							<td>${ board.views }</td>
					</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>

		<a class="btn btn-default" href="${R}board/mozipwrite" role="button">글
			작성하기</a>
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
