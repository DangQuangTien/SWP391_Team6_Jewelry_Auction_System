<!DOCTYPE html>
<html>
<head>
    <title>Jewelry Auction</title>
    <link rel="stylesheet" type="text/css" href="component/payment.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
   
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="home.jsp">Jewelry Auctions</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Auction.jsp">Auction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="seller/valuation.jsp">Sell</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Profile&username=<%= username %>"><%= username %></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="bell-icon"><i class="fas fa-bell"></i></a>
                        <div id="bell-box" style="display: none;">
                            <!-- Notifications -->
                            <button id="notificationButton">Show Notification</button>
                            <div id="notificationPopup" class="popup">
                                New message received!
                            </div>
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

    <main class="container">
        <div class="row">

            <div class="col-md-8">
                <div class="product-display">
                    <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image" class="card-img-top img-fluid">
                    <div class="product-details">
                        <h2>Auction ID : 17086</h2>
                        <p>Bid : $800</p>
                        <p>Category : Jewelry</p>
                        <p>Shipment within 30 business days.</p>
                        <p>Note : Auction fee will also be charged.</p>
                        <a href="#">Read more about this auction</a>
                    </div>
                </div>
            </div>
            
            <aside class="col-md-4">
                <h2>PAYMENT DETAIL</h2>
                <p>Payment method: Bank transfer</p>
                <p>Our bank information (including fee)</p>
                <p>Account number : **** * **** * **** *****</p>
                <p>Account name : Official Platform of Jewelry Auction</p>
                <p>Auction Fee: 10% of the final bid price = 80$</p>
                <p>Note: System will check and tell you if the seller has received money.</p>
                <button>CONFIRM</button>
            </aside>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-light text-center py-3">
        <div>
            <h6>Jewelry Auction</h6>
            <a href="register.jsp">Register</a> |
            <a href="login.jsp">Login</a> |
            <a href="#">Help & FAQ</a> |
            <a href="#">Support</a> |
            <a href="#">Sitemap</a>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="javascript/Auction.js"></script>
    
</body>
</html>