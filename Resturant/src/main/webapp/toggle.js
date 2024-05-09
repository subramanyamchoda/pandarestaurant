
	 function handleLogin() {
	            const loginTab = document.getElementById('loginLink');
            const registerTab = document.getElementById('registrationLink');
            const profileTab = document.getElementById('dashboard');
            const logoutTab = document.getElementById('logoutLink');
            const menuTab = document.getElementById('menuLink');
            const tableTab = document.getElementById('tableLink');
            const orderTab = document.getElementById('orderLink');

            loginTab.style.display = 'none';
            registerTab.style.display = 'none';
            profileTab.style.display = 'flex';
            logoutTab.style.display = 'flex';
            menuTab.style.display = 'flex';
            tableTab.style.display = 'flex';
            orderTab.style.display = 'flex';

	 
	 }