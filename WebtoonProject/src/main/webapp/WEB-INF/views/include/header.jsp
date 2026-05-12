<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>

    <nav class="navbar navbar-expand-lg bg-white">

        <div class="container">

            <a class="navbar-brand"
               href="<%=request.getContextPath()%>">

                웹툰세상

            </a>

            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav">

                <span class="navbar-toggler-icon"></span>

            </button>

            <div class="collapse navbar-collapse"
                 id="navbarNav">

                <ul class="navbar-nav ms-auto">

                    <li class="nav-item">
                        <a class="nav-link active"
                          href="">

                            HOME

                        </a>
                    </li>
					<c:choose>
						<c:when test="${ empty loginUser }">
                    <li class="nav-item">
                        <a class="nav-link"
                           href="http://localhost:8088/toon/enroll.do">

                            회원가입

                        </a>
                    </li>
				
                    <li class="nav-item">
                        <a class="nav-link"
                           href="http://localhost:8088/toon/loginPage.do">

                            로그인

                        </a>
                    </li>
					</c:when>
					<c:otherwise>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8088/toon/user-profil.do">

                            내 정보

                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">

                            로그아웃

                        </a>
                    </li>
				</c:otherwise>
				</c:choose>
				
                </ul>

            </div>

        </div>

    </nav>

</header>