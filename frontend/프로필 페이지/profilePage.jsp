<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키보드 백과사전</title>
    <link rel="stylesheet" type="text/css" href="profilePage.css">
    <script src="functions.js"></script>
</head>
<body>
    <section>
        <div class="message1">
            <p>FPS 게임을</p>
            <p>좋아하는</p>
            <p class="userName">그루브<span class="name"> 님은</span></p>
        </div>

        <div class="message2">
            <p>쌍문동 총잡이</p>
        </div>
        <img src="GunMan.png" alt="총잡이 이미지" class="gunman">

        <div class="login-container">
            <form id="login-form">
                <h1>회원정보 수정</h1>
                <div class="input-group">
                    <input type="text" id="username" name="username" placeholder="아이디를 입력하세요" autocomplete="username">
                </div>

                <div class="input-group">
                    <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" autocomplete="current-password">
                </div>

                <div class="input-group">
                    <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력하세요">
                </div>

                <button type="submit" onclick="checkEdit()">수정</button>
            </form>
        </div>
    </section>
    <script src="pageTopLOPP.js"></script>
</body>
</html>
