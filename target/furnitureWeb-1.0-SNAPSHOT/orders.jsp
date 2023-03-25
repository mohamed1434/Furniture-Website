<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Products" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
</head>
<body>
<%
    Products p = new Products();
    //int productID = p.getIdProducts();
    int productID = Integer.parseInt(request.getParameter("productId"));
//    int clientID = (int) session.getAttribute("id");
    Date time = new Date(session.getCreationTime());
    if(session.getAttribute("user") == null){
        out.print("Please Login first to add products to your cart.");
    }
    else {
        int clientID = (int) session.getAttribute("id");
        DBhandler.addOrder(productID,clientID);
        response.sendRedirect(request.getContextPath()+"/products.jsp");
    }
%>
</body>
</html>
