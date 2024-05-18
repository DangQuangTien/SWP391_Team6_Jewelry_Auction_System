document.getElementById('bell-icon').addEventListener('click', function() {
    var bellBox = document.getElementById('bell-box');
    if (bellBox.style.display === 'none') {
        bellBox.style.display = 'block';
    } else {
        bellBox.style.display = 'none';
    }
});

