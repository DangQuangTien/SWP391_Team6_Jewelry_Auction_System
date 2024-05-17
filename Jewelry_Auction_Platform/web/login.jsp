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
            <h1>
                Jewelry Auctions Online
            </h1>
             </a>
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
    </body>
</html>

