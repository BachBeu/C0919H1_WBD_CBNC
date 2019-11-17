<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17-Nov-19
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product discount calculator</title>
  </head>
  <body>
  <form action="/calculate.jsp" method="post" style="border: 1px solid black; width: 500px;">
    <h1>Product Discount Calculator</h1>
    <table>
      <tr>
        <td>Product Description:</td>
        <td><input type="text" name="description"></td>
      </tr>
      <tr>
        <td>List Price:</td>
        <td><input type="text" name="listPrice"></td>
      </tr>
      <tr>
        <td>Discount Percent:</td>
         <td><input type="text" name="discountPercent"></td>
      </tr>
      <tr>
        <td></td>
        <td><button type="submit">Calculator</button></td>
      </tr>
    </table>
  </form>
  </body>
</html>
