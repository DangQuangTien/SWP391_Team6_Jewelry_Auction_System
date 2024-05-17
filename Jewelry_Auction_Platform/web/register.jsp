<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register on Jewelry Auctions Online</title>
    </head>
    <body>
        <a href="home.jsp"><h1>Jewelry Auctions Online</h1></a>
        <h3>Your Treasure Hunt Starts Here!</h3>
        <form action="MainController">
            <div>Your full name</div>
            <input type="text" name="name" value="" autocomplete="name" required="required" autofocus="autofocus"/><br><br>
            <div>Email address</div>
            <input type="email" name="email" autocomplete="email" required="required"/><br><br>
            <div>Username</div>
            <input type="text" name="username" autocomplete="username" required="required"><br><br>
            <div>Password</div>
            <input type="password" name="password" autocomplete="username" autocomplete="current-password" required="required"><br><br>
            <input type="checkbox" name="agreed" checked=""> By registering, you confirm you are 18 years old or older, and you have read and agree to the ...<br><br>
            <input type="submit" name="action" value="Register">
        </form>
        <br>
        <div>Already registered? <a href="login.jsp">Log in instead</a></div>
    </body>
</html>
