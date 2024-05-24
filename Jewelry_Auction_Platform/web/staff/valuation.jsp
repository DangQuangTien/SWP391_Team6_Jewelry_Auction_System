<%@page import="dao.UserDAOImpl"%>
<%@page import="entity.product.Category"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : valuation
    Created on : May 23, 2024, 9:20:58 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Valuation Jewelry</title>
    </head>
    <body>
        <h1>Detail Valuation</h1>
        <%
            String url = request.getParameter("photoURL");
            ArrayList<Category> listCategory = new ArrayList<>();
            try {
                UserDAOImpl dao = new UserDAOImpl();
                listCategory = dao.listCategory();
            } catch (Exception e) {
                e.printStackTrace(); // Log the error
            }
        %>
    <img style="width: 200px; height: 200px" src="${pageContext.request.contextPath}/<%= url%>"/>
    <form>
        Jewelry Name <input type="text" name="jewelryName" value=""> | 
        Artist <input type="text" name="artist" value=""> |
        Category <select name="category">
            <% for (Category category : listCategory){ %>
            <option><%= category.getCategoryName() %></option>
            <% } %>
        </select> |
        Circa <input type="text" name="circa" value=""><br><br>
        Material <input type="text" name="material" value=""> |
        Dial <input type="text" name="dial" value=""> |
        Dimension <input type="text" name="dimension" value=""> |
        Size <input type="text" name="size" value=""><br><br>
        Serial Number <input type="text" name="serialNumber" value=""> |
        Reference Number <input type="text" name="referenceNumber" value=""> |
        Caliber <input type="text" name="caliber" value=""> |
        Movement <input type="text" name="movement" value=""><br><br>
        Condition <input type="text" name="condition" value=""><br><br>
    </form> 
</body>
</html>
