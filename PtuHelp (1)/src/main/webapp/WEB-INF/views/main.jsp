<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <div class="login-links">
        <a href="#" class="login-a">Login</a>
        <a href="#" class="login-Membership">Membership</a>
    </div>
    
    <a href="${pageContext.request.contextPath}/auth/logout">로그아웃</a>
    <br><br>
    <a href="${pageContext.request.contextPath}/mbti/test">MBTI 검사 시작하기</a>
</body>
</html>