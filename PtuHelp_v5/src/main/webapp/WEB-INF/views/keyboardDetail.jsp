<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>키보드 상세</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/keyboardDetail.css">
</head>
<body>
    <div class="detail-container">
        <h2>상세 페이지</h2>
        
        <div class="keyboard-info">
            <p><strong>이름:</strong> ${keyboard.keyname}</p>
            <p><strong>타입:</strong> ${keyboard.type}</p>
            <p><strong>평점:</strong> ${keyboard.averageRating} / 5</p>
            <div class="keyboard-image-container">
                <p><strong>이미지</strong></p>
                <img src="${keyboard.url}" alt="${keyboard.keyname}" class="keyboard-image">
            </div>
        </div>

        <h3>평점 추가</h3>
        <form action="${pageContext.request.contextPath}/keyboards/${keyboard.keyboardId}/rate" method="post" class="rating-form">
            <label for="rating">평점 (1-5):</label>
            <input type="number" id="rating" name="rating" min="1" max="5" required>
            <button type="submit">평점 추가</button>
        </form>

        <a href="${pageContext.request.contextPath}/keyboards" class="back-button">목록으로 돌아가기</a>
    </div>
</body>
</html>
