<%-- 
    Document   : profile
    Created on : May 19, 2024, 10:13:29 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bidder</title>
        <script>
            function confirmLogout(event) {
                if (!confirm("Are you sure you want to log out?")) {
                    event.preventDefault();
                }
            }
        </script>
    </head>
   
    <body>
        <h1>My Profile</h1>
        <h2>USER INFORMATION</h2>
        <h2>SHIPPING ADDRESS</h2>
        <h2>CREDIT CARD</h2>
        <form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
            <input type="submit" name="action" value="Log out">
        </form>
    </body>
</html>
