<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가입 완료</title>
<link type="text/css" rel="stylesheet" href="signincomPage.css">
<script src="functionsSCP.js"></script>
</head>
<body>
<div class="content">
  <img src="<%= request.getContextPath() %>/check.png" alt="Check">
  <p>가입이 완료되었습니다.</p>
  <button class="button" onclick="location.href='<%= request.getContextPath() %>/mainPage.jsp'">Home</button>
  <button class="button blue-button" onclick="location.href='<%= request.getContextPath() %>/loginPage.jsp'">Login</button>
</div>
<script src="<%= request.getContextPath() %>/pageTopSCP.js"></script>
</body>
</html>
