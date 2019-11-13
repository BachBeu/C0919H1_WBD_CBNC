<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13-Nov-19
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Hiển thị danh sách khách hàng</title>
    <style>
      table, tr, td {
        border: 1px solid grey;
      }
      fieldset, table{
        width: 500px;
      }
    </style>
  </head>
  <body>
  <fieldset>
    <legend>List Customer</legend>
    <center>
      <table>
        <tr>
          <center>
            <td>Họ và Tên</td>
            <td>Ngày sinh</td>
            <td>Địa chỉ</td>
            <td>Ảnh chân dung</td>
          </center>
        </tr>
        <center>
          <c:forEach items="${customers}" var="customer">
            <tr>
              <td>${customer.getCusName()}</td>
              <td>${customer.getDob()}</td>
              <td>${customer.getCusAddress()}</td>
              <td>
                <img src="${customer.getImages()}"  height="100" width="100">
              </td>
            </tr>
          </c:forEach>
        </center>
      </table>
    </center>
  </fieldset>
  </body>
</html>
