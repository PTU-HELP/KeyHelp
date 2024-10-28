// DOMContentLoaded 이벤트가 발생하면 실행
document.addEventListener("DOMContentLoaded", () => {
    // 주요 제목과 헤더 요소를 가져옴
    const title = document.getElementById("main-title");
    const header = document.querySelector("header");


    // 스크롤 이벤트 핸들러
    const handleScroll = () => {
        // 스크롤 위치가 50픽셀을 넘으면 'scrolled' 클래스 추가
        if (window.scrollY > 50) {
            header.classList.add("scrolled");
        } else {
            // 그렇지 않으면 'scrolled' 클래스 제거
            header.classList.remove("scrolled");
        }
    };

    // 스크롤 이벤트 리스너 추가 (requestAnimationFrame으로 성능 최적화)
    window.addEventListener("scroll", () => {
        requestAnimationFrame(handleScroll);
    });

    // 초기 상태에 따라 스크롤 클래스 추가/제거
    handleScroll();
});
