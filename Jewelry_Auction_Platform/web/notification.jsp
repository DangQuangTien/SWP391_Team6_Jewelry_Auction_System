<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jewelry Auctions - Notifications</title>
    <link rel="stylesheet" type="text/css" href="component/header.css">
    <link rel="stylesheet" type="text/css" href="component/footer.css">
    <link rel="stylesheet" type="text/css" href="component/notification.css">
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
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Auction.jsp">Auction</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="seller/selling.html">Sell</a>
                    </li>
                    <% String username = (String) session.getAttribute("USERNAME");
                    if (username == null) { %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                    <% } else { %>
                    <li class="nav-item">
                        <a class="nav-link" href="MainController?action=Profile&username=<%= username %>"><%= username %></a>
                    </li>
                    <% } %>
                    <li class="nav-item">
                        <a class="nav-link" href="notifications.jsp" id="bell-icon"><i class="fas fa-bell"></i></a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search for anything" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </header>

    <div class="container-fluid">
        <!-- Main Content -->
        <main role="main" class="col main-content">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Notifications</h1>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 notification-item" onclick="openNotificationDetail('New Bid Placed', 'A new bid has been placed on your item \'14k Solid Gold Patek Watch\'.', '5 minutes ago', 'img/sample.jpg')">
                        <h6>New Bid Placed</h6>
                        <p>A new bid has been placed on your item "14k Solid Gold Patek Watch".</p>
                        <small>5 minutes ago</small>
                        <div class="notification-buttons">
                            <button class="btn btn-sm btn-primary" onclick="event.stopPropagation(); markAsRead(this)">Mark as Read</button>
                            <button class="btn btn-sm btn-danger" onclick="event.stopPropagation(); deleteNotification(this)">Delete</button>
                        </div>
                    </div>
                    <div class="col-md-12 notification-item" onclick="openNotificationDetail('Auction Ending Soon', 'The auction for \'Vintage Diamond Ring\' is ending in 1 hour.', '10 minutes ago', 'img/sample2.jpg')">
                        <h6>Auction Ending Soon</h6>
                        <p>The auction for "Vintage Diamond Ring" is ending in 1 hour.</p>
                        <small>10 minutes ago</small>
                        <div class="notification-buttons">
                            <button class="btn btn-sm btn-primary" onclick="event.stopPropagation(); markAsRead(this)">Mark as Read</button>
                            <button class="btn btn-sm btn-danger" onclick="event.stopPropagation(); deleteNotification(this)">Delete</button>
                        </div>
                    </div>
                    <!-- Repeat similar blocks for more notifications -->
                </div>
            </div>
        </main>
    </div>

    <!-- Notification Detail -->
    <div class="modal fade" id="notificationModal" tabindex="-1" role="dialog" aria-labelledby="notificationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="notificationModalLabel">Notification Detail</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img id="modalImage" src="" alt="Notification Image" class="img-fluid mb-3">
                    <h6 id="modalTitle"></h6>
                    <p id="modalText"></p>
                    <small id="modalTime"></small>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

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
    <script>
       function openNotificationDetail(title, text, time, imageUrl) { 
        document.getElementById('modalTitle').innerText = title;
        document.getElementById('modalText').innerText = text;
        document.getElementById('modalTime').innerText = time;
        document.getElementById('modalImage').src = imageUrl;

    $('#notificationModal').modal('show');
}
        function markAsRead(button) {
            alert("Marked as read");
        }

        function deleteNotification(button) {
            alert("Deleted");
            button.closest('.notification-item').remove();
        }
    </script>
</body>
</html>
