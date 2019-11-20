<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 20-Nov-19
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Element for Sandwich</title>
  </head>
  <body>
  <h1>Sandwich condiment</h1>
  <form action="/save" method="post">
    <input type="checkbox" name="condiment" value="lettuce">Lettuce
    <input type="checkbox" name="condiment" value="tomato">Tomato
    <input type="checkbox" name="condiment" value="mustard">Mustard
    <input type="checkbox" name="condiment" value="sprouts">Sprouts
    <center>
      <button type="submit" value="save">Display</button>
    </center>
  </form>
  </body>
</html>
