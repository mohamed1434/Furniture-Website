<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page import="com.example.furnitureweb.models.Employees" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>registerRedirect</title>
</head>
<body>
<%
    String login = request.getParameter("userReg");
    String passw =request.getParameter("passReg");
    String confrimPass = request.getParameter("confirmPass");
    String email = request.getParameter("emailReg");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    Employees e = new Employees(login,passw,lastName,firstName,email);
    if(passw.equals(confrimPass)){
        DBhandler.addUser(login,passw,lastName,firstName,email);
        out.print("successful");
    }
    else {
        response.sendRedirect(request.getContextPath()+"/Register.jsp");
    }
%>
</body>
</html>
