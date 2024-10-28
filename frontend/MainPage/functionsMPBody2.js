window.addEventListener('scroll', function() {
    const scrollY = window.scrollY;
    const maxScroll = window.innerHeight; // 전체 스크롤 영역

    // 상단 이미지

    
    const topImage = document.getElementById("imageTop");

    // 이미지가 아래로 내려오면서 왼쪽으로도 이동하도록 translate 설정
    const yTranslation = scrollY * 0.5; // Y축 방향으로 스크롤에 따라 내려오는 정도
    const xTranslation = scrollY * 0.2; // X축 방향으로 스크롤에 따라 왼쪽으로 이동하는 정도

    topImage.style.transform = `translate(-${xTranslation}px, ${yTranslation}px) scale(${Math.max(0.5, 1 - scrollY / 1000)})`;

    /*const imageTop = document.getElementById('imageTop');
    const topMove = Math.min(scrollY / 2, maxScroll / 2); // 상단 이미지의 아래쪽 이동
    imageTop.style.transform = `translateY(${topMove}px) scale(${Math.max(0.0, 1 - scrollY / 1000)})`;*/

    // 하단 이미지
    const imageBottom = document.getElementById('imageBottom');
    const bottomMove = Math.min(scrollY / 2, maxScroll / 2); // 하단 이미지의 위쪽 이동
    imageBottom.style.transform = `translateY(-${bottomMove}px) scale(${Math.max(1, 1 - scrollY / 1000)})`;

    // 키보드 완성 이미지
    const imageComplete = document.getElementById('imageComplete');

    if (scrollY >= maxScroll / 1.85) {
        // 두 이미지가 만나는 지점에서 완성 이미지 나타남
        imageComplete.style.opacity = 1;

        // 상단과 하단 이미지를 투명하게 만듦
        imageTop.style.opacity = 0;
        imageBottom.style.opacity = 0;
    } else {
        // 스크롤이 반 이하일 때는 투명도를 다시 원상복구
        imageComplete.style.opacity = 0;
        imageTop.style.opacity = 1;
        imageBottom.style.opacity = 1;
    }
});