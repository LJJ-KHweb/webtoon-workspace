<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>

	<div class="logo">웹툰세상</div>

	<nav>
		<ul>
			<li class="active"><a href="">HOME</a></li>
			<c:choose>
				<c:when test="${ empty loginUser }">
					<li class="nav-item"><a class="nav-link"
						href="http://localhost:8088/toon/enroll.do"> 회원가입 </a></li>

					<li class="nav-item"><a class="nav-link"
						href="http://localhost:8088/toon/loginPage.do"> 로그인 </a></li>
				</c:when>
				<c:otherwise>
					<li class="nav-item"><a class="nav-link"
						href="http://localhost:8088/toon/user-profil.do"> 내 정보 </a></li>

					<li class="nav-item"><a class="nav-link" href="http://localhost:8088/toon/logout.do"> 로그아웃 </a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>

</header>