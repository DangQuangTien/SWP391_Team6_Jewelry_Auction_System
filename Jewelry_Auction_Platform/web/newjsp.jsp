<%-- 
    Document   : newjsp
    Created on : May 21, 2024, 9:58:55 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RequestDispatcher dist = request.getRequestDispatcher("MainController");
    dist.forward(request, response);
%>

