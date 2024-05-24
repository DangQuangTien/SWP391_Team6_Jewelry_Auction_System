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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Staff</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
        }
        h3, h2 {
            color: #4CAF50;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        img {
            max-width: 100px;
            max-height: 100px;
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
    </style>
    <script>
        function confirmLogout(event) {
            if (!confirm("Are you sure you want to log out?")) {
                event.preventDefault();
            }
        }
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
            greeting = "Night!";
        }
    } catch (Exception ex) {
        ex.getMessage();
    }
%>
<body>
    <h3>Good <%= greeting %> Welcome back, Staff</h3>
    <form action="${pageContext.request.contextPath}/MainController" method="POST">
        <input type="submit" name="action" class="submit-btn" value="Valuation Request">
    </form>
    <br>
    <form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
        <input type="submit" name="action" class="submit-btn" value="Log out">
    </form>
    <br>
    <c:set var="listValuationRequest" value="${requestScope.listValuationRequest}"/>
    <c:if test="${not empty listValuationRequest}">
        <h2>Valuation Requests</h2>
        <table>
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
                <c:forEach var="val" items="${listValuationRequest}" varStatus="loop">
                    <tr>
                        <td>${loop.index + 1}</td>
                        <td><img src="${val.photo}" alt="Photo"></td>
                        <td>${val.name}</td>
                        <td>${val.email}</td>
                        <td>${val.phone}</td>
                        <td>${val.communication}</td>
                        <td>${val.description}</td>
                        <td style="color: ${val.status == 0 ? 'green' : 'red'}">
                            ${val.status == 0 ? 'Pending' : 'Done'}
                        </td>
                        <td>
                            <form action="${pageContext.request.contextPath}/staff/valuation.jsp">
                                <input type="hidden" name="photoURL" value="${val.photo}">
                                <input type="hidden" name="valuationID" value="${val.valuationID}">
                                <input type="submit" class="submit-btn" value="Valuate">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
