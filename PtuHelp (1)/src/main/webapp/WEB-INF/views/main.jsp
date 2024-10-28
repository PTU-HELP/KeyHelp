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
    <h1>메인 페이지</h1>
    <p>환영합니다, ${sessionScope.username}님!</p>
    <a href="${pageContext.request.contextPath}/auth/logout">로그아웃</a>
    <br><br>
    <a href="${pageContext.request.contextPath}/mbti/test">MBTI 검사 시작하기</a>
</body>
</html>