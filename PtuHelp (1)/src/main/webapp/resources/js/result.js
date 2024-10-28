  // pageTop.js
  document.addEventListener('DOMContentLoaded', function() {
    // 헤더 생성
    const header = document.createElement('div');
    header.className = 'header';
    header.style.position = 'absolute';
    header.style.top = '1%';
    header.style.left = '0%';
    header.style.display = 'flex';
    header.style.backgroundColor = '#000';
    header.style.padding = '10px';
    header.style.justifyContent = 'left';
    header.style.width= '100%';
  
    // 로고 이미지 추가
    const logo = document.createElement('img');
    logo.src = 'logo.png';
    logo.alt = '로고';
    logo.className = 'logo';
    logo.style.width = '75px';
    logo.style.height = '50px';
    logo.style.cursor = 'pointer';
    logo.style.padding = '0px';
    logo.style.marginRight = '10px';
    logo.style.marginBottom= '20px';
    logo.style.marginTop= '0px';
  
    // 헤더 제목 추가
    const title = document.createElement('h1');
    title.textContent = '키보드 백과사전';
    title.style.color = '#fff';
    title.style.padding = '0px';
    title.style.fontSize = '18px';
    title.style.fontFamily = '"ds-stereo-wild", sans-serif';
    title.style.fontWeight = '800';
    title.style.fontStyle = 'normal';
    title.style.transform = 'scaleY(1.3)';
    title.style.opacity = '0.9';
    title.style.marginTop= '10px';
    title.style.marginBottom= '32px';

    const authLinks = document.createElement('div');
    authLinks.className = 'auth-links';
    authLinks.style.position = 'absolute';
    authLinks.style.top = '20px';
    authLinks.style.right = '60px';
    authLinks.style.zIndex = '50';
  
    const profileLink = document.createElement('a');
    profileLink.href = '#';
    profileLink.textContent = 'Profile';
    profileLink.style.color = '#2e50ee';
    profileLink.style.marginLeft = '10px';
    profileLink.style.textDecoration = 'none';
    profileLink.style.fontSize = '1.3rem';
    profileLink.style.zIndex = '30';
  
    const logoutLink = document.createElement('a');
    logoutLink.href = '#';
    logoutLink.textContent = 'Logout';
    logoutLink.style.color = '#2e50ee';
    logoutLink.style.marginLeft = '10px';
    logoutLink.style.textDecoration = 'none';
    logoutLink.style.fontSize = '1.3rem';
    logoutLink.style.zIndex = '30';
  
    // Adding event listeners for hover effects
    [profileLink, logoutLink].forEach(function(link) {
        link.addEventListener('mouseover', function() {
            this.style.textDecoration = 'underline';
        });
        link.addEventListener('mouseout', function() {
            this.style.textDecoration = 'none';
        });
    });

    authLinks.appendChild(profileLink);
    authLinks.appendChild(logoutLink);
  
    // 헤더에 로고와 제목 삽입
    header.appendChild(logo);
    header.appendChild(title);
    header.appendChild(authLinks);
  
    // 상단 경계선 추가
    const topBorder = document.createElement('div');
    topBorder.className = 'top-border';
    topBorder.style.position = 'absolute';
    topBorder.style.width = '100%';
    topBorder.style.height = '1px';
    topBorder.style.backgroundColor = 'white';
    topBorder.style.opacity = '0.8';
    topBorder.style.top = '80px';
    topBorder.style.left = '0';
  
    // 페이지의 body에 헤더와 상단 경계선 삽입
    document.body.appendChild(header);
    document.body.appendChild(topBorder);
  });
  //---------------------------func
  
  (function(d) {
    var config = {
      kitId: 'mvg6sby',
      scriptTimeout: 3000,
      async: true
    },
    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
  })(document);

  function profile() {
    alert("프로필 페이지로 이동합니다.");  
  }
  function logout() {
    alert("로그아웃 되었습니다.");
  }
  
  
  //------------------------------
  
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