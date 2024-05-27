<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin profile</title>
    <link rel="stylesheet" href="./style/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/2.3.1/css/searchPanes.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.2/css/select.bootstrap5.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

</head>


<body>
    <div class=" container-fluid ">
        <div class="row ">
            <div class="col-2 d-flex flex-column justify-content-between bg-dark min-vh-100 sidebar ">
                <div class="mt-4 ">
                    <a href=" " class="text-white text-decoration-none d-flex align-items-center justify-content-center sidebar-logo " role="button ">
                        <img src="../images/logo/auction_jewelry.png " alt="Logo ">
                    </a>
                    <hr class="text-white d-none d-sm-block " />
                    <ul class="nav nav-pills flex-column mt-4 mt-sm-0 " id="menu ">
                        <li class="nav-item mb-0 my-sm-0 my-0 ">
                            <a class="nav-link text-white " href="admin.jsp " aria-current="page ">
                                <i class="fas fa-tachometer-alt "></i>
                                <span class="ms-2 d-none d-sm-inline ">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0 ">
                            <a class="nav-link text-white " href="# " aria-current="page ">
                                <i class="fa fa-user "></i>
                                <span class="ms-2 d-none d-sm-inline ">User Management</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0 ">
                            <a class="nav-link text-white " href="# " aria-current="page ">
                                <i class="fa fa-user "></i>
                                <span class="ms-2 d-none d-sm-inline ">Products</span>
                            </a>
                        </li>
                        <li class="nav-item mb-0 my-sm-0 my-0 ">
                            <a class="nav-link text-white " href="# " aria-current="page ">
                                <i class="fa fa-gavel "></i>
                                <span class="ms-2 d-none d-sm-inline ">Jewelry Management</span>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
            <main class="col-10 main-content m-0 p-0 ">
                <div class="bg-dark w-100 d-flex justify-content-between ">
                    <div class="title navbar ">
                        <h2 class="text-white ps-4 ">User Management</h2>
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
                <div class="container light-style flex-grow-1 container-p-y ">
                    <h4 class="font-weight-bold py-3 mb-2 ">
                        List of Users
                    </h4>
                    <div>
                        <table id="myTable" class="display">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Email Address</th>
                                    <th>Address</th>
                                    <th>Role</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>39281813</td>
                                    <td>Lenny Phillips</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>12939312</td>
                                    <td>Cillian Gallagher</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Customer</td>
                                </tr>
                                <tr>
                                    <td>93829323</td>
                                    <td>Zain Stone</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>83272832</td>
                                    <td>Ben Thompson</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Admin</td>
                                </tr>
                                <tr>
                                    <td>26372838</td>
                                    <td>Elias Cox</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Customer</td>
                                </tr>
                                <tr>
                                    <td>62736232</td>
                                    <td>Roman Houghton</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Customer</td>
                                </tr>
                                <tr>
                                    <td>09283923</td>
                                    <td>Maximilian Chapman</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                                <tr>
                                    <td>59382932</td>
                                    <td>Henry Cavill</td>
                                    <td>0123456789</td>
                                    <td>xxxx@gmail.com</td>
                                    <td>Quận 9, Thành phố Hồ Chí Minh</td>
                                    <td>Staff</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable();
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r " crossorigin="anonymous "></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+ " crossorigin="anonymous "></script>
</body>

</html>