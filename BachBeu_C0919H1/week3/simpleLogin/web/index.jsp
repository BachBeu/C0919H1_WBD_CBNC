<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12-Nov-19
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Form Login</title>
    <style>
      .login{
        height:180px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
      }
      .login input {
        padding:5px; margin:5px
      }
    </style>
  </head>
  <body>
  <form method="get" action="/login">
    <fieldset class="login">
      <legend>Login</legend>
      Username:
      <input type="text" name="username" size="30" placeholder="Nhập vào tên người dùng">
      Password:
      <input type="password" name="password" size="30" placeholder="Nhập vào password">
      <center>
        <button type="submit">Sign In</button>
      </center>
    </fieldset>
  </form>
  </body>
</html>
