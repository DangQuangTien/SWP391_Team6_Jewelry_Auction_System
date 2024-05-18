<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in to Jewelry Auctions Online</title>
        <link rel="stylesheet" href="component/main.css ">       
    </head>
    <body>

        <div class="login-card">
            <a href="home.jsp">
                <h1>Jewelry Auctions Online</h1> 
            </a>
            <p style="text-align: center;
               color: #666;
               font-size: 16px;
               font-family: 'Arial', sans-serif;">Explore the World of Auctions with Us</p>
            <form action="MainController" method="POST">
                <input type="text" name="email" placeholder="Phone number/ Username/ Email" autocomplete="username" required="required" autofocus="autofocus"/>
                <input type="password" name="password" placeholder="Password" autocomplete="current-password" required="required"/>
                <br><br>
                <input type="checkbox" name="remember" checked=""> Remember me
                <a href="#forgot">
                    Forgot your password?
                </a><br><br>
                <input type="submit" name="action" value="Log in">
            </form>
            <br>
            <div class="additional-links" class="register-link">
                Don't have an account? <a href="register.jsp">Register instead</a>
            </div>
        </div>
    </body>
</html>

