

/* Slideshow Javascript */
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) {
        slideIndex = 1;
    }
    if (n < 1) {
        slideIndex = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = slideIndex - 1; i < slideIndex + 1; i++) {
        if (slides[i]) {
            slides[i].style.display = "block";
        }
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    dots[slideIndex - 1].className += " active";
}

setInterval(function() {
    plusSlides(2); // Change slide every 3 seconds
}, 3000);

/* Bell notification */
document.getElementById('bell-icon').addEventListener('click', function() {
    var bellBox = document.getElementById('bell-box');
    if (bellBox.style.display === 'none') {
        bellBox.style.display = 'block';
    } else {
        bellBox.style.display = 'none';
    }
});


