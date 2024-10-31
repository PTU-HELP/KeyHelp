<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>MBTI Test Result</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/result.css">
    <script src="${pageContext.request.contextPath}/resources/js/result.js"></script>
</head>
<body>
    <div class="container">
        <!-- Display MBTI Result -->
        <div class="result-header">
            <h1>당신의 MBTI 유형은: ${result}</h1>
            <p>당신에게 어울리는 키보드 추천</p>
        </div>

        <!-- Recommended Keyboards Section -->
        <div class="recommendations">
            <c:if test="${not empty keyboards}">
                <c:forEach var="keyboard" items="${keyboards}">
                    <div class="keyboard-card">
                        <img src="${keyboard.url}" alt="${keyboard.keyname}">
                        <div class="keyboard-details">
                            <h3>${keyboard.keyname}</h3>
                            <p>Type: ${keyboard.type}</p>
                            <a href="${keyboard.link}" target="_blank" class="buy-link">구매하러가기</a>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
            <c:if test="${empty keyboards}">
                <p class="no-recommendations">No recommendations available at this time. Please try again later.</p>
            </c:if>
        </div>
    </div>
</body>
</html>

