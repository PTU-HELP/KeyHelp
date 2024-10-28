<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

  
</head>
<body>

	

	<div class="login-links">
        <!-- <a href="${pageContext.request.contextPath}/auth/login" class="login-a">Login</a>
        <a href="${pageContext.request.contextPath}/auth/register" class="login-Membership">Membership</a> -->
        <c:choose>
				<c:when test="${not empty sessionScope.username}">
					<!-- 로그아웃 버튼 -->
					<a href="${pageContext.request.contextPath}/auth/logout">로그아웃</a>
					<a href="${pageContext.request.contextPath}/auth/profile">프로필</a>
				</c:when>
				<c:otherwise>
					<!-- 로그인 버튼 -->
					<a href="${pageContext.request.contextPath}/auth/login">로그인</a>
					<a href="${pageContext.request.contextPath}/auth/register">회원가입</a>
				</c:otherwise>
			</c:choose>
        
    </div>
    
   <header>
        <h2 id="main-title">키보드 백과사전<span id="main-title", class="dot">.</span></h2>
   </header>
    
    <main>
        <div class="image-container">
            <img src="${pageContext.request.contextPath}/resources/images/키보드상단.png" alt="키보드 상단" class="image-top" id="imageTop">
            <img src="${pageContext.request.contextPath}/resources/images/키보드하단.png" alt="키보드 하단" class="image-bottom" id="imageBottom">
            <img src="${pageContext.request.contextPath}/resources/images/키보드완성.png" alt="키보드 완성" class="image-complete" id="imageComplete">
        </div>
    </main>

    <footer>
        <div class="container">
            <div class="card">
                <div class="face face1">
                    <div class="content">
                        <i class="fab fa-windows"></i>
                        <h3>키보드 백과</h3>
                    </div>
                </div>
                <div class="face face2">
                    <div class="content">
                        <p>로그인 없이 키보드 리스트를 볼 수 있습니다</p>
                        <a href="#" type="button">키보드 리스트 보러가기</a> <!-- 키보드 리스트로 넘어감 -->
                    </div>
                </div>
            </div>
           
            <div class="card">
                <div class="face face1">
                    <div class="content">
                        <i class="fab fa-android"></i>
                        <h3>키보드 추천</h3>
                    </div>
                </div>
                <div class="face face2">
                    <div class="content">
                        <p>당신에게 어울리는 키보드를 추천 해줄게요</p>
                        <a href="${pageContext.request.contextPath}/mbti/test" type="button">키보드 추천받아보기</a> <!-- 로그인이 되있는 상태로 누르면 바로 키보드 추천 페이지로 넘어감-->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="https://kit.fontawesome.com/95a02bd20d.js"></script>
    <script src= "${pageContext.request.contextPath}/resources/js/main.js"></script>
   
</body>
</html>