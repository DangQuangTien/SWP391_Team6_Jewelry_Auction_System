<%-- 
    Document   : valuation
    Created on : May 19, 2024, 2:08:38 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JewelryAuctionsOnline® | Get A Jewelry and/or Watch Valuation Before Selling</title>
    </head>
    <body>
        <a href="../home.jsp"><h1>Jewelry &amp; Watch Valuation</h1></a>
        <p>Welcome to our quote / valuation request page</p>
        <h3>Ready to submit your valuation request?</h3>
        <form action="../MainController?" method="POST" enctype="multipart/form-data">
            Name<br>
            <input type="text" name="name" value="" placeholder="Enter your name above" required=""/><br><br>
            Email<br>
            <input type="email" name="email" value="" placeholder="Enter your email address above" required=""/><br><br>
            Mobile Phone Number<br>
            <input type="tel" name="phone" value="" placeholder="Enter your mobile phone number above" required=""/><br><br>
            Communication preference<br>
            <input type="radio" name="communication" value="Email" />Email<br>
            <input type="radio" name="communication" value="Text Message" />Text Message<br>
            <input type="radio" name="communication" value="Phone Call" />Phone Call<br>
            <input type="radio" name="communication" value="Any of the above" />Any of the above<br>
            <p style="font-size: 12px">Please let us know how you wish to be contacted. We will try to contact you via your preferred method that you select here but may use other methods if we are unsuccessful.</p>
            Photos<br>
            <input type="file" name="image" value="" required="" accept="image/*"" required=""><br><br>
            <p style="font-size: 12px">Please upload photos of your jewelry and/or watches in the field above. If you have photos that the form will not accept (too large or too many) please mention this in the description below and we will request the additional photos in our follow-up communication with you.</p>
            Description<br>
            <input type="text" name="description" value=""><br><br>
            <p style="font-size: 12px">Please briefly describe your jewelry and/or watches in the field above.</p>
            <input type="submit" name="action" value="Submit Valuation Request">
        </form>
    </body>
</html>
