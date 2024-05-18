<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jewelry Auctions Online</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="component/home.css">   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">  
        <!-- Include Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="component/test.js"></script>

    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Jewelry Auctions</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">                   

                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Auction</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sell</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register.jsp">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" id="bell-icon"><i class="fas fa-bell"></i></a>
                            <div id="bell-box" style="display: none;">
                                <!--cho thong tin cap nhat cua ben user vao day-->                           
                            </div>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search for anything" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </header>



        <main class="container mt-4">
            <section class="banner mb-4">
                <img src="https://www.limelight.pk/cdn/shop/collections/1200x330-Jewelry.webp?v=1674559019" class="img-fluid" alt="Banner Image">
            </section>

            <h2>Upcoming Auction</h2>

            <section class="upcoming-auction row">
                <div class="auction-item col-md-6 mb-4">
                    <div class="card">
                        <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" class="card-img-top" alt="Tiny Crystal Heart Pendant Necklace in Rose Gold">
                        <div class="card-body">
                            <h5 class="card-title">Tiny Crystal Heart Pendant Necklace in Rose Gold</h5>
                            <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                            <p class="card-text">Auction ID: [159234]</p>
                            <button class="btn btn-primary">Notify me</button>
                        </div>
                    </div>
                </div>
                <div class="auction-item col-md-6 mb-4">
                    <div class="card">
                        <img src="https://nhj.com.vn/wp-content/uploads/2019/04/vong-tay-vang-24k-8.jpg" class="card-img-top" alt="14K Rose Gold Full Round Moissanite Diamond Ring">
                        <div class="card-body">
                            <h5 class="card-title">14K Rose Gold Full Round Moissanite Diamond Ring</h5>
                            <p class="card-text">Start: Wed, May 22, 12:00 PM GMT+3</p>
                            <p class="card-text">Auction ID: [294819]</p>
                            <button class="btn btn-primary">Notify me</button>
                        </div>
                    </div>
                </div>
            </section>
            <section class="contact mt-5">
                <h2>About Us</h2>
                <p>Welcome to Jewelry Auctioned! We offer a wide range of
                    discounted jewelry and gemstones directly from verified 
                    manufacturers worldwide. Shop top-quality pieces at 
                    a fraction of the price. Our sellers meet high standards 
                    through a rigorous application process. </p>
            </section>

        </section>
        <section class="contact mt-5">
            <h2>Contact </h2>
            <p>We welcome your feedback and encourage you to share your thoughts. 
                Feel free to ask questions, tell us what you like, 
                and let us know how we can improve. Your input is valuable to us!
            <p>
                Phone Support : +849872539999 Available 7 days a week, 
                9:00 am - 5:30 pm (EST)Email Support: support@jewelryauction.com 
                fill out the form below.
            </p>
        </section>
    </main>

    <footer class="bg-light text-center py-3">
        <div>
            <h6>Jewelry Auction </h6>
            <a href="register.jsp">Register</a> |
            <a href="login.jsp">Login</a> |
            <a href="#">Help & FAQ</a> |
            <a href="#">Support</a> |
            <a href="#">Sitemap</a>
        </div>
    </footer>
</body>
</html>