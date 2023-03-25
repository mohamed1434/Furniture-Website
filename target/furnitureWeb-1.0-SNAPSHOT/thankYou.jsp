<%@ page import="com.example.furnitureweb.models.Employees" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>Order Placed</title>
</head>
<body>
<h1 class="thanks">Thank you for Ordering :)</h1>
<%
  for(Employees e : DBhandler.getAllUsers()){
    if(e.getLogin() == session.getAttribute("user")){
      out.print("<p>Thank you"  + e.getName() + " " + e.getFamily() + " for ordering</p>");
      out.print("<p>Please check your email to track your order " + e.getEmail() + "</p>");
    }
  }
%>
</body>
</html>
