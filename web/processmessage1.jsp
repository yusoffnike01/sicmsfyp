<%-- 
    Document   : processmessage1
    Created on : May 3, 2020, 11:21:58 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.feedback"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usernamemanager=request.getParameter("manager");
            String name=request.getParameter("name");
            String message=request.getParameter("message");
            
        feedback obj=new feedback();
        obj.setUsernamemanager(usernamemanager);
        obj.setUsername(name);
        obj.setMessage(message);
        int status=UserDao.savefeedback(obj);
        if(status>0)
        {
            response.sendRedirect("notificationmanager.jsp");
            System.out.println("successfull");
        }
           else
        {
            response.sendRedirect("notificationmanager.jsp");
            System.out.println("fail");
        }
            
            
            %>
    </body>
</html>
