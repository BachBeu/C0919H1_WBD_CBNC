<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17-Nov-19
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator simple</title>
  </head>
  <body>
  <h1/>Simple Calculator
  <form method="post" action="/calculate">
    <fieldset style="border: 1px solid black; width: 500px">
      <legend>Calculator</legend>
      <label>First operand: </label>
      <input type="text" name="num_first" placeholder="Nhập vào số thứ nhất"><br>
      <label>Operator: </label>
      <select name="operator">
        <option value="+">Addition</option>
        <option value="-">Subtraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
      </select><br>
      <label>Second operand: </label>
      <input type="text" name="num_second" placeholder="Nhập vào số thứ hai"><br>
      <center>
        <button type="submit" name="calculate">Calcutor</button>
      </center>

    </fieldset>
  </form>
  </body>
</html>
