<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키보드 추천</title>
    <link type="text/css" rel="stylesheet" href="keyboardRecommendPage.css">
    <script src="functionsKRPHead.js"></script>
</head>
<body>
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

    <script src="functionsKRPBody.js"></script>
    <script src="pageTopLOKRP.js"></script>
</body>
</html>
