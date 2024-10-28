<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI 결과</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/result.css">
</head>
<body>
    <h1>MBTI 테스트 결과</h1>
    <p>당신의 MBTI 유형은: ${result} 입니다.</p>
    
    <div class="product-slider">
        <div class="product-list">
            <%
                // 예시 데이터
                String[] products = {"Logitech G PRO TKL", "Logitech G915 TKL (화이트)", "Logitech G915 TKL (카본)", "Corsair K70 MAX"};
                String[] sizes = {"352x150mm", "368x150mm", "368x150mm", "442x166mm"};
                String[] colors = {"핑크", "화이트", "카본", "블랙"};
                String[] switches = {"택타일", "택타일", "택타일", "택타일"};
                int[] prices = {279000, 259000, 259000, 319000};

                for (int i = 0; i < products.length; i++) {
            %>
            <div class="product">
                <div class="overlay"></div>
                <div class="product-number"><%= (i + 1) %></div>
                <img src="product<%= (i + 1) %>.png" alt="<%= products[i] %>">
                <div class="product-info">
                    <h2><%= products[i] %></h2>
                </div>
                <div class="product-details1">
                    <p>크기: <%= sizes[i] %></p>
                    <p>색상: <%= colors[i] %></p>
                    <p>스위치: <%= switches[i] %></p>
                    <p>가격: <%= prices[i] %>원</p>
                </div>
                <div class="product-details3">
                    <a href="#">구매하러가기</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <button class="arrow left-arrow">←</button>
        <button class="arrow right-arrow">→</button>
    </div>
    
    <script>
    	var contextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/resources/js/result.js"></script>
    
    
    
</body>
</html>
