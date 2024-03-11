<%-- 
    Document   : list
    Created on : Nov 2, 2023, 1:35:50 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="list" class="java.util.ArrayList" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                margin: 0 auto;
                text-align: center;
                border-collapse: collapse;
                width: 50%;
            }

            th, td {
                border: 1px solid #000;
                padding: 10px;
            }

            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>product ID</th>
                <th>product Name</th>
                <th>Quantity</th>
                <th>price</th>
                <th>inputdate(yyyy-mm-dd)</th>
            </tr>
            <c:forEach var="i" begin="0" end="${list.size()-1}">
                <tr>
                    <td>${list.get(i).getProductId()}</td>
                    <td>${list.get(i).getProductName()}</td>
                    <td>${list.get(i).getQuantity()}</td>
                    <td>${list.get(i).getPrice()}</td>
                    <td>${list.get(i).getInputDate()}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="product.jsp">create</a>
        <p><c:choose>
                <c:when test="${not empty applicationScope.requestCount}">
                <p>
                    request counter: ${applicationScope.requestCount}
                </p>
            </c:when>
            <c:otherwise>
                <p>request counter:0</p>
            </c:otherwise>
        </c:choose>
    </p>
</body>
</html>
