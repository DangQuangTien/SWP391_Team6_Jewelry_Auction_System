            document.addEventListener("DOMContentLoaded", function () {
            const itemsPerPage = 4;
            const items = document.querySelectorAll(".auction-item");
            const pagination = document.querySelector(".pagination");
            let currentPage = 1;
            const totalPages = Math.ceil(items.length / itemsPerPage);
    
            function showPage(page) {
                const start = (page - 1) * itemsPerPage;
                const end = start + itemsPerPage;
    
                items.forEach((item, index) => {
                    if (index >= start && index < end) {
                        item.style.display = "block";
                    } else {
                        item.style.display = "none";
                    }
                });
            }
    
            function updatePagination() {
                pagination.innerHTML = "";
    
                const prevButton = document.createElement("button");
                prevButton.textContent = "Previous";
                prevButton.disabled = currentPage === 1;
                prevButton.addEventListener("click", () => {
                    if (currentPage > 1) {
                        currentPage--;
                        showPage(currentPage);
                        updatePagination();
                    }
                });
                pagination.appendChild(prevButton);
    
                for (let i = 1; i <= totalPages; i++) {
                    const pageButton = document.createElement("button");
                    pageButton.textContent = i;
                    if (i === currentPage) {
                        pageButton.disabled = true;
                    }
                    pageButton.addEventListener("click", () => {
                        currentPage = i;
                        showPage(currentPage);
                        updatePagination();
                    });
                    pagination.appendChild(pageButton);
                }
    
                const nextButton = document.createElement("button");
                nextButton.textContent = "Next";
                nextButton.disabled = currentPage === totalPages;
                nextButton.addEventListener("click", () => {
                    if (currentPage < totalPages) {
                        currentPage++;
                        showPage(currentPage);
                        updatePagination();
                    }
                });
                pagination.appendChild(nextButton);
            }
    
            showPage(currentPage);
            updatePagination();
        });
  