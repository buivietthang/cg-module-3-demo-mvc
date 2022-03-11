<%--
  Created by IntelliJ IDEA.
  User: BUI VIET THANG
  Date: 29/12/2021
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <h1>CREATE PRODUCT</h1>
</head>
<body>
<form method="post">
    <table border="1">
        <tr>
            <th>ID</th>
            <th>PRODUCTS</th>
            <th>PRICE</th>
        </tr>
        <tr>
            <td><input type="number" name="id" placeholder="ID"></td>
            <td><input type="text" name="name" placeholder="NAME"></td>
            <td><input type="number" name="price" placeholder="PRICE"></td>
        </tr>
    </table>
    <button type="submit">CREATE</button>
</form>
</body>
</html>
