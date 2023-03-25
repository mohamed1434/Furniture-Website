<%@ page import="com.example.furnitureweb.models.Orders" %>
<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Products" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="tableDesign.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
  <title>Shopping Cart</title>
</head>
<body class="mainBody">
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
    <input class="search" type="text" placeholder="Type...">
    <input class="submitSearch" type="submit" value="Search">
  </form>
  <a class="login" href="Login.jsp"><button>Login</button></a>
  <a class="register" href="Register.jsp"><button>Register</button></a>
  <a class="cta" href="Contact.jsp"><button>Contact</button></a>
</header>

  <table border="2" class="productTable">
    <tr class="d">
<%--      <td><strong>ID</strong></td>--%>
<%--      <td><strong>PRODUCT_ID</strong></td>--%>
<%--      <td><strong>CLIENT_ID</strong></td>--%>
          <td><strong>Name</strong></td>
          <td><strong>Description</strong></td>
          <td><strong>Color</strong></td>
          <td><strong>Price</strong></td>
          <td><strong>Quantity</strong></td>
    </tr>
    <%--    <form action="orders.jsp" method="post">--%>
    <%
      //int userID = (int) session.getAttribute("id");
        int price = 0;
      if(session.getAttribute("id") == null){
        out.print("Please sign in to view your cart.");
      }
      else {
        for(Orders o : DBhandler.getOrder()) {
          if(o.getClientId() == (int) session.getAttribute("id")){
            for(Products p : DBhandler.getAllProductsByID(o.getProductId())){
              out.print("<form action=\"placeOrder.jsp\" method=\"post\">");
              out.print("<input type=\"hidden\" name=\"orderId\" value=\"" + o.getId() + "\">");
              out.print("<tr>");
              out.print("<td>" + p.getName() + "</td>");
              out.print("<td>" + p.getDescription() + "</td>");
              out.print("<td>" + p.getColor() + "</td>");
              out.print("<td>" + p.getPrice() + "$" + "</td>");
              out.print("<td>" + p.getQuantity() + "</td>");
              out.print("</tr>");
              price+=Integer.parseInt(p.getPrice());
            }
          }
          else {

          }
//          out.print("<input class=\"LoginSub\" type=\"submit\" value=\"Place Order\">");
//          out.print("</form>");
        }
      }
    %>
    <input class="LoginSub" type="submit" value="Place Order">
      <% out.print("Total price : $" + price); %>
        </form>
  </table>
</body>
</html>