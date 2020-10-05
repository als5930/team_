<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Home</title>
<link href="${rootPath}/static/css/imag.css?var=2020-09-29-002"rel="stylesheet" />
<link href="${rootPath}/static/css/menu.css?var=2020-09-29-008"rel="stylesheet" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	var rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/main-nav.js?var=2020-09-29-001"></script>
</head>
<body>
	<h1>여행</h1>
	<nav>
		<ul id="main-menu">
			<li id="menu-home"><a>HOME</a></li>
			<li><a>세대별추천코스</a>
				<ul id="sub-menu">
					<li id="menu-two"><a>20대</a></li>
					<li id="menu-30"><a>30대</a></li>
					<li id="menu-40"><a>40대</a></li>
					<li id="menu-50"><a>50대</a></li>
				</ul></li>
			<li><a>시대별 추천코스</a>
				<ul id="sub-menu">
					<li><a>삼국 시대</a></li>
					<li><a>고려 시대</a></li>
					<li><a>조선 시대</a></li>
					<li><a>근대</a></li>
				</ul></li>
			<li><a>지역별 추천코스</a>
				<ul id="sub-menu">
					<li><a>경기 지방</a></li>
					<li><a>관동 지방</a></li>
					<li><a>호서 지방</a></li>
					<li><a>호남 지방</a></li>
					<li><a>경남 지방</a></li>
				</ul></li>
			<li><a>인기별 추천코스</a></li>
		</ul>
	</nav>

	<div class="mySlides fade">
		<img src="static/images/001.jpg" />
	</div>
	<div class="mySlides fade">
		<img src="static/images/002.jpg" />
	</div>
	<div class="mySlides fade">
		<img src="static/images/003.jpg" />

	</div>
	<br />

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

	<div class="name">인기</div>
	<div class="name">인기</div>
	<div class="name">인기</div>
<section id="main-section">
		<c:choose>
			<c:when test="${BODY == 'TEAM-LIST'}">

				<%@ include file="/WEB-INF/views/page/page-list.jsp"%>
			</c:when>
			</c:choose>
			</section>
</body>
</html>
