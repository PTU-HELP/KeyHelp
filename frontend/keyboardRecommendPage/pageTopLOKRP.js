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