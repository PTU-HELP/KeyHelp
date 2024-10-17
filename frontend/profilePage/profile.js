document.getElementById('inforModify').addEventListener('submit', function (event) {
    event.preventDefault(); // 아무값도 안 넣으면 동작 안하도록함

    // DB 연동 필요    
    const id = document.getElementById('username').value;
    const password = document.getElementById('password').value;
  
    if (username === '' || password === '') {
      alert('아이디와 비밀번호를 모두 입력하세요.');
    } else {
      // 서버로 로그인 데이터를 보내는 로직 추가 가능
      alert('정보 수정 성공'); // 예시 메시지
      // 메인페이지로 이동
    }
  });
  