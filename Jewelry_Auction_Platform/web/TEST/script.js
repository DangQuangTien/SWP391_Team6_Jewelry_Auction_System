document.addEventListener('DOMContentLoaded', function() {
    console.log('Navigation bar is ready!');

    let navbar = document.querySelector('.custom-navbar');
    let navbarToggler = document.querySelector('.navbar-toggler');
    navbarToggler.addEventListener('click', function() {
        if (navbar.classList.contains('navbar-collapsed')) {
            navbar.classList.remove('navbar-collapsed');
            navbar.classList.add('navbar-extended');
        } else {
            navbar.classList.remove('navbar-extended');
            navbar.classList.add('navbar-collapsed');
        }
    });

    let dropdownToggle = document.querySelector('#navbarDropdown');
    let navbarBrand = document.querySelector('.navbar-brand');
    dropdownToggle.addEventListener('click', function() {
        navbarBrand.classList.add('animate');
        setTimeout(function() {
            navbarBrand.classList.remove('animate');
        }, 300);
    });

    function adjustNavbar() {
        if (window.innerWidth <= 767) {
            if (!navbarToggler.getAttribute('aria-expanded') || navbarToggler.getAttribute('aria-expanded') === 'false') {
                navbar.classList.add('navbar-collapsed');
                navbar.classList.remove('navbar-extended');
            }
        } else {
            navbar.classList.add('navbar-extended');
            navbar.classList.remove('navbar-collapsed');
        }
    }

    adjustNavbar();  

    window.addEventListener('resize', adjustNavbar); 
});
