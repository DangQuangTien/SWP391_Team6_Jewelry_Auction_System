<!DOCTYPE html>
<html lang="en">

    <head>
        <title>User profile</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="..//component/userProfile.css">
        <!-- Bootstrap CSS v5.2.1 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
        <script>
            function confirmLogout(url) {
                if (confirm("Are you sure you want to log out?")) {
                    window.location.href = url;
                }
            }
        </script>
        <style>
            .header-information {
                transition: top 0.3s;
            }

            .navbar-sticky {
                position: sticky;
                top: 0;
                z-index: 1000;
            }
        </style>
    </head>

    <body>
        <header class="header-information bg-light">
            <div class="w-100 container">
                <div class="row align-items-center">
                    <!-- Social Icons -->
                    <div class="col text-center">
                        <i class="fab fa-facebook-f fa-2x social-icon"></i>
                        <i class="fab fa-twitter fa-2x social-icon ms-4"></i>
                        <i class="fab fa-instagram fa-2x social-icon ms-4"></i>
                    </div>

                    <!-- Logo -->
                    <div class="col text-center">
                        <img src="../images/logo/auction_jewelry.png" width="120" height="150" />
                    </div>

                    <!-- Search and User Profile -->
                    <div class="col d-flex">
                        <form class="d-flex">
                            <input class="form-control" type="search" placeholder="Search Product..." aria-label="Search">
                            <button class="btn btn-outline-success ms-2" type="submit">Search</button>
                        </form>
                        <i class="fas fa-user-circle fa-2x ms-4"></i>
                    </div>
                </div>
            </div>

        </header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-sticky border-bottom">
            <div class="container-fluid">
                <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0 gap-5 item-menu fw-bold">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Auction
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">All</a></li>
                                <li><a class="dropdown-item" href="#">Jewelry</a></li>
                                <li><a class="dropdown-item" href="#">Gem</a></li>
                                <li><a class="dropdown-item" href="#">Material</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sell</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
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
                                <a class="list-group-item list-group-item-action" href="javascript:void(0);" onclick="confirmLogout('${pageContext.request.contextPath}/MainController?action=Log out')">Log out</a>
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

        <footer class="container align-items-center ">
            <div class="footer-text--title ">
                <span class=" ">Jewelry Auction Online</span>
            </div>
            <div class="footer-follow--us d-flex align-items-center ">
                <span class="me-3 fw-bold follow_us--text ">Follow Us</span>
                <i class="fab fa-facebook-f fa-2x social-icon "></i>
                <i class="fab fa-twitter fa-2x social-icon ms-4 "></i>
                <i class="fab fa-instagram fa-2x social-icon ms-4 "></i>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js " integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js " integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+ " crossorigin="anonymous "></script>

    </body>
</html>