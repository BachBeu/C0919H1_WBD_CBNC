<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17-Nov-19
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String desc = request.getParameter("description");
    float listPrice = Float.parseFloat(request.getParameter("listPrice"));
    float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));
    float discountAmount = (float) (listPrice * (discountPercent/100) * 0.1);
    float discountPrice = listPrice - discountAmount;
%>
<div id="content">
    <h1>Product Discount Calculator</h1>
    <label>Product Description: </label>
    <span><%=desc%></span><br/>
    <label>Price: </label>
    <span>$<%=listPrice%></span><br/>
    <label>Discount Percent: </label>
    <span><%=discountPercent%>%</span><br/>
    <label>Discount Amount: </label>
    <span>$<%=discountAmount%></span><br/>
    <label>Discount Price: </label>
    <span>$<%=discountPrice%></span><br/>
</div>
</body>
</html>
