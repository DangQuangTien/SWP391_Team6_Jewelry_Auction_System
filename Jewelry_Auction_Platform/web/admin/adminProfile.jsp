<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="./style/styles.css">
    <title>Admin profile</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-2 d-flex flex-column justify-content-between bg-dark min-vh-100 sidebar">
                <div class="mt-4">
                    <a href="" class="text-white text-decoration-none d-flex align-items-center justify-content-center sidebar-logo" role="button">
                        <img src="../images/logo/auction_jewelry.png" alt="Logo">
                    </a>
                    <hr class="text-white d-none d-sm-block" />
                    <ul class="nav nav-pills flex-column mt-4 mt-sm-0" id="menu">
                        <li class="nav-item mb-0 my-sm-0 my-0">
                            <a class="nav-link text-white" href="admin.jsp" aria-current="page">
                                <i class="fas fa-tachometer-alt"></i>
                                <span class="ms-2 d-none d-sm-inline">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0">
                            <a class="nav-link text-white" href="userManagement.jsp" aria-current="page">
                                <i class="fa fa-user"></i>
                                <span class="ms-2 d-none d-sm-inline">User Management</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0 ">
                            <a class="nav-link text-white " href="# " aria-current="page ">
                                <i class="fa fa-user "></i>
                                <span class="ms-2 d-none d-sm-inline ">Products</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0">
                            <a class="nav-link text-white " href="# " aria-current="page ">
                                <i class="fa fa-gavel"></i>
                                <span class="ms-2 d-none d-sm-inline">Jewelry Management</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
            <main class="col-10 main-content m-0 p-0">
                <div class="bg-dark w-100 d-flex justify-content-between">
                    <div class="title navbar">
                        <h2 class="text-white ps-4">Admin Profile</h2>
                    </div>
                    <div class="dropdown me-5">
                        <a class="btn border-none outline-none text-white dropdown-toggle " type="button " id="triggerId " data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user "></i>
                            <h6 class="text-white ms-2 d-none d-sm-inline">Admin</h6>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="triggerId">
                            <a class="dropdown-item" href="adminProfile.jsp">Profile</a>
                            <a class="dropdown-item" href="#">Change Password</a>
                            <a class="dropdown-item" href="#">Logout</a>
                        </div>
                    </div>
                </div>
                <div class="container light-style flex-grow-1 container-p-y">
                    <h4 class="font-weight-bold py-3 mb-2">
                        Account settings
                    </h4>
                    <div class="card overflow-hidden px-4 py-2">
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
                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avata" width="100" height="100" class="d-block ui-w-80">
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js " integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r " crossorigin="anonymous "></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js " integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+ " crossorigin="anonymous "></script>
</body>

</html>