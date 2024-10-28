<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI 결과</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/result.css">
    <script>
        let currentIndex = 0;
        const keyboards = [
            { /* 키보드 1 정보 및 이미지 경로 */ },
            { /* 키보드 2 정보 및 이미지 경로 */ },
            { /* 키보드 3 정보 및 이미지 경로 */ }
        ];

        function showKeyboard(index) {
            currentIndex = index;
            document.getElementById('keyboardImage').src = keyboards[index].image;
            document.getElementById('keyboardInfo').innerText = keyboards[index].info;
        }

        function nextKeyboard() {
            if (currentIndex < keyboards.length - 1) {
                showKeyboard(currentIndex + 1);
            }
        }

        function previousKeyboard() {
            if (currentIndex > 0) {
                showKeyboard(currentIndex - 1);
            }
        }

        window.onload = function() {
            showKeyboard(0); // 첫 번째 키보드부터 시작
        }
    </script>
</head>
<body>
    <div class="result-container">
        <h1>MBTI 결과: ${sessionScope.result}</h1> <!-- 결과 표시 -->
        <div class="keyboard-container">
            <button class="arrow" onclick="previousKeyboard()">&#9664;</button> <!-- 왼쪽 화살표 -->
            <div class="keyboard">
                <img id="keyboardImage" src="" alt="키보드 이미지"> <!-- 키보드 이미지 -->
                <p id="keyboardInfo"></p> <!-- 키보드 정보 -->
            </div>
            <button class="arrow" onclick="nextKeyboard()">&#9654;</button> <!-- 오른쪽 화살표 -->
        </div>
    </div>
</body>
</html>
