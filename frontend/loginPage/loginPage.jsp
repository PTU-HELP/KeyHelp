<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="loginPage.css">
  <script src="loginPage.js"></script>
</head>
<body>
  <div class="login-container">
    <form id="login-form" action="loginProcess.jsp" method="post">
      <h1>Login</h1>
      <div class="input-group">
        <input type="text" id="username" name="username" placeholder="아이디를 입력하세요" required>
      </div>
      <div class="input-group">
        <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
      </div>
      <button type="submit" id="login-btn">Login</button>
      <p class="signup-link">회원이 아니세요? <a href="signup.jsp">회원가입</a></p>
    </form>
  </div>
  <script src="pageTopLIP.js"></script>
</body>
</html>
