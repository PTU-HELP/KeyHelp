<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI TEST</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mbtitest.css">
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
            <label>1. 키보드 타이핑을 할 때 키보드가 조용하길 바라나요?</label><br>
            <input type="radio" name="question1" value="E"> 아니요 <br>
            <input type="radio" name="question1" value="I"> 예 <br>
        </div>
        <div>
            <label>2. 키보드를 꾸미는 걸 좋아하나요?</label><br>
            <input type="radio" name="question2" value="S"> 아니요 <br>
            <input type="radio" name="question2" value="N"> 예 <br>
        </div>
        <div>
            <label>3. 키보드를 주로 게임할 때 사용하나요?</label><br>
            <input type="radio" name="question3" value="T"> 아니요 <br>
            <input type="radio" name="question3" value="F"> 예 <br>
        </div>
        <div>
            <label>4. 20만원 이상의 키보드를 사실 의향이 있나요?</label><br>
            <input type="radio" name="question4" value="J"> 아니요 <br>
            <input type="radio" name="question4" value="P"> 예 <br>
        </div>

        <!-- Hidden input to store the final result -->
        <input type="hidden" id="result" name="result">

        <div>
            <button type="submit">결과 제출</button>
        </div>
    </form>
</body>
</html>