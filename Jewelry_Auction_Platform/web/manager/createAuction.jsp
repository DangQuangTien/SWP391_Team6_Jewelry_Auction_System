<%-- 
    Document   : createAuction
    Created on : May 28, 2024, 5:19:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Auction</title>
    <script>
        function addProductRow() {
            var table = document.getElementById("productTable");
            var row = table.insertRow();
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);

            cell1.innerHTML = '<select name="productID" required>' +
                                '<option value="Product1">Product 1</option>' +
                                '<option value="Product2">Product 2</option>' +
                                // Add more options as needed
                              '</select>';

            cell2.innerHTML = '<input type="time" name="startTime" required>';
            cell3.innerHTML = '<input type="time" name="endTime" required>';
        }
    </script>
</head>
<body>
    <h2>Create Auction</h2>
    <form action="${pageContext.request.contextPath}/createAuction" method="GET">
        <label for="auctionDate">Select Auction Date:</label>
        <input type="date" id="auctionDate" name="auctionDate" required><br><br>

        <h3>Products</h3>
        <table id="productTable">
            <tr>
                <th>Product</th>
                <th>Start Time</th>
                <th>End Time</th>
            </tr>
            <tr>
                <td>
                    <select name="productID" required>
                        <option value="Product1">Product 1</option>
                        <option value="Product2">Product 2</option>
                        <!-- Add more options as needed -->
                    </select>
                </td>
                <td><input type="time" name="startTime" required></td>
                <td><input type="time" name="endTime" required></td>
            </tr>
        </table>
        <br>
        <button type="button" onclick="addProductRow()">Add Another Product</button>
        <br><br>
        <input type="submit" value="Create Auction">
    </form>
</body>
</html>
