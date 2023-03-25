<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Orders" %>
<%@ page import="com.example.furnitureweb.models.Employees" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>Delivered</title>
</head>
<body>
<header class="headerC">
    <img class="logo" src="SH..png" alt="logo" width="100" height="100">
    <nav class="nav_links">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="aboutPage.jsp">About</a></li>
            <li><a href="products.jsp">Products</a></li>
        </ul>
    </nav>
    <form action="search_redirect.jsp">
        <input class="search" type="text" placeholder="Type..." name="searchName">
        <input class="submitSearch" type="submit" value="Search">
    </form>
</header>
<%
        int orderID = Integer.parseInt(request.getParameter("orderId"));
        int userID = (int) session.getAttribute("id");
        for(Orders o : DBhandler.getOrder()){
            if(o.getClientId() == (int) session.getAttribute("id")){
                DBhandler.addToPlaceOrder(o.getId(),userID,1);
            }
        }
    response.sendRedirect(request.getContextPath()+"/thankYou.jsp");
%>
</body>
</html>
