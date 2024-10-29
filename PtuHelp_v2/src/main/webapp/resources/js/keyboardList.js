// keyboardList.js

// 클릭 시 키보드 상세 페이지로 이동하는 함수
function goToDetail(keyboardId) {
    location.href = `${window.location.origin}/keyboards/${keyboardId}`;
}
