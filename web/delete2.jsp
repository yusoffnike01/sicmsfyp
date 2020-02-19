<%-- 
    Document   : delete2
    Created on : Feb 18, 2020, 1:09:39 AM
    Author     : user
--%>

<%@page import="fyp.User"%>
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

                
     
         
                int status2=UserDao.getdeletedevice1(deviceid);
              if(status2>0){
    response.sendRedirect("page2.jsp");
    System.out.println("sucessful");
}

            %>

    </body>
</html>
