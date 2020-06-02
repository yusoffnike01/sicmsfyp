<%-- 
    Document   : truncate
    Created on : Mar 15, 2020, 11:31:20 PM
    Author     : user
--%>

<%@page import="fyp.UserDao"%>
<%@page import="fyp.quantityused"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String submit=request.getParameter("Submit");
            
              quantityused obj=new quantityused();
               int status=UserDao.gettruncatequantityused();
               if(status>0)
               {
                   response.sendRedirect("reportmanager.jsp");
               }
               else
               {
                   response.sendRedirect("reportmanager.jsp");
                   
               }
            
            %>
            
    </body>
</html>
