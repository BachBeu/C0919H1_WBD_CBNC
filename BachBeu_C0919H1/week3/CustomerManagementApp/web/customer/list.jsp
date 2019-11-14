<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1 style="background-color: cornflowerblue">Create new Customer</h1>
<p>
    <a href="/customers?action=create" style="background-color: aqua">Create New Customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getCusId()}">${customer.getCusName()}</a></td>
            <td>${customer.getCusEmail()}</td>
            <td>${customer.getCusAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getCusId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getCusId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
