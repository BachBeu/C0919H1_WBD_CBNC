<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-Nov-19
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
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
            <tr>
                <td><input type="submit" value="Delete customer"></td>
                <td><a href="/customers">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
