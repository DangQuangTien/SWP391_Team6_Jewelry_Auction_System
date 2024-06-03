<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Jewelry Auctions Blog</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="component/header.css">
        <link rel="stylesheet" type="text/css" href="component/blog.css">
        <link rel="stylesheet" type="text/css" href="component/footer.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    </head>
    <body>
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
        <!-- END OF HEADER -->

        <!-- Blog Header -->
        <div class="blog-header">
            <h1>Jewelry Auctions Blog</h1>
            <p class="lead">Latest News and Articles</p>
        </div>

        <!-- Blog Content -->
        <main class="container">
            <div class="row">
                <div class="col-md-8">
                    <!-- Example Blog Post 1 -->
                    <div class="blog-post">
                        <img src="https://hips.hearstapps.com/hmg-prod/images/vintage-necklaces-and-jewelry-for-sale-in-the-royalty-free-image-1687462684.jpg" alt="Latest Trends in Jewelry" class="img-fluid blog-post-image">
                        <h2 class="blog-post-title">Discover the Latest Trends in Jewelry</h2>
                        <p class="blog-post-meta">June 1, 2024 by <a href="#">Admin</a></p>
                        <p class="blog-post-description">Stay updated with the latest trends in the jewelry world. From vintage designs to modern pieces, we cover it all.</p>
                    </div>

                    <!-- Example Blog Post 2 -->
                    <div class="blog-post">
                        <img src="https://www.withclarity.com/cdn/shop/articles/SOLITAIRE_ENGAGEMENT_RINGS.jpg?v=1697178742" alt="Perfect Engagement Ring" class="img-fluid blog-post-image">
                        <h2 class="blog-post-title">How to Choose the Perfect Engagement Ring</h2>
                        <p class="blog-post-meta">May 28, 2024 by <a href="#">Admin</a></p>
                        <p class="blog-post-description">Choosing the perfect engagement ring can be daunting. Here are some tips to help you find the ideal ring for your special someone.</p>
                    </div>

                    <!-- Pagination -->
                    <div class="pagination">
                        <a href="#">&laquo; Previous</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">Next &raquo;</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <!-- Sidebar Widgets -->
                    <div class="p-4 mb-3 bg-light rounded">
                        <h4>About</h4>
                        <p class="mb-0">Welcome to the Jewelry Auctions blog! Here you'll find articles on the latest trends, tips for buying and selling, and stories from the jewelry world.</p>
                    </div>

                    <div class="p-4">
                        <h4>Archives</h4>
                        <ol class="list-unstyled mb-0">
                            <li><a href="#">June 2024</a></li>
                            <li><a href="#">May 2024</a></li>
                            <li><a href="#">April 2024</a></li>
                        </ol>
                    </div>

                    <div class="p-4">
                        <h4>Elsewhere</h4>
                        <ol class="list-unstyled">
                            <li><a href="#">GitHub</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Facebook</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </main>

        <!-- START OF FOOTER -->
        <footer class="text-center py-3 mt-auto">
            <div>
                <h6>Jewelry Auction</h6>
                <a href="register.html">Register</a> |
                <a href="login.html">Login</a> |
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
    </body>
</html>
