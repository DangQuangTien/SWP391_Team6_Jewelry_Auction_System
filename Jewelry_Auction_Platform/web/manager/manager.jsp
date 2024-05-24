<%-- 
    Document   : manager
    Created on : May 23, 2024, 1:23:38 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <script>
            function confirmLogout(event) {
                if (!confirm("Are you sure you want to log out?")) {
                    event.preventDefault();
                }
            }
        </script>
    </head>
    <body>
        <h1>Welcome back Manager</h1>
    </body>
    <form action="${pageContext.request.contextPath}/MainController" method="POST" onsubmit="confirmLogout(event)">
        <input type="submit" name="action" value="Log out">
    </form>
</html>