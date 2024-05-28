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
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

            h2 {
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
            function confirmReceipt(event) {
                if (!confirm("Are you sure you want to confirm the receipt?")) {
                    event.preventDefault();
                }
            }
        </script>

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
    <h3>Good <%= greeting%> Welcome back, Staff</h3>
    <form action="${pageContext.request.contextPath}/MainController" method="POST">
        <input type="submit" name="action" class="submit-btn" value="Valuation Request">
    </form>
<br>
<form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
    <input type="submit" name="action" class="submit-btn" value="Log out">
</form>
<br>
<c:set var="listValuationRequest" value="${requestScope.listValuationRequest}" />
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
                <th>Confirmation of Receipt</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="val" items="${listValuationRequest}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>
                        <c:set var="photoArray" value="${fn:split(val.photo, ';')}" />
                        <img src="${photoArray[0]}" alt="Photo">
                    </td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.communication}</td>
                    <td>${val.description}</td>
                    <td style="color: ${val.status_evaluate == 1 && val.status_shipment == 1 ? 'green' : 'red'}">
                        ${val.status_evaluate == 1 && val.status_shipment == 1 ? 'Done' : 'Pending...'}
                    </td>

                    <td>
                        <div align="center">
                            <form action="${pageContext.request.contextPath}/staff/valuation.jsp" method="GET">
                                <input type="hidden" name="photoURL" value="${val.photo}">
                                <input type="hidden" name="valuationID" value="${val.valuationID}">
                                <c:choose>
                                    <c:when test="${val.status_evaluate == 0}">
                                        <input type="submit" class="submit-btn" value="Evaluate">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="submit" class="submit-btn" value="Evaluated" disabled>
                                    </c:otherwise>
                                </c:choose>
                            </form>
                            <br>

                            <c:if test="${val.status_shipment == 0}">
                                <form action="${pageContext.request.contextPath}/MainController" method="GET" onsubmit="return checkShipmentStatus('${val.valuationID}', '${val.status_shipment}')">
                                    <input type="hidden" name="valuationID" value="${val.valuationID}">
                                    <input type="hidden" name="name" value="${val.name}">
                                    <input type="submit"  name="action" class="submit-btn" value="Request to Ship">
                                </form>
                            </c:if>
                            <c:if test="${val.status_shipment != 0}">
                                <input type="submit" class="submit-btn" value="Request to Ship" disabled>
                            </c:if>
                        </div>
                    </td>
                    <td>
                        <div align="center">
                            <c:choose>
                                <c:when test="${val.status_shipment == 1}">
                                    <p style="color: red"> Received </p>
                                </c:when>
                                <c:otherwise>
                                    <c:if test="${val.status_shipment == 0}">
                                        <form action="${pageContext.request.contextPath}/MainController" method="GET" onsubmit="confirmReceipt(event)">
                                            <input type="hidden" name="valuationID" value="${val.valuationID}">
                                            <input type="submit" name="action" class="submit-btn" value="Confirm Receipt">
                                        </form>
                                    </c:if>
                                    <c:if test="${val.status_shipment != 0}">
                                        <input type="submit" class="submit-btn" value="Confirm Receipt" disabled>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
