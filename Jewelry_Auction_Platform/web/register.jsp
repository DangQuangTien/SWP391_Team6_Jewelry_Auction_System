<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register on Jewelry Auctions Online</title>
        <link rel="stylesheet" href="component/main.css ">       
    </head>
    <body>
        <div class="register-card">
            <a href="home.jsp">
               <h1>Jewelry Auctions Online</h1> 
            </a>           
            <form action="MainController">
                <input type="text" name="name" placeholder="Your full name" autocomplete="name" required="required" autofocus="autofocus"/>
                <input type="email" name="email" placeholder="Email address" autocomplete="email" required="required"/>
                <input type="text" name="username" placeholder="Username" autocomplete="username" required="required">
                <input type="password" name="password" placeholder="Password" autocomplete="current-password" required="required">
                <input type="checkbox" name="agreed" checked=""> By registering, you confirm you are 18 years old or older, and you have read and agree to the ...
                <input type="submit" name="action" value="Register">
            </form>
            <div>Already registered?
                 <a href="login.jsp">
                    Log in instead
                </a>
            </div>
        </div>
    </body>
</html>

