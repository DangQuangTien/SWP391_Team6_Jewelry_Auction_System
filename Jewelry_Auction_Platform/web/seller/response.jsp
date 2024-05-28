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
                margin: 0;
                padding: 20px;
                background-color: #f7f7f7;
            }
            .container {
                max-width: 1200px;
                margin: 0 auto;
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
                color: #4CAF50;
            }
            table {
                width: 90%;
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

            h1 {
                text-align: center;
                color: #444;
                margin-top: 20px;
            }
            table {
                width: 90%;
                margin: 20px auto;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }

            tr:hover {
                background-color: #f5f5f5;
            }
            .no-jewelry {
                text-align: center;
                font-style: italic;
                color: #888;
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
        </style>
    </head>
    <body>
    <a href="${pageContext.request.contextPath}/home.jsp">Home</a> |
    <a href="${pageContext.request.contextPath}/Auction.jsp">Auction</a> |
    <a href="${pageContext.request.contextPath}/seller/selling.html">Sell</a> |
    <a href="${pageContext.request.contextPath}/bidder/profile.jsp">Profile</a>
    <div class="container">
        <h1>Overall Assessment for your requests</h1>
        <%
            String userID = (String) session.getAttribute("USERID");
            UserDAOImpl dao = new UserDAOImpl();
            List<Jewelry> listJewelry = dao.getJewelryByUserID(userID);
            if (listJewelry != null && !listJewelry.isEmpty()) {
        %>
        <table>
            <thead>
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
            <form action="${pageContext.request.contextPath}/MainController">
                <tr>
                    <% String[] photoArray = jewelry.getPhotos().split(";");%>
                    <td><img style="width: 200px; height: 200px" src="${pageContext.request.contextPath}/<%= photoArray[0]%>"></td>
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
                    <% if (!jewelry.getStatus_From_Seller().equals("1")) {%>
                <input type="hidden" name="valuationID" value="<%= jewelry.getValuationId()%>">
                <td><input type="submit" name="action" class="action-btn" value="Confirm"></td>
                    <%  } else { %>
                <td style="color: red">Confirmed</td>
                <% } %>
                </tr>
            </form>
            <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p class="no-jewelry">No jewelry found</p>
        <% } %>
        <h1>Request to ship jewelry</h1>
        <%
            List<RequestShipment> listRequestShipment = dao.displayRequestShipment(userID);
            if (listRequestShipment != null && !listRequestShipment.isEmpty()) {
        %>
        <p id="requestMessage" class="no-jewelry">You have a request for shipment. Please click to check.</p>
        <input type="button" class="action-btn" value="View Detail" onclick="toggleRequestShipment()">
        <table id="requestShipment" class="hidden" border="1">
            <thead>
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
        <% } else { %>
        <p class="no-jewelry">There is no request shipment</p>
        <% }%>
    </div>
    <script>
        function toggleRequestShipment() {
            var requestShipment = document.getElementById("requestShipment");
            if (requestShipment.classList.contains("hidden")) {
                requestShipment.classList.remove("hidden");
            } else {
                requestShipment.classList.add("hidden");
            }
        }
    </script>
</body>
</html>
