<%-- 
    Document   : product
    Created on : Nov 2, 2023, 1:17:49 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="products" class="java.util.ArrayList" scope="session"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="newproductServlet" method="post">
            product ID: <input type="text" name="productid"><br>
            product Name: <input type="text" name="productname"><br>
            product Quantity:<input type="number" name="quantity"><br>
            product Price: <input type="number" name="price"><br>
            input date: <input type="date" name="inputdate"><br>
            <input type="submit" value="submit">
        </form>
    </body>
</html>
