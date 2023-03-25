package com.example.furnitureweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class loginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        request.getRequestDispatcher("link.html").include(request, response);

        String login = request.getParameter("userName");
        String passw =request.getParameter("pass");

        int roll = DBhandler.getUserRoll(login);
        String userPosition = DBhandler.getUserPosition(roll);
        String userPassword = DBhandler.getUserPassword(login);

        if(userPosition.equals("admin") && userPassword.equals(passw)){
            out.print("Welcome, "+ login);
            HttpSession session=request.getSession();
            session.setAttribute("name",login);
            response.sendRedirect(request.getContextPath()+"/administration.jsp");
        }
        else if(userPosition.equals("manager") && userPassword.equals(passw)){
            out.print("Welcome, "+ login);
            HttpSession session=request.getSession();
            session.setAttribute("name",login);
            response.sendRedirect(request.getContextPath()+"/manager.jsp");
        }
        else if(userPosition.equals("worker") && userPassword.equals(passw)){
            out.print("Welcome, "+ login);
            HttpSession session=request.getSession();
            session.setAttribute("name",login);
            response.sendRedirect(request.getContextPath()+"/worker.jsp");
        }
        else if(userPosition.equals("user") && userPassword.equals(passw)){
            out.print("Welcome, "+ login);
            HttpSession session=request.getSession();
            session.setAttribute("name",login);
            response.sendRedirect(request.getContextPath()+"/home.jsp");
        }
        else {
            response.sendRedirect(request.getContextPath()+"/error.jsp");
        }
        out.close();
    }
}

