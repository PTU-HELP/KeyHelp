<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css">
    
    <a href="${pageContext.request.contextPath}/main"> <!-- 왼쪽 상단 사이트로고 -> 메인페이지로 -->
    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="사이트 로고" class="logo">
  	</a>
  	<p class = "logo-name">키보드 백과사전</p>
  	
</head>
<body>
	<div class="top-border"></div>
    
    <form action="${pageContext.request.contextPath}/auth/register" method="post">
        <div class="register-container"> <!-- 회원가입 필드 -->
        
        <h1 class="register-title">회원가입</h1>
        
        <form id="register-form"> <!-- 회원가입 정보 입력 폼 -> js 로 넘어감-->
            <input type="text" placeholder="아이디" class="register-input" id = "name" name = "name" required>
            <input type="email" placeholder="이메일" class="register-input" id = "email", name = "email" required>
            <input type="password" placeholder="비밀번호" class="register-input" id = "pw", name = "pw" required>
            <input type="password" placeholder="비밀번호 확인" class="register-input" required>
            
            <!-- 관리자 계정 or 일반 유저 계저 선택-->
            <label for="isadmin">Admin:</label>
            <select id="isadmin" name="isadmin">
                <option value="false">User</option>
                <option value="true">Admin</option>
            </select>
 
            <button type="submit" class="register-button">회원가입</button> <!-- 회원 가입 이후에 바로 설문조사 페이지로 넘어갈지 결정-->
        </form>
        <p class="login-redirect">이미 회원이신가요? <a href="${pageContext.request.contextPath}/auth/login" class="login-link">로그인</a></p> 
    </div>
        <c:if test="${not empty error}">
            <p style="color: red;">${error}</p>
        </c:if>
    </form>
</body>
</html>
