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
    </head>
    <body>
        <%
            String userID = (String) session.getAttribute("USERID");
            UserDAOImpl dao = new UserDAOImpl();
            List<Jewelry> listJewelry = dao.getJewelryByUserID(userID);
        %>
        <h1>Jewelry List for User: <%= userID%></h1>
        <%
            if (listJewelry != null && !listJewelry.isEmpty()) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Jewelry ID</th>
                    <th>Category ID</th>
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
                    <th>Valuation ID</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Jewelry jewelry : listJewelry) {
                %>
                <tr>
                    <td><%= jewelry.getJewelryID()%></td>
                    <td><%= jewelry.getCategoryName() %></td>
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
                    <td><%= jewelry.getValuationId()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <p>No jewelry found for the user.</p>
        <%
            }
        %>

    </body>
</html>
