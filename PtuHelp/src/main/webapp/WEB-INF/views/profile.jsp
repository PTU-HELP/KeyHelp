<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>키보드 백과사전</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/profile.css">
    <script src="${pageContext.request.contextPath}/resources/js/profile.js"></script>
    </script>
</head>
<body>
  <section>
    <div class="message1">
      <p>FPS 게임을</p>
      <p>좋아하는</p>
      <p class="userName">그루브<span class="name"> 님은</span></p>
    </div>
    
    <div class="message2">
      <p>쌍문동 총잡이</p> 
    </div>
    <img src="${pageContext.request.contextPath}/resources/images/GunMan.png" alt="총잡이 이미지" class="gunman">

  <!-- 사용자 아이디, 닉네임을 보여줄 부분 DB 와 연동 필요 추후 form 태그 사용 예정-->
  <div class="login-container"> <!-- 로그인 입력칸을 담고있는 컨테이너-->
    <form id="login-form"> <!-- 로그인 입력 폼-->
      <h1>회원정보 수정</h1>

      <div class="input-group"> <!-- 아이디, 비번, 닉네임 입력 칸-->
        <label for="username"></label>
        <input type="text" id="username" name="username" placeholder="아이디를 입력하세요" autocomplete="username">
      </div>

      <div class="input-group">
        <label for="password"></label>
        <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
      </div>

      <div class="input-group"> 
        <label for="nickname"></label>
        <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력하세요">
      </div>

      <button type="submit" id="login-btn" onclick="checkEdit()">수정</button>
      <div class="message3">
        <h2>추천&nbsp; 키보드&nbsp; 이력</h2>
        
      </div>
      <div class="img">
       <a href="#"><img src="${pageContext.request.contextPath}/resources/images/arrow.png" alt="화살표 이미지" class="arrow" onclick="history()"></a>
      </div>
    </form>
  </div>
  </section>
  <script src="pageTopLOPP.js"></script>
</body>
</html>

</html>