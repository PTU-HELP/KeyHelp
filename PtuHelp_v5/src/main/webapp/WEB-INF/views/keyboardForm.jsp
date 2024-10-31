<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/keyboardForm.css">
    <title>키보드 등록</title>
</head>
<body>
    <h2>키보드 정보 등록</h2>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/keyboards/upload" method="post" enctype="multipart/form-data">
        <label for="type">키보드 타입:</label>
        <input type="text" id="type" name="type" required /><br><br>

        <label for="name">키보드 이름:</label>
        <input type="text" id="name" name="name" required /><br><br>

        <label for="image">키보드 이미지:</label>
        <input type="file" id="image" name="image" accept="image/*" required /><br><br>

        <button type="submit">키보드 업로드</button>
    </form>
</body>
</html>