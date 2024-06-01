<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jewelry Auctions</title>
    <link rel="stylesheet" type="text/css" href="component/header.css">
    <link rel="stylesheet" type="text/css" href="component/footer.css">
    <link rel="stylesheet" type="text/css" href="component/auction.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <!-- Header Section -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Jewelry Auctions</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Auction.jsp">Auction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="seller/selling.html">Sell</a>
                    </li>
                    <!-- JSP Conditional Rendering -->
                    <%
                        String username = (String) session.getAttribute("USERNAME");
                        if (username == null) {
                    %>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register.jsp">Register</a>
                        </li>
                    <%
                        } else {
                    %>
                        <li class="nav-item">
                            <a class="nav-link" href="MainController?action=Profile&username=<%= username %>"><%= username %></a>
                        </li>
                    <%
                        }
                    %>
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

    <!-- Main Content -->
    <div class="container-fluid flex-grow-1">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <h5 class="sidebar-heading">Categories</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="#">All</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Jewelry</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Gem</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Material</a>
                        </li>
                        <li class="nav-item">
                            <h6>Price Range:</h6>
                            <input class="form-control mb-2" type="text" placeholder="Min">
                            <input class="form-control mb-2" type="text" placeholder="Max">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Main Section -->
            <main role="main" class="col-md-10 ml-sm-auto col-lg-10 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Auction Items</h1>
                </div>
                <div class="container-fluid">
                    <div class="row item-container">
                        <!-- Example auction items, repeat as needed -->
                        <div class="col-md-6 auction-item">
                            <div class="card mb-4 shadow-sm">
                                <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image" class="card-img-top img-fluid">
                                <div class="card-body">
                                    <h6 class="card-title">14k Solid Gold Patek Watch - Schauffhausen IWC 'Pristine Condition'</h6>
                                    <p class="card-text">Product Brand: IWC</p>
                                    <p class="card-text">Auction ID: 15678</p>
                                    <p class="card-text">Time left: 4d 20h</p>
                                    <button class="btn btn-primary">Bid Now</button>
                                </div>
                            </div>
                        </div>
                        <!-- Repeat similar blocks for more auction items -->
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Pagination Controls -->
    <div class="pagination"></div>

    <!-- Footer Section -->
    <footer class="bg-light text-center py-3 mt-auto">
        <div>
            <h6>Jewelry Auction</h6>
            <a href="register.jsp">Register</a> |
            <a href="login.jsp">Login</a> |
            <a href="#">Help & FAQ</a> |
            <a href="#">Support</a> |
            <a href="#">Sitemap</a>
        </div>
    </footer>
    
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="javascript/Auction.js"></script>
</body>
</html>
