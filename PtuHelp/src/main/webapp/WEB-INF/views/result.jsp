<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI 결과</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>MBTI 테스트 결과</h1>
    <p>당신의 MBTI 유형은: ${result} 입니다.</p>
    <a href="${pageContext.request.contextPath}/main">메인으로 돌아가기</a>
</body>
</html>
