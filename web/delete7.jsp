<%-- 
    Document   : delete7
    Created on : May 9, 2020, 9:10:29 PM
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
            
            String name=request.getParameter("id");
            
int status=UserDao.getdeletemanager(name);

if(status>0)
{
    response.sendRedirect("managecontractor.jsp");
    System.out.println("successfull");
}
        
            
            
            %>
    </body>
</html>
