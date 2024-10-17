document.addEventListener("DOMContentLoaded", () => {
    const title = document.getElementById("main-title");
    const menu = document.querySelector(".menu");
  
    // 스크롤 시 제목 크기를 줄이는 함수
    window.addEventListener("scroll", () => {
      if (window.scrollY > 50) {
        document.body.classList.add("scrolled");
      } else {
        document.body.classList.remove("scrolled");
      }
    });
  
    // 메뉴가 뷰포트에 들어오면 나타나는 애니메이션
    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          menu.classList.add('visible');
        }
      });
    });
  
    observer.observe(menu);
  });
  