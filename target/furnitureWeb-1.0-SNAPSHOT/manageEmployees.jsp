<%@ page import="com.example.furnitureweb.models.Truck" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Employees" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>trucks</title>
</head>
<body>
<h1 class="center">Employees</h1>
<table border="2" class="productTable">
    <tr class="d">
        <td><strong>Name</strong></td>
        <td><strong>Family</strong></td>
        <td><strong>Email</strong></td>
        <td><strong>Position</strong></td>
        <td><strong>Salary</strong></td>
    </tr>
    <%
        for(Employees e : DBhandler.getAllUsers()) {
            out.print("<tr>");
            out.print("<td>"+e.getName()+"</td>");
            out.print("<td>"+e.getFamily()+"</td>");
            out.print("<td>"+e.getEmail()+"</td>");
            out.print("<td>"+DBhandler.getUserPosition(e.getIdRole())+"</td>");
            out.print("<td>"+DBhandler.getSalaries(e.getIdEmployees())+"</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
