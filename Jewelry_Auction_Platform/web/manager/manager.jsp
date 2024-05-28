<%-- 
    Document   : manager
    Created on : May 23, 2024, 1:23:38 AM
    Author     : User
--%>

<%@page import="entity.product.Jewelry"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
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
        </script>
        <style>
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
            tr:hover {
                background-color: #f5f5f5;
            }

            .submit-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .submit-btn:hover {
                background-color: #45a049;
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
        </style>
        <script>

        </script>
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
        <h3>Good <%= greeting%> Welcome back, Manager</h3>
    <a href="auctionManagement.jsp">Auction Management</a><br><br>
    <form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
        <input type="submit" name="action" class="submit-btn" value="Log out">
    </form>

    <%
        UserDAOImpl dao = new UserDAOImpl();
        List<Jewelry> listJewelry = dao.displayAllJewelry();
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
        <form action="${pageContext.request.contextPath}/MainController" method="GET" onsubmit="confirmAuction(event)">
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
                <% if (!jewelry.getStatus_From_Manager().equals("1")) {%>
                <td>
                    <input type="hidden" name="valuationID" value="<%= jewelry.getValuationId()%>">
                    <input type="submit" class="action-btn"  name="action" value="Confirm to Auction">
                </td>
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
<% }%>
</body>

</html>
