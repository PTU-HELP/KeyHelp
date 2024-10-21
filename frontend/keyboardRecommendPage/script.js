const images = [
  {
      imgSrc: 'G915TKL White.png',
      number: '1'
  },
  {
      imgSrc: '키보드추천페이지2.png',
      number: '2'
  },
  {
      imgSrc: '키보드추천페이지3.png',
      number: '3'
  }
];

let currentIndex = 0;
const keyboardImage = document.getElementById('keyboard-image');
const backgroundNumber = document.getElementById('background-number');

// 키보드 방향키 이벤트 리스너
document.addEventListener('keydown', function(event) {
  if (event.key === 'ArrowRight') {
      nextImage();
  } else if (event.key === 'ArrowLeft') {
      previousImage();
  }
});

// 다음 이미지로 전환
function nextImage() {
  currentIndex = (currentIndex + 1) % images.length;
  updateContent();
}

// 이전 이미지로 전환
function previousImage() {
  currentIndex = (currentIndex - 1 + images.length) % images.length;
  updateContent();
}

// 콘텐츠 업데이트
function updateContent() {
  keyboardImage.src = images[currentIndex].imgSrc;
  backgroundNumber.textContent = images[currentIndex].number;
}
