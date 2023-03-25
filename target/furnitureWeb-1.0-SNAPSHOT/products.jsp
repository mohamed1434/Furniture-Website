<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Products" %>
<%@ page import="com.example.furnitureweb.models.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="tableDesign.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%--<link rel="stylesheet" href="productView.css">--%>
<html>
<head>
    <title>Products</title>
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
    <%
        if(session.getAttribute("user") == null){
            out.print("<a class=\"login\" href=\"Login.jsp\"><button>Login</button></a>");
            out.print("<a class=\"register\" href=\"Register.jsp\"><button>Register</button></a>");
            out.print("<a class=\"cta\" href=\"Contact.jsp\"><button>Contact</button></a>");
            out.print("<a class=\"fa fa-shopping-bag\" href=\"userOrder.jsp\" style=\"font-size:20px\"></a>");
        }
        else {
            out.print("<a class=\"register\" href=\"logout.jsp\"><button>Logout</button></a>");
            out.print("<a class=\"cta\" href=\"Contact.jsp\"><button>Contact</button></a>");
            out.print("<a class=\"fa fa-shopping-bag\" href=\"userOrder.jsp\" style=\"font-size:20px\"></a>");
        }
    %>
<%--    <a class="login" href="Login.jsp"><button>Login</button></a>--%>
<%--    <a class="register" href="Register.jsp"><button>Register</button></a>--%>
<%--    <a class="cta" href="Contact.jsp"><button>Contact</button></a>--%>
<%--    <a class="fa fa-shopping-bag" href="#" style="font-size:20px"></a>--%>

</header>
<h1 class="center">Products List</h1>
<form action="select_redirect.jsp">
<div class="custom-select" style="width:200px;">
    <select name="cat">
        <option value="Kitchen" name="cat">Kitchen</option>
        <option value="Bedroom" name="cat">Bedroom</option>
        <option value="Bathroom" name="cat">Bathroom</option>
        <option value="Salon" name="cat">Salon</option>
    </select>
    <button type="submit">Choose</button>
</div>
</form>
<table border="2" class="productTable">
    <tr class="d">
        <td><strong>Name</strong></td>
        <td><strong>Description</strong></td>
        <td><strong>Color</strong></td>
        <td><strong>Price</strong></td>
        <td><strong>Quantity</strong></td>
        <td><strong>Category</strong></td>
        <td><strong>Add</strong></td>
    </tr>
<%--    <form action="orders.jsp" method="post">--%>
    <%
        String pick = request.getParameter("cat");
        System.out.println(pick);
        for(Products p : DBhandler.getAllProducts()) {
                out.print("<form action=\"orders.jsp\" method=\"post\">");
                out.print("<tr>");
                out.print("<input type=\"hidden\" name=\"productId\" value=\"" + p.getIdProducts() + "\">");
                out.print("<td>" + p.getName() + "</td>");
                out.print("<td>" + p.getDescription() + "</td>");
                out.print("<td>" + p.getColor() + "</td>");
                out.print("<td>" + p.getPrice() + "$" + "</td>");
                out.print("<td>" + p.getQuantity() + "</td>");
                // System.out.println(p.getIdCategory());
                out.print("<td>" + DBhandler.getCategory(p.getIdCategory()) + "</td>");
                out.print("<td> <input class=\"LoginSub\" type=\"submit\" value=\"ADD\"></td>");
                out.print("</tr>");
                out.print("</form>");
        }
        %>
<%--    </form>--%>
</table>
</body>
</html>
