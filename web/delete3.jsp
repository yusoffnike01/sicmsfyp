<%-- 
    Document   : delete3
    Created on : May 2, 2020, 11:47:59 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String time=request.getParameter("time");
            String time1=request.getParameter("time1");
                  int status=UserDao.deletemessage(time);
                  int status2=UserDao.deletemessage1(time1);
                  if(status>0)
                  {
                      response.sendRedirect("notificationmanager.jsp");
                  }
                  
                  else if(status2>0)
                  {
                      response.sendRedirect("notification.jsp");
                      System.out.println("successfull");
                  }
                  
            %>
    </body>
</html>
