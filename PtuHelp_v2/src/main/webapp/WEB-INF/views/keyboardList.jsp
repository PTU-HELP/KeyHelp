
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Keyboard List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/keyboardList.css">
    <script src="${pageContext.request.contextPath}/resources/js/keyboardList.js"></script>
</head>
<body>
    <h2>Keyboard List</h2>
    <div class="keyboard-container">
        <c:forEach var="keyboard" items="${keyboards}">
            <div class="keyboard-item" onclick="goToDetail(${keyboard.keyboardId})">
                <!-- 이미지와 텍스트를 분리할 수 있도록 구조 변경 -->
                <div class="keyboard-image-container">
                    <img src="${keyboard.url}" alt="${keyboard.keyname}" class="keyboard-image">
                    <p class="keyboard-rating">${keyboard.averageRating} / 5</p> <!-- 평점 표시 -->
                </div>
                <div class="keyboard-info">
                    <p class="keyboard-name">${keyboard.keyname}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>

