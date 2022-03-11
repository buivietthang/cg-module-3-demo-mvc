<%--
  Created by IntelliJ IDEA.
  User: BUI VIET THANG
  Date: 29/12/2021
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <h1>PRODUCT</h1>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>PRODUCTS</th>
        <th>PRICE</th>
    </tr>
    <c:forEach items="${listProduct}" var="p">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>
                <button><a href="/products?action=edit&id=${p.id}">EDIT</a></button>
            </td>
            <td>
                <button><a href="/products?action=delete&id=${p.id}">DELETE</a></button>
            </td>
        </tr>
    </c:forEach>
</table>
<button><a href="/products?action=create">CREATE</a></button>
</body>
</html>
