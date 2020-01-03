<%-- 
    Document   : processmanager
    Created on : Oct 16, 2019, 10:16:05 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="fyp.keycode"%>
<%@page import="fyp.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="fyp.User"%>
<%@page import="fyp.manager"%>
<%@page import="fyp.result"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("Password");
            
            manager obj=UserDao.getLoginmanagerBySession(username, password);
            if(username.equals(obj.getUsername())&& password.equals(obj.getPassword()))
            {
                response.sendRedirect("page1.jsp");
            }
            
            else{
                response.sendRedirect("index.jsp");
            }
            %>
    </body>
</html>
