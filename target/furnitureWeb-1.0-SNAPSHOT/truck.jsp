<%@ page import="com.example.furnitureweb.models.Truck" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>trucks</title>
</head>
<body>
<h1 class="center">Trucks</h1>
<form action="saveTrucks.jsp">
<table border="2" class="productTable">
    <tr class="d">
        <td><strong>Name</strong></td>
        <td><strong>Load</strong></td>
        <td><strong>Number</strong></td>
        <td><strong>State</strong></td>
    </tr>
    <%
        for(Truck t : DBhandler.getAllTrucks()) {
            out.print("<tr>");
            out.print("<td>"+t.getName()+"</td>");
            out.print("<td>"+t.getNumber()+"kg"+"</td>");
            out.print("<td>"+t.getLoad()+"</td>");
            out.print("<td>"+t.getState()+"</td>");
        }
    %>
</table>
</form>
</body>
</html>
