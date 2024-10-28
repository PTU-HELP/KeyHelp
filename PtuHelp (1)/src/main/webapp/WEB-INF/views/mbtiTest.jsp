<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI TEST</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script>
        function collectResults() {
            let result = '';
            let form = document.getElementById("mbtiForm");

            // 각 질문의 답을 result에 추가합니다.
            let questions = ['question1', 'question2', 'question3', 'question4'];
            questions.forEach(function (question) {
                let answer = form.querySelector('input[name="' + question + '"]:checked');
                if (answer) {
                    result += answer.value;
                }
            });

            // result 값을 hidden input에 설정합니다.
            document.getElementById("result").value = result;
        }
    </script>
</head>
<body>
    <h1>MBTI 테스트</h1>
    <p>안녕하세요, ${sessionScope.name}님! MBTI 테스트를 시작해보세요.</p>
    <form id="mbtiForm" method="post" action="${pageContext.request.contextPath}/mbti/submit" onsubmit="collectResults()">
        <div>
            <label>1. 나는 외향적인가?</label><br>
            <input type="radio" name="question1" value="E"> 예 <br>
            <input type="radio" name="question1" value="I"> 아니오 <br>
        </div>
        <div>
            <label>2. 나는 직관적이기보다는 현실적인가?</label><br>
            <input type="radio" name="question2" value="S"> 예 <br>
            <input type="radio" name="question2" value="N"> 아니오 <br>
        </div>
        <div>
            <label>3. 나는 논리적으로 판단하는가?</label><br>
            <input type="radio" name="question3" value="T"> 예 <br>
            <input type="radio" name="question3" value="F"> 아니오 <br>
        </div>
        <div>
            <label>4. 나는 계획적인가?</label><br>
            <input type="radio" name="question4" value="J"> 예 <br>
            <input type="radio" name="question4" value="P"> 아니오 <br>
        </div>

        <!-- Hidden input to store the final result -->
        <input type="hidden" id="result" name="result">

        <div>
            <button type="submit">결과 제출</button>
        </div>
    </form>
</body>
</html>