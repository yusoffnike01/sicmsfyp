<%-- 
    Document   : delete
    Created on : Dec 20, 2019, 7:28:52 PM
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
                String username = request.getParameter("name");
               
      
                
                String deviceid=request.getParameter("id");
                int status = UserDao.getdeleteprofile(username);
                
     
         
                int status2=UserDao.getdeletedevice(deviceid);
                int status3=UserDao.getdeletedevice1(deviceid);
               if(status>0)
                   
                   
{
    response.sendRedirect("register.jsp");
    System.out.println("succesful");
}
else if(status2>0){
    response.sendRedirect("page1.jsp");
    System.out.println("sucessful");
}
else if(status3>0)
{
    response.sendRedirect("page2.jsp");
    System.out.println("sucessful");
}

            %>

    </body>
</html>
