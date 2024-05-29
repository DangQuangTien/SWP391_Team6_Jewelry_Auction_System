<%-- 
    Document   : manager
    Created on : May 23, 2024, 1:23:38 AM
    Author     : User
--%>
<%@page import="entity.product.Jewelry"%>
<%@page import="java.util.List"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script>
            function confirmLogout(event) {
                if (!confirm("Are you sure you want to log out?")) {
                    event.preventDefault();
                }
            }
            function confirmAuction(event) {
                if (!confirm("Do you confirm approving this bid?")) {
                    event.preventDefault();
                }
            }
            function toggleApprovalTable() {
                var table = document.getElementById("approvalTable");
                if (table.style.display === "none" || table.style.display === "") {
                    table.style.display = "table";
                } else {
                    table.style.display = "none";
                }
            }
        </script>
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }
            .container-fluid {
                height: 100%;
                display: flex;
                flex-direction: column;
            }
            .content {
                flex: 1;
                overflow-y: auto;
                padding: 20px;
            }
            h3 {
                font-size: 2em;
                color: #4CAF50;
                text-align: center;
                padding: 20px;
                border-radius: 10px;
                background: linear-gradient(135deg, #ff6f91, #ff9671, #ffc75f, #f9f871, #d65db1, #845ec2, #2c73d2, #0081cf, #0089ba, #008e9b, #00c9a7);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                box-shadow: 0 0 20px rgba(255, 255, 255, 0.8);
                animation: wave 3s linear infinite;
            }

            @keyframes wave {
                0%, 100% {
                    transform: translateY(0);
                }
                25% {
                    transform: translateY(-5px);
                }
                50% {
                    transform: translateY(0);
                }
                75% {
                    transform: translateY(5px);
                }
            }
            .table-responsive {
                margin: 20px auto;
            }
            table {
                width: 100%;
                margin: 20px auto;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                border: 1px solid #ddd;
            }
            

            th, td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
                border-right: 1px solid #ddd;
            }

            th {
                background-color: #f2f2f2;
                border-top: 1px solid #ddd;
            }
            tr:hover {
                background-color: #f5f5f5;
            }

            .submit-btn, .action-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .submit-btn:hover, .action-btn:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <%
        String greeting = "day!";
        try {
            LocalTime now = LocalTime.now();
            int hour = now.getHour();
            if (hour < 12) {
                greeting = "Morning!";
            } else if (hour < 17) {
                greeting = "Afternoon!";
            } else {
                greeting = "Evening!";
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
    %>
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
                            <a class="nav-link" href="auctionManagement.jsp">Auction Management</a>
                        </li>
                    </ul>
                    <form class="form-inline" action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="action" value="Log out">Log out</button>
                    </form>
                </div>
            </nav>
        </header>

        <div class="container-fluid">
            <div class="content">
                <h3>Good <%= greeting %> Welcome back, Manager</h3>
                <button class="btn btn-primary mb-3" onclick="toggleApprovalTable()">Approval Request</button>

                <%
                    UserDAOImpl dao = new UserDAOImpl();
                    List<Jewelry> listJewelry = dao.displayAllJewelry();
                    if (listJewelry != null && !listJewelry.isEmpty()) {
                %>
                <div class="table-responsive">
                    <table id="approvalTable" class="table table-bordered table-hover" style="display:none;">
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
                            <% for (Jewelry jewelry : listJewelry) { %>
                            <form action="${pageContext.request.contextPath}/MainController" method="GET" onsubmit="confirmAuction(event)">
                                <tr>
                                    <% String[] photoArray = jewelry.getPhotos().split(";"); %>
                                    <td><img class="img-thumbnail" style="width: 100px; height: 100px" src="${pageContext.request.contextPath}/<%= photoArray[0] %>"></td>
                                    <td><%= jewelry.getJewelryName() %></td>
                                    <td><%= jewelry.getArtist() %></td>
                                    <td><%= jewelry.getCirca() %></td>
                                    <td><%= jewelry.getMaterial() %></td>
                                    <td><%= jewelry.getDial() %></td>
                                    <td><%= jewelry.getBraceletMaterial() %></td>
                                    <td><%= jewelry.getCaseDimensions() %></td>
                                    <td><%= jewelry.getBraceletSize() %></td>
                                    <td><%= jewelry.getSerialNumber() %></td>
                                    <td><%= jewelry.getReferenceNumber() %></td>
                                    <td><%= jewelry.getCaliber() %></td>
                                    <td><%= jewelry.getMovement() %></td>
                                    <td><%= jewelry.getCondition() %></td>
                                    <td><%= jewelry.getMetal() %></td>
                                    <td><%= jewelry.getGemstones() %></td>
                                    <td><%= jewelry.getMeasurements() %></td>
                                    <td><%= jewelry.getWeight() %></td>
                                    <td><%= jewelry.getStamped() %></td>
                                    <td><%= jewelry.getRingSize() %></td>
                                    <td><%= jewelry.getMinPrice() %></td>
                                    <td><%= jewelry.getMaxPrice() %></td>
                                    <% if (!jewelry.getStatus_From_Manager().equals("1")) { %>
                                    <td>
                                        <input type="hidden" name="valuationID" value="<%= jewelry.getValuationId() %>">
                                        <button type="submit" class="btn btn-success" name="action" value="Confirm to Auction">Confirm to Auction</button>
                                    </td>
                                    <% } else { %>
                                    <td class="text-danger">Confirmed</td>
                                    <% } %>
                                </tr>
                            </form>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <% } else { %>
                <p class="alert alert-warning">No jewelry found</p>
                <% } %>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
