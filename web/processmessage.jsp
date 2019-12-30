<%-- 
    Document   : processmessage
    Created on : Oct 6, 2019, 10:38:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="fyp.message"%>
<%@page import="fyp.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String manager=request.getParameter("manager");
            String username=request.getParameter("name");
            String message=request.getParameter("message");
            
             
            message obj=new message();
            obj.setUsernamemanager(manager);
            obj.setUsername(username);
            obj.setMessage(message);
            
            int status = UserDao.savemessage( obj);
                if(status > 0) {
                    response.sendRedirect("notification.jsp");
                }
                else{
                    response.sendRedirect("notification.jsp");
                    System.out.println(" fail");
                }
                

             
               
            %>
    </body>
</html>
