<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-Nov-19
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["customer"].getCusName()}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope["customer"].getCusEmail()}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${requestScope["customer"].getCusAddress()}</td>
    </tr>
</table>
</body>
</html>
