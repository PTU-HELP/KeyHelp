let currentIndex = 0;
        const productList = document.querySelector('.product-list');
        const products = document.querySelectorAll('.product');

        // 제품 수에 따라 product-list의 width를 동적으로 설정
        const productCount = products.length;

        document.querySelector('.right-arrow').addEventListener('click', () => {
            if (currentIndex < productCount - 1) {
                currentIndex++;
                productList.style.transform = `translateX(-${currentIndex * 100}vw)`;
            }
        });

        document.querySelector('.left-arrow').addEventListener('click', () => {
            if (currentIndex > 0) {
                currentIndex--;
                productList.style.transform = `translateX(-${currentIndex * 100}vw)`;
            }
        });