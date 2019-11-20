<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20-Nov-19
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello :v</title>
</head>
<body>
<c:forEach items="${condiment}" var="condiment">
    <c:out value="${condiment}"></c:out>
</c:forEach>
</body>
</html>
