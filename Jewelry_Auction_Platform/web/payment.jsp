<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Jewelry Auction</title>
    <link rel="stylesheet" type="text/css" href="component/header.css">
    <link rel="stylesheet" type="text/css" href="component/footer.css">
    <link rel="stylesheet" type="text/css" href="component/payment.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>
   
    <header>
        <nav class="navbar navbar-expand-lg navbar-light">
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
                        <a class="nav-link" href="MainController?action=Profile&username="></a>
                    </li>
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

    <main class="container my-4 flex-grow-1">
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="card product-display">
                    <img src="https://a.1stdibscdn.com/archivesE/upload/1121189/j_130196821629192638945/13019682_datamatics.jpg" alt="Item image" class="card-img-top img-fluid">
                    <div class="card-body">
                        <h2 class="card-title">Auction ID : 17986</h2>
                        <p class="card-text">Bid : $800</p>
                        <p class="card-text">Category : Watch</p>
                        <p class="card-text">Shipment within 30 business days.</p>
                        <p class="card-text">Note : Auction fee will also be charged.</p>
                        <a href="#" class="btn btn-primary">Read more about the said auction fee</a>
                    </div>
                </div>
            </div>
            <aside class="col-md-6 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title">PAYMENT DETAIL</h2>
                        <form>
                            <div class="form-group">
                                <label for="paymentMethod">Payment method</label>
                                <select class="form-control" id="paymentMethod">
                                    <option>Bank transfer</option>
                                    <option>Credit Card</option>
                                    <option>PayPal</option>
                                    <option>Cryptocurrency</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Our bank information (including fee)</label>
                                <p>Account number : xxxx - xxxx - xxxx - xxxx</p>
                                <p>Account name : Official Platform of Jewelry Auction</p>
                            </div>
                            <div class="form-group">
                                <label>Auction Fee</label>
                                <input type="text" class="form-control" value="10% of the final bid price = 80$" readonly>
                            </div>
                            <div class="form-group">
                                <label>Note</label>
                                <p>System will check and tell you if the seller has received money.</p>
                            </div>
                            <button type="button" class="btn btn-primary btn-block">CONFIRM</button>
                        </form>
                    </div>
                </div>
            </aside>
        </div>
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

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="javascript/home.js"></script>
</body>
</html>
