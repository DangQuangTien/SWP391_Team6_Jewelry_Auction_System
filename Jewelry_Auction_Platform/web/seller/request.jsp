<%-- 
    Document   : valuation
    Created on : May 19, 2024, 2:08:38 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Jewelry Auctions Online</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="../component/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body>
        <!-- START OF HEADER -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Jewelry Auctions</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>                
                        <li class="nav-item">
                            <a class="nav-link" href="#">Auction</a>
                        </li>
                        <!-- You can remove the login and register links from the valuation page -->
                    </ul>
                </div>
            </nav>
        </header>

        <!-- END OF HEADER -->

        <main class="container mt-4">
            <h1>Jewelry &amp; Watch Valuation</h1>
            <p>Welcome to our quote / valuation request page</p>
            <h3>Ready to submit your valuation request?</h3>
            <form action="${pageContext.request.contextPath}/ValuationRequestServlet" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" required>
                </div>
                <div class="form-group">
                    <label for="phone">Mobile Phone Number</label>
                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your mobile phone number" required>
                </div>
                <div class="form-group">
                    <label for="communication">Communication preference</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="communication" id="emailComm" value="Email" required>
                        <label class="form-check-label" for="emailComm">Email</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="communication" id="textComm" value="Text Message">
                        <label class="form-check-label" for="textComm">Text Message</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="communication" id="phoneComm" value="Phone Call">
                        <label class="form-check-label" for="phoneComm">Phone Call</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="communication" id="anyComm" value="Any of the above">
                        <label class="form-check-label" for="anyComm">Any of the above</label>
                    </div>
                    <small class="form-text text-muted">Please let us know how you wish to be contacted. We will try to contact you via your preferred method that you select here but may use other methods if we are unsuccessful.</small>
                </div>
                <div class="form-group">
                    <label for="image">Photos</label>
                    <input type="file" class="form-control-file" id="image" name="image" required accept="image/*">
                    <small class="form-text text-muted">Please upload photos of your jewelry and/or watches in the field above. If you have photos that the form will not accept (too large or too many) please mention this in the description below and we will request the additional photos in our follow-up communication with you.</small>
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <input type="text" class="form-control" id="description" name="description">
                    <small class="form-text text-muted">Please briefly describe your jewelry and/or watches in the field above.</small>
                </div><br>
                <input type="submit" class="btn btn-primary" name="action" value="Submit Valuation Request">
            </form>
        </main>

        <!-- START OF FOOTER -->

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

        <!-- END OF FOOTER -->

        <!-- Include Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
