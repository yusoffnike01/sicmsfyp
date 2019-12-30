<%-- 
    Document   : testprocess
    Created on : Dec 11, 2019, 1:23:18 AM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
             int distance = Integer.parseInt(request.getParameter("distance"));
             String details=request.getParameter("detail");
             
information obj=new information();
obj.setId(id);
obj.setDistance(distance);
obj.setDetail(details);

int status=UserDao.updateinformation(obj);
 if(status > 0) {
                    System.out.println("Successful insert user");
                    
                    response.sendRedirect("page1.jsp");
                }
            
            %>
    </body>
</html>
