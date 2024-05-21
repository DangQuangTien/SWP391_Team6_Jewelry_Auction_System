<%-- 
    Document   : profile
    Created on : May 19, 2024, 10:13:29 AM
    Author     : User
--%>

<%@page import="entity.user.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <%
        User user = (User) request.getAttribute("USER_DATA");
    %>
    <body>
        <h1>My Profile</h1>
        <h2>USER INFORMATION</h2>
        <% if (user != null) {%>
        <div>
            <%= user.getFirstName() + " " + user.getLastName()%><br>
            Signed up on <%= user.getJoinedDate()%><br><br>
            Email: <%= user.getEmail()%><br>
            Phone number: <%= (user.getPhoneNumber() != null) ? user.getPhoneNumber() : ""%><br>
            Gender: <%= user.getGender()%><br>
            DOB: <%= user.getDOB()%>
        </div>
        <% }%>
        <h2>SHIPPING ADDRESS</h2>
        <h2>CREDIT CARD</h2>
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="Log out">
        </form>
    </body>
</html>
