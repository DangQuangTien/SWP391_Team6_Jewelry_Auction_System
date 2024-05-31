<%@page import="dao.UserDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.product.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Jewelry Auctions Online</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="component/home.css">
        <link rel="stylesheet" type="text/css" href="component/header.css">
        <link rel="stylesheet" type="text/css" href="component/footer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <style>
            .category-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-around; 
                gap: 20px; 
                padding: 20px;
                background-color: #f0f0f0;
            }

            .category-name {
                font-family: 'Arial, sans-serif';
                font-size: 24px;
                color: #333;
                background-color: #f9f9f9; 
                padding: 10px 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                text-align: center;
                flex: 1 1 200px; 
                max-width: 300px; 
            }
            
                .banner img {
                width: 100%;
                height: auto;
                max-height: 400px;
                object-fit: cover;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            .welcome-section {
                text-align: center;
                padding: 50px 20px;
                background-color: #ffffff;
                margin: 20px 0;
                border-radius: 5px;
            }

            .welcome-section h2 {
                font-size: 2.5rem;
                color: #333;
                margin-bottom: 20px;
            }

            .welcome-text {
                font-size: 1.2rem;
                color: #666;
                line-height: 1.6;
            }

        </style>
    </head>
    <body>
        <c:set var="dao" value="<%= new dao.UserDAOImpl() %>"/>
        <c:set var="username" value="${sessionScope.USERNAME}" />
        <c:set var="role" value="${sessionScope.ROLE}" />
        <c:set var="listCategory" value="${dao.listCategory()}" />

        <!-- START OF HEADER -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="#">Jewelry Auctions</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Auction.jsp">Auction</a>
                        </li>
                        <c:if test="${role == 'Member' || role == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="seller/selling.html">Sell</a>
                            </li>
                        </c:if>
                        <c:choose>
                            <c:when test="${username == null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="login.jsp">Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.jsp">Register</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <c:set var="url">
                                    <c:choose>
                                        <c:when test="${role == 'Member'}">bidder/profile.jsp</c:when>
                                        <c:when test="${role == 'Staff'}">staff/staff.jsp</c:when>
                                        <c:when test="${role == 'Manager'}">manager/manager.jsp</c:when>
                                        <c:otherwise>admin/admin.jsp</c:otherwise>
                                    </c:choose>
                                </c:set>
                                <li class="nav-item">
                                    <a class="nav-link" href="${url}">${username}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <li class="nav-item">
                            <a class="nav-link" href="notification.jsp" id="bell-icon"><i class="fas fa-bell"></i></a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search for anything" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </header>
        <section class="banner mb-4">
            <img src="https://images.pexels.com/photos/265906/pexels-photo-265906.jpeg?cs=srgb&dl=pexels-pixabay-265906.jpg&fm=jpg" class="img-fluid" alt="Banner showcasing various jewelry pieces">
        </section>
        <!-- END OF HEADER -->
        <main class="container mt-4">
            <hr>
        <!-- WELCOME SECTION -->
<section class="welcome-section">
    <h2>Welcome to Jewelry Auction</h2>
    <p class="welcome-text">
        We're delighted to have you explore our curated selection of fine jewelry. Each piece is a treasure waiting to be discovered. Join our community of connoisseurs and start your bidding journey today.
    </p>
</section>

<hr>

<br>
            <h2>Top Categories</h2>
            <c:if test="${not empty listCategory}">
                <div class="category-container">
                    <c:forEach var="category" items="${listCategory}">
                        <div class="category-name">
                            ${category.categoryName}
                        </div>
                    </c:forEach>
                </div>
            </c:if>
<br>
            <hr>

            <h2>Upcoming Auction</h2>
            <section class="upcoming-auction">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mySlides slide">
                                <div class="card mb-4">
                                    <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" class="card-img-top" alt="Tiny Crystal Heart Pendant Necklace in Rose Gold">
                                    <div class="card-body">
                                        <h5 class="card-title">Tiny Crystal Heart Pendant Necklace in Rose Gold</h5>
                                        <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                                        <p class="card-text">Auction ID: 159234</p>
                                        <button class="btn">Notify me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mySlides slide">
                                <div class="card mb-4">
                                    <img src="https://nhj.com.vn/wp-content/uploads/2019/04/vong-tay-vang-24k-8.jpg" class="card-img-top" alt="14K Rose Gold Full Round Moissanite Diamond Ring">
                                    <div class="card-body">
                                        <h5 class="card-title">14K Rose Gold Full Round Moissanite Diamond Ring</h5>
                                        <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                                        <p class="card-text">Auction ID: 294819</p>
                                        <button class="btn">Notify me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mySlides slide">
                                <div class="card mb-4">
                                    <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" class="card-img-top" alt="Tiny Crystal Heart Pendant Necklace in Rose Gold">
                                    <div class="card-body">
                                        <h5 class="card-title">Tiny Crystal Heart Pendant Necklace in Rose Gold</h5>
                                        <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                                        <p class="card-text">Auction ID: 159234</p>
                                        <button class="btn">Notify me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mySlides slide">
                                <div class="card mb-4">
                                    <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" class="card-img-top" alt="Tiny Crystal Heart Pendant Necklace in Rose Gold">
                                    <div class="card-body">
                                        <h5 class="card-title">Tiny Crystal Heart Pendant Necklace in Rose Gold</h5>
                                        <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                                        <p class="card-text">Auction ID: 159234</p>
                                        <button class="btn">Notify me</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Next and previous buttons -->
                <div class="next-prev-btn">
                    <a class="prev" onclick="plusSlides(-2)">&#10094;</a>
                    <a class="next" onclick="plusSlides(2)">&#10095;</a>
                </div>
                <br>
                <!-- The dots/circles -->
                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                </div>
            </section>

            <br>
            <hr>
            <section class="contact mt-5">
                <h2>About Us</h2>
                <p>Welcome to Jewelry Auctioned! We offer a wide range of discounted jewelry and gemstones directly from verified manufacturers worldwide. 
                    Shop top-quality pieces at a fraction of the price. Our sellers meet high standards through a rigorous application process.</p>
            </section>

            <section class="contact mt-5">
                <h2>Contact</h2>
                <p>We welcome your feedback and encourage you to share your thoughts. Feel free to ask questions, tell us what you like, and let us know how we can improve. Your input is valuable to us!</p>
                <p>Phone Support: +849872539999 (Available 7 days a week, 9:00 am - 5:30 pm EST)</p>
                <p>Email Support: support@jewelryauction.com</p>
                <p>Fill out the form below for more assistance.</p>
            </section>
            <hr>
        </main>
        <!-- START OF FOOTER -->
        <footer class="text-center py-3 mt-auto">
            <div>
                <h6>Jewelry Auction</h6>
                <a href="register.jsp">Register</a> |
                <a href="login.jsp">Login</a> |
                <a href="#">Help & FAQ</a> |
                <a href="#">Support</a> |
                <a href="#">Sitemap</a>
            </div>
        </footer>
        <!-- END OF FOOTER -->

        <!-- Include Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Custom Javascript -->
        <!-- Slideshow -->
        <script src="javascript/home.js"></script>
    </body>
</html>


