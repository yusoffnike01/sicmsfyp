<%-- 
    Document   : delete8
    Created on : Jun 2, 2020, 10:05:59 AM
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
            
             String deviceid=request.getParameter("id");
              int status2=UserDao.getdeletedevice(deviceid);
              if(status2>0){
    response.sendRedirect("page1.jsp");
    System.out.println("sucessful");
}else
              {
                   response.sendRedirect("page1.jsp");
              }
            
            %>
    </body>
</html>
