<%-- 
    Document   : delete
    Created on : Dec 20, 2019, 7:28:52 PM
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
                String username = request.getParameter("username");
                
                int status = UserDao.getdeleteprofile(username);
               if(status>0)
{
    response.sendRedirect("register.jsp");
    System.out.println("succesfull");
}
else{
    response.sendRedirect("register.jsp");
    System.out.println("fail");
}


            %>

    </body>
</html>
