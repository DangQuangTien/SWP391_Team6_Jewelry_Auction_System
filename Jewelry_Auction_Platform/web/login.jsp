<%@page import="java.time.LocalTime"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in to Jewelry Auctions Online</title>
    </head>
    <body>
        <%
            LocalTime now = LocalTime.now();
            String greeting = "Good evening!";
            if (now.getHour() < 12) {
                greeting = "Good morning!";
            } else if (now.getHour() < 17) {
                greeting = "Good afternoon!";
            }

        %>
        <a href="home.jsp"><h1>Jewelry Auctions Online</h1></a>
        <h3>Your Treasure Hunt Starts Here!</h3>
        <h4><%= greeting %></h4>
        <form action="MainController"method="GET">
            <div>Email address or username</div>
            <input type="text" name="email" autocomplete="username" required="required" autofocus="autofocus"/><br><br>
            <div>Password</div>
            <input type="password" name="password"autocomplete="current-password" required="required"/><br><br>
            <input type="checkbox" name="remember"checked="">Remember me &emsp;&emsp; <a href="#forgot">Forgot your password?</a><br><br>
            <input type="submit" name="action" value="Log in"><br><br>
        </form>
        <div>Don't have an account yet? <a href="register.jsp">Register instead</a></div>
    </body>

</html>
