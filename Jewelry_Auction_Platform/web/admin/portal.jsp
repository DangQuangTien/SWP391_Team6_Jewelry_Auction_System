<%-- 
    Document   : portal
    Created on : May 19, 2024, 11:12:07 AM
    Author     : User
--%>

<%@page import="dao.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.user.ValuationRequest"%>
<%@page import="entity.user.ValuationRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <% 
            ArrayList<ValuationRequest> listRequest = new ArrayList<>();
            UserDAO dao = new UserDAO();
            listRequest = dao.displayValuationRequest();
        %>
        <h1>Valuation Request</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone number</th>
                    <th>Communication</th>
                    <th>Description</th>
                    <th>Photos</th>
                </tr>
            </thead>
            <tbody>
                <% for (ValuationRequest r : listRequest){ %>
             <tr>
                 <<form action=""></form>>
                    <td><%= r.getName() %></td>
                    <td><%= r.getEmail() %></td>
                    <td><%= r.getPhoneNumber() %></td>
                    <td><%= r.getCommunication() %></td>
                    <td><%= r.getDescription() %></td>
                    <td><img style="width: 100px; height: 100px" src="<%= r.getPhotos() %>"></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
