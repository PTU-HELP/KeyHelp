<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
    
    <a href="${pageContext.request.contextPath}/main"> <!-- 왼쪽 상단 사이트로고 -> 메인페이지로 -->
    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="사이트 로고" class="logo">
  	</a>
  	<p class = "logo-name">키보드 백과사전</p>
</head>

<body>
    <div class="top-border"></div> <!-- 로고 밑에있는 수평선-->
    <div class="login-container"> 
    
	    <form action="${pageContext.request.contextPath}/auth/login" method="post">
			<div class="input-group">
				<!-- 아이디, 비번 입력 칸-->
				<label for="name"></label> <input type="text" id="name"
					name="name" placeholder="아이디를 입력하세요">
			</div>

			<div class="input-group">
				<label for="pw"></label> <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요">
			</div>

			<button type="submit" id="login-btn">Login</button>
			<!-- 로그인을 성공하면 메인 페이지로 이동 -->
			<p class="signup-link">
				<a href="${pageContext.request.contextPath}/auth/register">회원이 아니세요?</a>
			</p>
			

			<c:if test="${not empty error}">
	            <p style="color: red;">${error}</p>
	        </c:if>
	    </form>
	    
    </div>
</body>
</html>