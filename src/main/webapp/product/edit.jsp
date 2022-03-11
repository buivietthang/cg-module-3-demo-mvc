<%--
  Created by IntelliJ IDEA.
  User: BUI VIET THANG
  Date: 29/12/2021
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <th>ID</th>
            <th>PRODUCTS</th>
            <th>PRICE</th>
        </tr>
        <tr>
            <td><input type="number" name="id" value="${editProduct.id}"></td>
            <td><input type="text" name="name" value="${editProduct.name}"></td>
            <td><input type="number" name="price" value="${editProduct.price}"></td>
        </tr>
    </table>
    <button>EDIT</button>
</form>
</body>
</html>
