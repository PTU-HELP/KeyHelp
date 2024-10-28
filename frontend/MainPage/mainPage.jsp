<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card Glow Effect</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/mainPage.css">
    <script src="<%= request.getContextPath() %>/functionsMPHead.js"></script>
</head>

<body>
    <div class="login-links">
        <a href="<%= request.getContextPath() %>/loginPage.jsp" class="login-a">Login</a>
        <a href="<%= request.getContextPath() %>/profilePage.jsp" class="login-Membership">Membership</a>
    </div>

    <header>
        <h2 id="main-title">키보드 백과사전<span id="main-title" class="dot">.</span></h2>
    </header>
    
    <main>
        <div class="image-container">
            <img src="<%= request.getContextPath() %>/images/키보드상단.png" alt="키보드 상단" class="image-top" id="imageTop">
            <img src="<%= request.getContextPath() %>/images/키보드하단.png" alt="키보드 하단" class="image-bottom" id="imageBottom">
            <img src="<%= request.getContextPath() %>/images/키보드완성.png" alt="키보드 완성" class="image-complete" id="imageComplete">
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
                        <a href="<%= request.getContextPath() %>/listPage.jsp" type="button">키보드 리스트 보러가기</a> <!-- 키보드 리스트로 넘어감 -->
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
                        <a href="<%= request.getContextPath() %>/keyboardRecommendPage.jsp" type="button">키보드 추천받아보기</a> <!-- 로그인이 되있는 상태로 누르면 바로 키보드 추천 페이지로 넘어감-->
                    </div>
                </div>
            </div>
        </div>
    </footer>
  
    <script src="<%= request.getContextPath() %>/functionsMPBody1.js"></script>
    <!-- font awesome icon kit here  -->
    <script src="https://kit.fontawesome.com/95a02bd20d.js"></script>
    <script src="<%= request.getContextPath() %>/functionsMPBody2.js"></script>
    
</body>
</html>
