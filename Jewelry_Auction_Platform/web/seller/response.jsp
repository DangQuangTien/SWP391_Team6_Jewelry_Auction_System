<%@page import="entity.request_shipment.RequestShipment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.product.Jewelry"%>
<%@page import="dao.UserDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Notification</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2ecec;
                padding-top: 20px;
            }
            .no-jewelry {
                text-align: center;
                font-style: italic;
                color: #888;
                margin-top: 20px;
            }
            .action-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .action-btn:hover {
                background-color: #45a049;
            }
            .hidden {
                display: none;
            }
            .navbar-nav .nav-link, .navbar-brand {
                color: black !important;
            }
        </style>
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
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Auction.jsp">Auction</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/seller/selling.html">Sell</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/bidder/profile.jsp">Profile</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        
        <div class="container">
            <h1 class="text-center text-success">Overall Assessment for your requests</h1>
            <%
                String userID = (String) session.getAttribute("USERID");
                UserDAOImpl dao = new UserDAOImpl();
                List<Jewelry> listJewelry = dao.getJewelryByUserID(userID);
                if (listJewelry != null && !listJewelry.isEmpty()) {
            %>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="thead-light">
                        <tr>
                            <th>Photo</th>
                            <th>Jewelry Name</th>
                            <th>Artist</th>
                            <th>Circa</th>
                            <th>Material</th>
                            <th>Dial</th>
                            <th>Bracelet Material</th>
                            <th>Case Dimensions</th>
                            <th>Bracelet Size</th>
                            <th>Serial Number</th>
                            <th>Reference Number</th>
                            <th>Caliber</th>
                            <th>Movement</th>
                            <th>Condition</th>
                            <th>Metal</th>
                            <th>Gemstones</th>
                            <th>Measurements</th>
                            <th>Weight</th>
                            <th>Stamped</th>
                            <th>Ring Size</th>
                            <th>Min Price</th>
                            <th>Max Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Jewelry jewelry : listJewelry) {%>
                        <tr>
                            <% String[] photoArray = jewelry.getPhotos().split(";"); %>
                            <td><img class="img-fluid" src="${pageContext.request.contextPath}/<%= photoArray[0] %>" alt="Jewelry Image"></td>
                            <td><%= jewelry.getJewelryName()%></td>
                            <td><%= jewelry.getArtist()%></td>
                            <td><%= jewelry.getCirca()%></td>
                            <td><%= jewelry.getMaterial()%></td>
                            <td><%= jewelry.getDial()%></td>
                            <td><%= jewelry.getBraceletMaterial()%></td>
                            <td><%= jewelry.getCaseDimensions()%></td>
                            <td><%= jewelry.getBraceletSize()%></td>
                            <td><%= jewelry.getSerialNumber()%></td>
                            <td><%= jewelry.getReferenceNumber()%></td>
                            <td><%= jewelry.getCaliber()%></td>
                            <td><%= jewelry.getMovement()%></td>
                            <td><%= jewelry.getCondition()%></td>
                            <td><%= jewelry.getMetal()%></td>
                            <td><%= jewelry.getGemstones()%></td>
                            <td><%= jewelry.getMeasurements()%></td>
                            <td><%= jewelry.getWeight()%></td>
                            <td><%= jewelry.getStamped()%></td>
                            <td><%= jewelry.getRingSize()%></td>
                            <td><%= jewelry.getMinPrice()%></td>
                            <td><%= jewelry.getMaxPrice()%></td>
                            <td><button class="btn btn-success">Confirm</button></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
            <% } else { %>
            <p class="no-jewelry">No jewelry found</p>
            <% } %>
            
            <h1 class="text-center text-success">Request to ship jewelry</h1>
            <%
                List<RequestShipment> listRequestShipment = dao.displayRequestShipment(userID);
                if (listRequestShipment != null && !listRequestShipment.isEmpty()) {
            %>
            <p id="requestMessage" class="no-jewelry">You have a request for shipment. Please click to check.</p>
            <button class="btn btn-primary mb-3" onclick="toggleRequestShipment()">View Detail</button>
            <div class="table-responsive">
                <table id="requestShipment" class="table table-bordered table-hover hidden">
                    <thead class="thead-light">
                        <tr>
                            <th>No</th>
                            <th>Content</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int i = 1;
                            for (RequestShipment r : listRequestShipment) {
                        %>
                        <tr>
                            <td><%= i++%></td>
                            <td><%= r.getContent()%></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
            <% } else { %>
            <p class="no-jewelry">There is no request shipment</p>
            <% }%>
        </div>
        
        <script>
            function toggleRequestShipment() {
                var requestShipment = document.getElementById("requestShipment");
                requestShipment.classList.toggle("hidden");
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

