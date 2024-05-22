<%-- 
    Document   : staff
    Created on : May 23, 2024, 1:09:59 AM
    Author     : User
--%>

<%@page import="entity.valuation.Valuation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff</title>
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
                greeting = "Night!";
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        //Display valuatio request
        ArrayList<Valuation> listValuationRequest = (ArrayList<Valuation>) request.getAttribute("listValuationRequest");

    %>
    <body>
        <h3>Good <%= greeting%> Welcome Staff</h3>
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="Valuation Request"> 
        </form>
    <br>
    <% if (listValuationRequest != null) { %>
    <h2>Valuation Request</h2>
    <table border="1">
        <thead>
            <tr>
                <th>No</th>
                <th>Photo</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Communication Preference</th>
                <th>Description</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% int i = 0;
                    for (Valuation val : listValuationRequest) {%>
            <tr>
                <td><%= i++%></td>
                <td><img style="width: 100px; height: 100px" src="<%= val.getPhoto()%>"></td>
                <td><%= val.getName()%></td>
                <td><%= val.getEmail()%></td>
                <td><%= val.getPhone()%></td>
                <td><%= val.getCommunication()%></td>
                <td><%= val.getDescription()%></td>
                <td><%= (val.getStatus() == 0) ? "Pending" : "Done"%></td>
                <td>Valuate</td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <% } else { %>
    <p style="color: red">Empty valuation request!</p>
    <% }%>
</body>
</html>