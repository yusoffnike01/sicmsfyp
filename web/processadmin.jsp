<%-- 
    Document   : processadmin
    Created on : May 5, 2020, 12:56:01 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            System.out.println("email"+email);
            String password=request.getParameter("password");
            
           User obj=UserDao.getLoginAdmin(email, password);
           
           if(email.equals(obj.getEmail())&&password.equals(obj.getPasword()))
           {
               response.sendRedirect("managecontractor.jsp");
               System.out.println("successfull");
           }
           else
           {
                response.sendRedirect("homepage.jsp");
                System.out.println("fail");
           }
            
            %>
    </body>
</html>
