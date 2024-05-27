/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function showFormFields() {
    var category = document.getElementById("category").value;
    var watchFields = document.getElementById("watchFields");
    var braceletFields = document.getElementById("braceletFields");

    watchFields.style.display = "none";
    braceletFields.style.display = "none";

    if (category === "category9") {
        watchFields.style.display = "block";
    } else {
        braceletFields.style.display = "block";
    }
}
window.onload = function () {
    showFormFields();
}

