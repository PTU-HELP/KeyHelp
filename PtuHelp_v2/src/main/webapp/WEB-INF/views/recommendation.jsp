<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Keyboard Recommendations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .keyboard-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            background-color: #fafafa;
        }
        .keyboard-card img {
            width: 150px;
            height: auto;
            border-radius: 4px;
            margin-right: 20px;
        }
        .keyboard-details {
            flex-grow: 1;
        }
        .keyboard-details h3 {
            margin: 0;
            font-size: 1.2em;
            color: #007BFF;
        }
        .keyboard-details p {
            margin: 5px 0;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>당신에게 어울리는 키보드 추천</h2>
        <c:if test="${not empty keyboards}">
            <c:forEach var="keyboard" items="${keyboards}">
                <div class="keyboard-card">
                    <img src="${keyboard.url}" alt="${keyboard.keyname}">
                    <div class="keyboard-details">
                        <h3>${keyboard.keyname}</h3>
                        <p>Type: ${keyboard.type}</p>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${empty keyboards}">
            <p>No recommendations available at this time. Please try again later.</p>
        </c:if>
    </div>
</body>
</html>