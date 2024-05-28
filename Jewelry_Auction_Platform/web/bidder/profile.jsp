<!DOCTYPE html>
<html lang="en">

<head>
    <title>User profile</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="../component//userProfile.css">
    <link rel="stylesheet" type="text/css" href="../component/header.css">
    <link rel="stylesheet" type="text/css" href="../component/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <body>
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
                                    <a class="nav-link" href="MainController?action=Profile&username=<%= username %>">
                                        <%= username %>
                                    </a>
                                </li>
                                <%
                    }
                %>
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

        <main>
            <div class="container light-style flex-grow-1 container-p-y">
                <h4 class="font-weight-bold py-3 mb-4">
                    Account settings
                </h4>
                <div class="card overflow-hidden px-4 py-2 mb-10">
                    <div class="row no-gutters row-bordered row-border-light">
                        <div class="col-md-3 pt-0">
                            <div class="list-group list-group-flush account-settings-links">
                                <a class="list-group-item list-group-item-action active" data-toggle="list" href="#account-general">General</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-change-password">Change password</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-info">Info</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-social-links">Social links</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-connections">Connections</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-notifications">Notifications</a>
                            </div>
                            <div class="text-right mt-3 ms-4">
                                <button type="button" class="btn btn-primary">Save changes</button>&nbsp;
                                <button type="button" class="btn btn-default">Cancel</button>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content">
                                <div class="tab-pane fade active show" id="account-general">
                                    <div class="card-body media align-items-center">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt class="d-block ui-w-80">
                                        <div class="media-body">
                                            <label class="btn btn-outline-primary">
                                            Upload new photo
                                            <input type="file" class="account-settings-fileinput">
                                        </label> &nbsp;
                                            <button type="button" class="btn btn-default md-btn-flat">Reset</button>
                                            <div class="text-black small mt-1">Allowed JPG, GIF or PNG. Max size of 800K</div>
                                        </div>
                                    </div>
                                    <hr class="border-light m-0">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label class="form-label fw-bold mb-2">Username</label>
                                            <input type="text" class="form-control mb-1" value="thanhtaik17fptu" />
                                        </div>
                                        <div class="form-group mb-2">
                                            <label class="form-label fw-bold mb-2">Name</label>
                                            <input type="text" class="form-control" value="Nguyễn Thành Tài">
                                        </div>
                                        <div class="form-group mb-2">
                                            <label class="form-label fw-bold mb-2">E-mail</label>
                                            <input type="text" class="form-control mb-1" value="thanhtai@mail.com">
                                            <div class="alert alert-warning mt-3">
                                                Your email is not confirmed. Please check your inbox.<br>
                                                <a href="javascript:void(0)">Resend confirmation</a>
                                            </div>
                                        </div>
                                        <div class="form-group mb-2">
                                            <label class="form-label fw-bold mb-2">Company</label>
                                            <input type="text" class="form-control" value="Company Ltd.">
                                        </div>
                                    </div>
                                </div>
                                <!-- Other tabs content -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

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
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js " integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js " integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+ " crossorigin="anonymous "></script>

    </body>

</html>