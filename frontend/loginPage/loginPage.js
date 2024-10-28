(function(d) {
  var config = {
    kitId: 'mvg6sby',
    scriptTimeout: 3000,
    async: true
  },
  h = d.documentElement,
  t = setTimeout(function() {
    h.className = h.className.replace(/\bwf-loading\b/g, "") + " wf-inactive";
  }, config.scriptTimeout),
  tk = d.createElement("script"),
  f = false,
  s = d.getElementsByTagName("script")[0],
  a;
  h.className += " wf-loading";
  tk.src = 'https://use.typekit.net/' + config.kitId + '.js';
  tk.async = true;
  tk.onload = tk.onreadystatechange = function() {
    a = this.readyState;
    if (f || (a && a != "complete" && a != "loaded")) return;
    f = true;
    clearTimeout(t);
    try {
      Typekit.load(config);
    } catch (e) {}
  };
  s.parentNode.insertBefore(tk, s);
})(document);

document.getElementById('login-form').addEventListener('submit', function (event) {
    event.preventDefault(); // 아무값도 안 넣으면 동작 안하도록함

    // DB 연동 필요    
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
  
    if (username === '' || password === '') {
      alert('아이디와 비밀번호를 모두 입력하세요.');
    } else {
      // 서버로 로그인 데이터를 보내는 로직 추가 가능
      alert('로그인 성공!'); // 예시 메시지
      // 메인페이지로 이동
    }
  });

  
  

  