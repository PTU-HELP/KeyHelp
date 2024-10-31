<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>키보드 리스트</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/keyboardList.css">
    <script src="${pageContext.request.contextPath}/resources/js/keyboardList.js"></script>
    <script>
        window.contextPath = "${pageContext.request.contextPath}";  // contextPath를 전역 변수로 설정
    </script>
</head>
<body>
    <h2>Keyboard List</h2>

    <div class="navigation">
        <a href="${pageContext.request.contextPath}/" class="main-page-button">Main</a>
    </div>
    
    <div class="keyboard-container" id="keyboardContainer">
        <c:forEach var="keyboard" items="${keyboards}">
            <div class="keyboard-item" data-id="${keyboard.keyboardId}">
                <div class="keyboard-image-container">
                    <img src="${keyboard.url}" alt="${keyboard.keyname}" class="keyboard-image">
                    <p class="keyboard-rating">${keyboard.averageRating} / 5</p>
                </div>
                <div class="keyboard-info">
                    <p class="keyboard-name">${keyboard.keyname}</p>
                    <c:if test="${sessionScope.isAdmin && sessionScope.userId == keyboard.createdBy}">
                        <form action="${pageContext.request.contextPath}/keyboards/${keyboard.keyboardId}/delete" method="post" style="display: inline;">
                            <button type="submit" onclick="event.stopPropagation(); return confirm('정말 삭제하시겠습니까?');">삭제</button>
                        </form>
                    </c:if>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>