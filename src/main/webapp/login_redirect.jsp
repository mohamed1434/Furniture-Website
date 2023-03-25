<%@ page import="com.example.furnitureweb.DBhandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginRedirect</title>
</head>
<body>
<%
    String login = request.getParameter("userName");
    String passw =request.getParameter("pass");
    int userId = DBhandler.getUserID(login);
        int roll = DBhandler.getUserRoll(login);
        String userPosition = DBhandler.getUserPosition(roll);
        String userPassword = DBhandler.getUserPassword(login);
        System.out.println(userPosition);
        if(userPosition.equals("admin") && userPassword.equals(passw)){
            session.setAttribute("user", login);
            session.setAttribute("id" , userId);
            response.sendRedirect(request.getContextPath()+"/administration.jsp");
        }else if(userPosition.equals("manager") && userPassword.equals(passw)){
            session.setAttribute("user", login);
            session.setAttribute("id" , userId);
            response.sendRedirect(request.getContextPath()+"/manager.jsp");
        }
        else if(userPosition.equals("worker") && userPassword.equals(passw)){
            session.setAttribute("user", login);
            session.setAttribute("id" , userId);
            response.sendRedirect(request.getContextPath()+"/worker.jsp");
        }
        else if(userPosition.equals("user") && userPassword.equals(passw)){
            session.setAttribute("user", login);
            session.setAttribute("id" , userId);
            response.sendRedirect(request.getContextPath()+"/home.jsp");
        }
        else {
            response.sendRedirect(request.getContextPath()+"/error.jsp");
        }
%>
</body>
</html>
