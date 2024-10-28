<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h2>회원가입</h2>
    <form action="${pageContext.request.contextPath}/auth/register" method="post">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div>
            <label for="pw">Password:</label>
            <input type="password" id="pw" name="pw" required>
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div>
            <label for="isadmin">Admin:</label>
            <select id="isadmin" name="isadmin">
                <option value="false">User</option>
                <option value="true">Admin</option>
            </select>
        </div>
        <div>
            <button type="submit">회원가입</button>
        </div>
        <c:if test="${not empty error}">
            <p style="color: red;">${error}</p>
        </c:if>
    </form>
</body>
</html>
