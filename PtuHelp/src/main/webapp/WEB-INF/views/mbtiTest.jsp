<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI TEST</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/test.css">
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
            <label for="question1E">1. 나는 외향적인가?</label><br>
            <input type="radio" name="question1" id="question1E" value="E">
            <label for="question1E">예</label><br>
            <input type="radio" name="question1" id="question1I" value="I">
            <label for="question1I">아니오</label><br>
        </div>
        <div>
            <label for="question2S">2. 나는 직관적이기보다는 현실적인가?</label><br>
            <input type="radio" name="question2" id="question2S" value="S">
            <label for="question2S">예</label><br>
            <input type="radio" name="question2" id="question2N" value="N">
            <label for="question2N">아니오</label><br>
        </div>
        <div>
            <label for="question3T">3. 나는 논리적으로 판단하는가?</label><br>
            <input type="radio" name="question3" id="question3T" value="T">
            <label for="question3T">예</label><br>
            <input type="radio" name="question3" id="question3F" value="F">
            <label for="question3F">아니오</label><br>
        </div>
        <div>
            <label for="question4J">4. 나는 계획적인가?</label><br>
            <input type="radio" name="question4" id="question4J" value="J">
            <label for="question4J">예</label><br>
            <input type="radio" name="question4" id="question4P" value="P">
            <label for="question4P">아니오</label><br>
        </div>

        <!-- Hidden input to store the final result -->
        <input type="hidden" id="result" name="result">

        <div>
            <button type="submit">결과 제출</button>
        </div>
    </form>
</body>
</html>
