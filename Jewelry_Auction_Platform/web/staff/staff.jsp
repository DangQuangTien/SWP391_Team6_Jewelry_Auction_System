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
        <h3>Good <%= greeting%> Welcome back Staff</h3>
        <form action="${pageContext.request.contextPath}/MainController" method="POST">
            <input type="submit" name="action" value="Valuation Request"> 
        </form>
    <br>
    <form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
        <input type="submit" name="action" value="Log out">
    </form>
    <br>
    <c:set var="listValuationRequest" value="${requestScope.listValuationRequest}"/>
    <c:if test="${not empty listValuationRequest}">
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

                <c:forEach var="val" items="${listValuationRequest}">
                    <tr>
                <form action="${pageContext.request.contextPath}/staff/valuation.jsp">
                    <td></td>
                    <td><img style="width: 100px; height: 100px" src="${val.photo}"></td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.communication}</td>
                    <td>${val.description}</td>
                    <input type="hidden" name="photoURL" value="${val.photo}">
                    <td style="color: green">
                        <c:choose>
                            <c:when test="${val.status == 0}">
                                Pending
                            </c:when>
                            <c:otherwise>
                                done
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td><input type="submit" name="" value="Valuate"></td>
                </form>
            </c:forEach>
        </tr>
    </c:if>
</tbody>
</table>
</body>
</html>