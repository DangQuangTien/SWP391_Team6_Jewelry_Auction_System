<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="icon" href="../images/logo/auction_jewelry.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="./style/styles.css">
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
                        <h2 class="text-white ps-4">Admin Dashboard</h2>
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
                    <div class="row my-4">

                        <div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-6">
                            <div class="card">
                                <h5 class="card-header">Revenue</h5>
                                <canvas id="revenueChart"></canvas>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-6 mb-4 mb-lg-0">
                            <div class="card">
                                <h5 class="card-header">Items Auctioned</h5>
                                <div class="card-body">
                                    <h5 class="card-title">345k</h5>
                                    <p class="card-text">Feb 1 - Apr 1, United States</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mt-5 mb-lg-0 col-lg-6">
                            <div class="card">
                                <h5 class="card-header">Numbers of auctions</h5>
                                <div class="card-body">
                                    <h5 class="card-title">43</h5>
                                    <p class="card-text">Feb 1 - Apr 1, United States</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mt-5 mb-lg-0 col-lg-6">
                            <div class="card">
                                <h5 class="card-header">Bidder Activity</h5>
                                <div class="card-body">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">UserID</th>
                                                <th scope="col">Amount</th>
                                                <th scope="col">Auction</th>
                                                <th scope="col">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">39281823</th>
                                                <td>$ 6500</td>
                                                <td>12</td>
                                                <td class="text-green">Active</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">39281345</th>
                                                <td>$ 3500</td>
                                                <td>12</td>
                                                <td class="text-green">Active</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">54281124</th>
                                                <td>$ 5200</td>
                                                <td>12</td>
                                                <td class="text-red">Block</td>
                                            </tr>
                                        </tbody>
                                    </table>
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('revenueChart').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                datasets: [{
                    label: 'Revenue' + ' ' + '2024',
                    backgroundColor: 'rgb(16, 235, 31)',
                    borderColor: 'rgb(16, 235, 31)',
                    data: [500, 550, 580, 720, 830, 1245, 2260, 1770, 2980, 1290, 2000, 4200]
                }]
            },
            options: {}
        });
    </script>
</body>

</html>