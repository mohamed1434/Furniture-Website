<%@ page import="com.example.furnitureweb.models.Truck" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Salary" %>
<%@ page import="com.example.furnitureweb.models.Employees" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>trucks</title>
</head>
<body>
<h1 class="center">Trucks</h1>
<table border="2" class="productTable">
    <tr class="d">
        <td><strong>Name</strong></td>
        <td><strong>Number</strong></td>
        <td><strong>Load</strong></td>
        <td><strong>State</strong></td>
    </tr>
    <%
        for(Salary s : DBhandler.getSalaries()) {
            out.print("<tr>");
            out.print("<td>"+s.getSalary()+"$"+"</td>");
            out.print("</tr>");
        }
    %>
</table>
</body>
</html>
