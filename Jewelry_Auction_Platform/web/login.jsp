<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in to Jewelry Auctions Online</title>
        <link rel="stylesheet" href="component/main.css ">       
    </head>
    <body>
<<<<<<< HEAD
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
=======
        <div class="login-card">
            <h1>
                Jewelry Auctions Online
            </h1>
            <form action="MainController" method="GET">
                <input type="text" name="email" placeholder="Email address or username" autocomplete="username" required="required" autofocus="autofocus"/>
                <input type="password" name="password" placeholder="Password" autocomplete="current-password" required="required"/>
                <input type="checkbox" name="remember" checked=""> Remember me
                <a href="#forgot">
                    Forgot your password?
                </a>
                <input type="submit" name="action" value="Log in">
            </form>
            <div>Don't have an account yet? 
                <a href="register.jsp">
                    Register instead
                </a>
            </div>
        </div>
>>>>>>> 775093c2e804684f7942e298ce563ca65e16353c
    </body>
</html>

