window.addEventListener('scroll', function() {
    const container = document.querySelector('.container');
    const scrollPos = window.scrollY;
    container.style.transform = `translateY(${scrollPos * 0.5}px)`;
});
