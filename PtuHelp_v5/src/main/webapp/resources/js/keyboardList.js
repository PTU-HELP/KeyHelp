// keyboardList.js

// 페이지가 로드된 후 실행할 코드를 설정하는 이벤트 리스너
document.addEventListener("DOMContentLoaded", function () {
    // 키보드 목록 컨테이너를 선택
    const keyboardContainer = document.getElementById("keyboardContainer");

    // 키보드 목록 컨테이너가 있는 경우에만 클릭 이벤트를 추가
    if (keyboardContainer) {
        // 컨테이너에 이벤트 위임을 통해 클릭 이벤트 추가
        keyboardContainer.addEventListener("click", function (event) {
            // 클릭된 요소에서 가장 가까운 `.keyboard-item` 요소를 찾아 저장
            const keyboardItem = event.target.closest(".keyboard-item");

            // `.keyboard-item` 요소가 존재하면 해당 키보드의 ID를 가져와 상세 페이지로 이동
            if (keyboardItem) {
                const keyboardId = keyboardItem.getAttribute("data-id");
                // contextPath를 사용해 키보드 상세 페이지로 이동
                location.href = `${window.contextPath}/keyboards/${keyboardId}`;
            }
        });
    }
});
