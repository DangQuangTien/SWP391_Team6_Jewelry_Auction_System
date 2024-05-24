<%-- 
    Document   : admin
    Created on : May 21, 2024, 2:18:47 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .control-bar {
                background-color: #333;
                overflow: hidden;
            }

            .control-bar ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: flex;
            }

            .control-bar li {
                flex: 1;
            }

            .control-bar li a,
            .control-bar li form input[type="submit"] {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                background: none;
                border: none;
                cursor: pointer;
                width: 100%;
                height: 100%;
            }

            .control-bar li a:hover,
            .control-bar li form input[type="submit"]:hover {
                background-color: #111;
            }

            .content {
                padding: 16px;
            }

            .content h1 {
                margin-top: 50px;
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
    <body>
    <nav class="control-bar">
        <ul>
            <li><a href="#user-management">User Management</a></li>
            <li><a href="#role-permission-management">Role and Permission Management</a></li>
            <li><a href="#monitoring-reporting">Monitoring and Reporting</a></li>
            <li><a href="#content-management">Content Management</a></li>
            <li><a href="#security">Security</a></li>
            <li><a href="#user-support">User Support</a></li>
            <li><a href="#system-configuration">System Configuration</a></li>
            <li>
                <form action="${pageContext.request.contextPath}/MainController" method="GET" onsubmit="confirmLogout(event)">
                    <input type="submit" name="action" value="Log out">
                </form>
            </li>
        </ul>
    </nav>

    <div class="content">
        <h1 id="user-management">User Management</h1>
        <p>Details about user management...</p>

        <h1 id="role-permission-management">Role and Permission Management</h1>
        <p>Details about role and permission management...</p>

        <h1 id="monitoring-reporting">Monitoring and Reporting</h1>
        <p>Details about monitoring and reporting...</p>

        <h1 id="content-management">Content Management</h1>
        <p>Details about content management...</p>

        <h1 id="security">Security</h1>
        <p>Details about security...</p>

        <h1 id="user-support">User Support</h1>
        <p>Details about user support...</p>

        <h1 id="system-configuration">System Configuration</h1>
        <p>Details about system configuration...</p>
    </div>
</body>
</html>
