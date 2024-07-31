document.addEventListener('DOMContentLoaded', function() {
	const myNav = document.getElementById('myNav');
	const menuButton = document.getElementById('menu-button');
	const mobileMenu = document.getElementById('mobile-menu');

	menuButton.addEventListener('click', function() {
		const ariaExpanded = this.getAttribute('aria-expanded') === 'true';

		if (ariaExpanded) {
			this.setAttribute('aria-expanded', 'false');
			mobileMenu.classList.add('hidden');
			mobileMenu.classList.remove('block');
			myNav.classList.add('shadow');
		} else {
			this.setAttribute('aria-expanded', 'true');
			mobileMenu.classList.remove('hidden');
			mobileMenu.classList.add('block');
			myNav.classList.remove('shadow');
		}
	});

	// Close mobile menu when a link is clicked
	const menuLinks = document.querySelectorAll('.menu-link');
	menuLinks.forEach(link => {
		link.addEventListener('click', function() {
			menuButton.setAttribute('aria-expanded', 'false');
			mobileMenu.classList.add('hidden');
			mobileMenu.classList.remove('block');
		});
	});

	// Toggle dropdown menu for "Servicios" on mobile
	const dropdownButton = document.getElementById('dropdownNavbarLink');
	const dropdownMenu = document.getElementById('dropdownNavbar');

	 if (dropdownButton && dropdownMenu) {
        dropdownButton.addEventListener('click', () => {
            dropdownMenu.classList.toggle('hidden');
        });
    }
});