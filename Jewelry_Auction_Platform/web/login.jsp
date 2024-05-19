<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in to Jewelry Auctions Online</title>
        <link rel="stylesheet" href="component/main.css ">
        <style>
            .error-message {
                color: red;
                background-color: #f8d7da;
                border: 1px solid #f5c2c7;
                padding: 10px;
                margin-bottom: 15px;
                border-radius: 5px;
                position: relative;
            }
            .error-message .close-btn {
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                background: none;
                border: none;
                font-size: 16px;
                cursor: pointer;
            }
        </style>
        <script>
            function closeErrorMessage() {
                var errorDiv = document.getElementById("error-message");
                errorDiv.style.display = "none";
            }
        </script>
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
            <%
                String error = (String) request.getAttribute("LOGIN_ERROR");
                String username = (String) request.getAttribute("username");
                String password = (String) request.getAttribute("password");
            %>
            <% if (error != null) {%>
            <div id="error-message" class="error-message">
                <%= error%>
                <button class="close-btn" onclick="closeErrorMessage()">X</button>
            </div>
            <% }%> 
            <form action="MainController" method="POST">
                <input type="text" name="email" placeholder="Phone number/ Username/ Email" required="required" value="<%= (username != null) ? username : ""%>"/>
                <input type="password" name="password" placeholder="Password"  required="required" value="<%= (password != null) ? password : ""%>" />
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

