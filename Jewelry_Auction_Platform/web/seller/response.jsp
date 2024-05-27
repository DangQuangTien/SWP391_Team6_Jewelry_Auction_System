<%-- 
    Document   : response
    Created on : May 26, 2024, 4:34:32 AM
    Author     : User
--%>

    <%@page import="java.util.List"%>
        <%@page import="entity.product.Jewelry"%>
            <%@page import="dao.UserDAOImpl"%>
                <%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <title>Notification</title>
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
                                width: 100%;
                                border-collapse: collapse;
                                margin-bottom: 20px;
                                border: 1px solid #ddd;
                                background-color: #fff;
                            }
                            
                            th,
                            td {
                                padding: 10px;
                                text-align: left;
                                border-bottom: 1px solid #ddd;
                            }
                            
                            th {
                                background-color: #f2f2f2;
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
                        </style>
                    </head>

                    <body>

                        <div class="container">
                            <h1>Overall Assessment for your requests</h1>
                            <style>
                                body {
                                    font-family: Arial, sans-serif;
                                    margin: 0;
                                    padding: 0;
                                    background-color: #f9f9f9;
                                    color: #333;
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
                                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                                }
                                
                                th,
                                td {
                                    padding: 10px;
                                    text-align: left;
                                    border: 1px solid #ddd;
                                }
                                
                                th {
                                    background-color: #f2f2f2;
                                    color: #333;
                                    font-weight: bold;
                                }
                                
                                tr:nth-child(even) {
                                    background-color: #f9f9f9;
                                }
                                
                                tr:hover {
                                    background-color: #f1f1f1;
                                }
                                
                                p {
                                    text-align: center;
                                    margin-top: 20px;
                                    font-size: 1.2em;
                                }
                            </style>
                            </head>

                            <body>
                                <%
            String userID = (String) session.getAttribute("USERID");
            UserDAOImpl dao = new UserDAOImpl();
            List<Jewelry> listJewelry = dao.getJewelryByUserID(userID);
            int i = 0;
            if (listJewelry != null && !listJewelry.isEmpty()) {
        %>
                                    <table>
                                        <thead>
                                            <tr>
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
                                                    <td>
                                                        <%= jewelry.getJewelryName()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getArtist()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getCirca()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMaterial()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getDial()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getBraceletMaterial()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getCaseDimensions()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getBraceletSize()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getSerialNumber()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getReferenceNumber()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getCaliber()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMovement()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getCondition()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMetal()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getGemstones()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMeasurements()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getWeight()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getStamped()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getRingSize()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMinPrice()%>
                                                    </td>
                                                    <td>
                                                        <%= jewelry.getMaxPrice()%>
                                                    </td>
                                                    <td><input type="button" class="action-btn" value="Confirm"></td>
                                                </tr>
                                                <% } %>
                                        </tbody>
                                    </table>
                                    <% } else { %>
                                        <p class="no-jewelry">No jewelry found</p>
                                        <% } %>
                                            <h1>Request to ship jewelry</h1>
                                            <% List<RequestShipment> listRequestShipment = dao.displayRequestShipment(userID); %>
                                                <% if (listRequestShipment != null && !listRequestShipment.isEmpty()) { %>
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
                                                            <% for (RequestShipment r : listRequestShipment) {%>
                                                                <tr>
                                                                    <td>
                                                                        <%= i++%>
                                                                    </td>
                                                                    <td>
                                                                        <%= r.getContent()%>
                                                                    </td>
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