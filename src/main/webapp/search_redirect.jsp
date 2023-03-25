<%@ page import="com.example.furnitureweb.models.Products" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<html>
<head>
    <title>redirectSearch</title>
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
    <a class="login" href="Login.jsp"><button>Login</button></a>
    <a class="register" href="Register.jsp"><button>Register</button></a>
    <a class="cta" href="Contact.jsp"><button>Contact</button></a>
    <a class="fa fa-shopping-bag" href="#" style="font-size:20px"></a>

</header>
<table border="2" class="productTable">
    <tr class="d">
        <td><strong>Name</strong></td>
        <td><strong>Description</strong></td>
        <td><strong>Color</strong></td>
        <td><strong>Price</strong></td>
        <td><strong>Quantity</strong></td>
        <td><strong>Category</strong></td>
    </tr>
<%
    String searchName = request.getParameter("searchName");
    for(Products p : DBhandler.getAllProducts()) {
        if (p.getName().equals(searchName)) {
            out.print("<tr>");
            out.print("<td>" + p.getName() + "</td>");
            out.print("<td>" + p.getDescription() + "</td>");
            out.print("<td>" + p.getColor() + "</td>");
            out.print("<td>" + p.getPrice() + "$" + "</td>");
            out.print("<td>" + p.getQuantity() + "</td>");
            out.print("<td>" + DBhandler.getCategory(p.getIdCategory()) + "</td>");
            out.print("</tr>");
        }
    }
%>
</table>
</body>
</html>
